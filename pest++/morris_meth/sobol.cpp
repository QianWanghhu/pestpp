#include <fstream>
#include <iostream>
#include <vector>
#include <Eigen/Dense>
#include <cassert>
#include <algorithm>
#include <cmath>
#include <iterator>
#include "sobol.h"
#include "Transformable.h"
#include "RunManagerAbstract.h"
#include "ParamTransformSeq.h"
#include "ModelRunPP.h"
#include "Stats.h"
#include "FileManager.h"

using namespace std;
using namespace Eigen;


Sobol::Sobol(const vector<string> &_adj_par_name_vec, const Parameters &_fixed__ctl_pars,
	const Parameters &_lower_bnd, const Parameters &_upper_bnd, int _n_sample,
	ParamTransformSeq *base_partran_seq_ptr,
	const std::vector<std::string> &_obs_name_vec, FileManager *_file_manager_ptr)
	: GsaAbstractBase(base_partran_seq_ptr, _adj_par_name_vec, 
	       _fixed__ctl_pars, _lower_bnd, _upper_bnd, _obs_name_vec, _file_manager_ptr), n_sample(_n_sample)
	{
	}
VectorXd Sobol::gen_rand_vec(long nsample, double min, double max)
{
	std::uniform_real_distribution<double> distribution(min, max);
	//std::normal_distribution<> distribution((max+min)/ 2.0 , (max-min)/4.0);
	VectorXd v(nsample);
	long v_len = v.size();
	for (long i = 0; i<v_len; ++i)
	{
		v[i] = distribution(rand_engine);
	}
  return v;
}

void Sobol::gen_m1_m2()
{
	long npar = adj_par_name_vec.size();
	//generate random matrices
	double par_min;
	double par_max;
	VectorXd v1;
	m1 = MatrixXd::Zero(n_sample, npar);
	m2 = MatrixXd::Zero(n_sample, npar);
	for (int i=0; i<npar; ++i)
	{
		par_min = lower_bnd[adj_par_name_vec[i]];
		par_max = upper_bnd[adj_par_name_vec[i]];
		v1 = gen_rand_vec(n_sample, par_min, par_max);
		m1.col(i) = v1;
	}
	for (int i=0; i<npar; ++i)
	{
		par_min = lower_bnd[adj_par_name_vec[i]];
		par_max = upper_bnd[adj_par_name_vec[i]];
		v1 = gen_rand_vec(n_sample, par_min, par_max);
		m2.col(i) = v1;
	}
}

MatrixXd Sobol::gen_N_matrix(const MatrixXd &m1, const MatrixXd &m2, const vector<int> &idx_vec)
{
  MatrixXd n = m2;
  for (int i : idx_vec)
  {
	n.col(i) = m1.col(i);
  }  
  return n;
}

void Sobol::add_model_runs(RunManagerAbstract &run_manager, const MatrixXd &n)
{
	for (int i=0; i<n_sample; ++i)
	{
		VectorXd tmp_vec =  n.row(i);
		Parameters tmp_pars(adj_par_name_vec, tmp_vec);
		tmp_pars.insert(fixed_ctl_pars.begin(), fixed_ctl_pars.end());
		base_partran_seq_ptr->ctl2model_ip(tmp_pars);
		run_manager.add_run(tmp_pars);
	}
}

void Sobol::assemble_runs(RunManagerAbstract &run_manager)
{
	MatrixXd c;
	run_manager.reinitialize();
	gen_m1_m2();
	
	//calculate a0
	int n_adj_par = adj_par_name_vec.size();

	add_model_runs(run_manager, m1);
	add_model_runs(run_manager, m2);

	//cout << m1 << endl << endl;
	//cout << m2 << endl << endl;
	//calculate first order runs a1,....an
	vector<int> idx_vec;
	for (int ai=0; ai<n_adj_par; ++ai)
	{
		idx_vec.clear();

		idx_vec.push_back(ai);
		c = gen_N_matrix(m1, m2, idx_vec);
		//cout << c << endl << endl;
		add_model_runs(run_manager, c);
	}
}


vector<double> Sobol::get_obs_vec(RunManagerAbstract &run_manager, int run_set, ModelRun &model_run, const string &obs_name)
{
	ModelRun run0 = model_run;

	int run_b = run_set * n_sample;
	int run_e = run_b + n_sample;

	Parameters pars0;
	Observations obs0;
	int nrun = 0;
	vector<double> obs_vec = vector<double>(n_sample, MISSING_DATA);
	for (int run_id = run_b; run_id<run_e; ++run_id)
	{
		double obs = MISSING_DATA;
		bool success = run_manager.get_run(run_id, pars0, obs0);
		if (success)
		{
			run0.update_ctl(pars0, obs0);
			obs = obs0.get_rec(obs_name);
			if (obs == Observations::no_data) obs = MISSING_DATA;
		}
		obs_vec[nrun] = obs;
		nrun++;
	}
	return obs_vec;
}


vector<double> Sobol::get_phi_vec(RunManagerAbstract &run_manager, int run_set, ModelRun &model_run)
{
	ModelRun run0 = model_run;

	int run_b = run_set * n_sample;
	int run_e = run_b + n_sample;

	Parameters pars0;
	Observations obs0;
	int nrun = 0;
	vector<double> phi_vec = vector<double>(n_sample, MISSING_DATA);
	for(int run_id=run_b; run_id<run_e; ++run_id)
	{
		double phi = MISSING_DATA;
		bool success = run_manager.get_run(run_id, pars0, obs0);
		if (success)
		{
			run0.update_ctl(pars0, obs0);
			phi = run0.get_phi(0.0);
		}
		phi_vec[nrun] = phi;
		nrun++;
	}
	return phi_vec;
}

void Sobol::calc_sen(RunManagerAbstract &run_manager, ModelRun model_run)
{
	ofstream &fout_sbl = file_manager_ptr->open_ofile_ext("sbl");
	fout_sbl << "Sobol Sensitivity for PHI" << endl;
	calc_sen_single(run_manager, model_run, fout_sbl, string());

	vector<string> obs_names = run_manager.get_obs_name_vec();
	for (const string &iobs : obs_names)
	{
		fout_sbl << endl;
		fout_sbl << "Sobol Sensitivity for observation \"" << iobs <<"\"" << endl;
		calc_sen_single(run_manager, model_run, fout_sbl, iobs);
	}

	file_manager_ptr->close_file("sbl");
}


void Sobol::calc_sen_single(RunManagerAbstract &run_manager, ModelRun model_run, ofstream &fout_sbl, const string &obs_name)
{
	vector<double> ya;
	vector<double> yb;
	if (obs_name.empty())
	{
		ya = get_phi_vec(run_manager, 0, model_run);
		yb = get_phi_vec(run_manager, 1, model_run);
	}
	else
	{
		ya = get_obs_vec(run_manager, 0, model_run, obs_name);
		yb = get_obs_vec(run_manager, 1, model_run, obs_name);
	}

	vector<double> ya_yb_prod = vec_array_prod(ya, yb, MISSING_DATA);
	vector<double> y_ab;
	y_ab.reserve(ya.size() + yb.size()); // preallocate memory
	y_ab.insert(y_ab.end(), ya.begin(), ya.end());
	y_ab.insert(y_ab.end(), yb.begin(), yb.end());
	
	//Compute Mean for the S_i's
	double mean_sq_si = vec_mean_missing_data(ya_yb_prod, MISSING_DATA);
	// Compute Var for S_i's
	pair<double, size_t> data = sum_of_prod_missing_data(y_ab, y_ab, MISSING_DATA);
	double var_si = data.first / (data.second - 2.0) - mean_sq_si;

	//Compute Mean for the S_ti's
	double mean_sq_sti = pow(vec_mean_missing_data(y_ab, MISSING_DATA), 2.0);
	// Compute Var for S_ti's
	double sti_u = sobol_u_missing_data(yb, yb, MISSING_DATA);
	double var_sti = sti_u - mean_sq_sti;

	cout << endl;
	cout << "mean_sq_si=" << mean_sq_si << endl;
	cout << "var_si=" << var_si << endl;
	cout << "mean_sq_sti=" << mean_sq_si << endl;
	cout << "var_sti=" << var_si << endl;
	int npar = adj_par_name_vec.size();

	fout_sbl << "parameter_name, s_i, st_i" << endl;
	for (int i=0; i<npar; ++i)
	{
		cout << "nruns = " << run_manager.get_nruns() << endl;
		cout <<"######### PAR = " << adj_par_name_vec[i] << endl;
		vector<double> yci;
		if (obs_name.empty())
		{
			yci = get_phi_vec(run_manager, i + 2, model_run);
		}
		else
		{
			yci = get_obs_vec(run_manager, i + 2, model_run, obs_name);
		}

		double sobol_uj = sobol_u_missing_data(ya, yci, MISSING_DATA);
		cout << " U=" << (sobol_uj - mean_sq_si) << "  var_si= " << var_si << endl;
		double si = (sobol_uj - mean_sq_si) / var_si;

		double sobol_umj = sobol_u_missing_data(yb, yci, MISSING_DATA);
		double sti = 1 - (sobol_umj - mean_sq_sti) / var_sti;

		cout << "pararmeter " << adj_par_name_vec[i] << "   si=" << si << ",   sti=" << sti << endl;
		cout <<"######### END" << endl;

		fout_sbl << adj_par_name_vec[i] << ", " << si << ", " << sti << endl;
	}
}
