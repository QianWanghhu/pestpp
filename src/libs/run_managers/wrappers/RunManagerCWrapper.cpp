#include <algorithm>
#include "RunManagerCWrapper.h"
#include "utilities.h"
#include "RunManagerPanther.h"
#include "RunManagerSerial.h"
#include "pest_error.h"

typedef class RunManagerAbstract RunManagerAbstract;
static string _c_run_manager_error;
static ofstream _c_fout_run_manager_log_file;

using namespace pest_utils;

extern "C"
{

RunManager* rmic_create_serial(char **comline, int comline_array_len,
	char **tpl, int tpl_array_len,
	char **inp, int inp_array_len,
	char **ins, int ins_array_len,
	char **out, int out_array_len,
	char *storfile,
	char *rundir,
	int n_max_fail)
{
	_c_run_manager_error.clear();
	RunManager *run_manager_ptr = nullptr;
	vector<string> comline_vec(comline, comline+comline_array_len);
	vector<string> tpl_vec(tpl, tpl+tpl_array_len);
	vector<string> inp_vec(inp, inp+inp_array_len);
	vector<string> ins_vec(ins, ins+ins_array_len);
	vector<string> out_vec(out, out+out_array_len);
	int err;

	try {
		run_manager_ptr = new RunManagerSerial(comline_vec, tpl_vec, inp_vec, ins_vec,
			out_vec, storfile, rundir, n_max_fail);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return run_manager_ptr;
}


RunManager* rmic_create_panther(char *storfile,
	char *port,
	char *info_filename,
	int n_max_fail,
	double overdue_reched_fac, double overdue_giveup_fac,
	double overdue_giveup_time_sec)
{
	int err;
	RunManager *run_manager_ptr = nullptr;
	_c_fout_run_manager_log_file.open(info_filename);

	try {
		run_manager_ptr = new RunManagerPanther(storfile, port,
			_c_fout_run_manager_log_file, n_max_fail, overdue_reched_fac,
			overdue_giveup_fac, overdue_giveup_time_sec);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return run_manager_ptr;
}

const char* rmic_err_msg()
{
	return _c_run_manager_error.c_str();
}


int rmic_initialize(RunManager *run_manager_ptr, 
	char **pname, int pname_array_len,
	char **oname, int oname_array_len)

{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		vector<string> pname_vec(pname, pname+pname_array_len);
		vector<string> oname_vec(oname, oname+oname_array_len);
		run_manager_ptr->initialize(pname_vec, oname_vec);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_reinitialize(RunManager *run_manager_ptr)
{
	_c_run_manager_error.clear();
    int err = 0;
	try {
		run_manager_ptr->reinitialize();
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_initialize_restart_(RunManager *run_manager_ptr, char *storfile)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->initialize_restart(storfile);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}



int rmic_add_run(RunManager *run_manager_ptr, double *parameter_data, int npar, int model_exe_index, int *id)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		vector<double> data(parameter_data, parameter_data+npar);
		*id = run_manager_ptr->add_run(data, model_exe_index);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_run(RunManager *run_manager_ptr)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->run();
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_add_run_with_info(RunManager *run_manager_ptr, double *parameter_data, int npar,
int model_exe_index, char *c_info_txt, double info_value, int *id)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		string info_txt;
		vector<double> data(parameter_data, parameter_data + npar);
		*id = run_manager_ptr->add_run(data, model_exe_index, info_txt, info_value);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_run_until(RunManager *run_manager_ptr, int condition, int no_ops, double time_sec, int *return_cond)
{
	_c_run_manager_error.clear();
	int err = 0;
	RunManagerAbstract::RUN_UNTIL_COND enum_input_cond;
	RunManagerAbstract::RUN_UNTIL_COND enum_return_cond;
	enum_input_cond = static_cast<RunManagerAbstract::RUN_UNTIL_COND>(condition);
	try {
		enum_return_cond = run_manager_ptr->run_until(enum_input_cond, no_ops, time_sec);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	*return_cond = static_cast<int>(enum_return_cond);
	return err;
}


int rmic_cancel_run(RunManager *run_manager_ptr, int run_id)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->cancel_run(run_id);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_n_parameters(RunManager *run_manager_ptr)
{
	int npar = 0;
	const vector<string> pname_vec = run_manager_ptr->get_par_name_vec();
	npar = pname_vec.size();
	return npar;
}

int rmic_get_parameter_names(RunManager *run_manager_ptr, char ***pnames, int *npar)
{
	int err = 0;
	try
	{
		const vector<string> pname_vec = run_manager_ptr->get_par_name_vec();
		*npar = pname_vec.size();
		*pnames = (char **)malloc((*npar) * sizeof(char*));
		for (size_t i = 0;i < *npar;i++)
		{
			int name_len = pname_vec[i].length();
			(*pnames)[i] = (char *)malloc((name_len + 1) * sizeof(char));
			snprintf((*pnames)[i], name_len + 1, "%s", pname_vec[i].c_str());
		}
	} 
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_n_observations(RunManager *run_manager_ptr)
{
	int npar = 0;
	const vector<string> oname_vec = run_manager_ptr->get_obs_name_vec();
	npar = oname_vec.size();
	return npar;
}

int rmic_get_observation_names(RunManager *run_manager_ptr, char ***onames, int *nobs)
{
	int err = 0;
	try
	{
		const vector<string> oname_vec = run_manager_ptr->get_obs_name_vec();
		*nobs = oname_vec.size();
		*onames = (char **)malloc((*nobs) * sizeof(char*));
		for (int  i = 0;i < *nobs;i++)
		{
			int name_len = oname_vec[i].length();
			(*onames)[i] = (char *)malloc((name_len + 1) * sizeof(char));
			snprintf((*onames)[i], name_len + 1, "%s", oname_vec[i].c_str());
		}
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_free_names_memory(char **names, int names_len)
{
	int err = 0;
	try
	{
		for (size_t i = 0;i < names_len; i++)
		{
			free(names[i]);
		}
		free(names);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_run_status(RunManager *run_manager_ptr, int run_id, int *run_status, double *max_runtime, int *n_concurrent_runs)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->get_run_status_info(run_id, *run_status, *max_runtime, *n_concurrent_runs);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}
int rmic_get_run_info(RunManager *run_manager_ptr, int run_id, int *run_status, int *model_exe_index, char *info_txt, int info_txt_len, double *info_value)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		string info_txt_str;
		run_manager_ptr->get_info(run_id, *run_status, *model_exe_index, info_txt_str, *info_value);
		snprintf(info_txt, info_txt_len, info_txt_str.c_str());
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_run(RunManager *run_manager_ptr, int run_id, double *parameter_data, int npar, double *obs_data, int nobs)
{
	_c_run_manager_error.clear();
	int err = 1;
	try
	{
		bool success;
		success = run_manager_ptr->get_run(run_id, parameter_data, npar, obs_data, nobs);
		if (success) err = 0;
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_run_with_info(RunManager *run_manager_ptr, int run_id, double *parameter_data, int npar, double *obs_data, int nobs, char *info_txt, int info_txt_len, double info_value)
{
	_c_run_manager_error.clear();
	int err = 1;
	try 
	{
	   bool success;
	   string info_txt_str;
	   success = run_manager_ptr->get_run(run_id, parameter_data, npar, obs_data, nobs, info_txt_str, info_value);
	   snprintf(info_txt, info_txt_len, info_txt_str.c_str());
	   if (success) err = 0;
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_get_n_failed_runs(RunManager *run_manager_ptr, int *nfail)
{
	_c_run_manager_error.clear();
	int err = 0;
	*nfail = -999;
	try
	{
        const std::set<int> &fail_set = run_manager_ptr->get_failed_run_ids();
        *nfail = fail_set.size();
	}
	catch (const exception &e)
	 {
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_failed_run_ids_alloc(RunManager *run_manager_ptr, int *run_id_array, int *nfail)
{
	_c_run_manager_error.clear();
    int err = 0;
    int n_failed;
    try
	{
        const std::set<int> &fail_set = run_manager_ptr->get_failed_run_ids();
        n_failed = fail_set.size();
        run_id_array = new int[n_failed];
        std::copy_n(fail_set.begin(), n_failed, run_id_array);
	*nfail = n_failed; 
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_failed_run_ids(RunManager *run_manager_ptr, int *run_id_array, int nfail)
{
	_c_run_manager_error.clear();
    int err = 0;
    try
	{
		std::fill_n(run_id_array, nfail, -999);
        const std::set<int> &fail_set = run_manager_ptr->get_failed_run_ids();
        int n_failed_tmp = min(int(fail_set.size()), nfail);
        std::copy_n(fail_set.begin(), n_failed_tmp, run_id_array);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}


int rmic_get_n_cur_runs(RunManager *run_manager_ptr, int *nruns)
{
	_c_run_manager_error.clear();
    int err = 0;
    try {
        *nruns = run_manager_ptr->get_nruns();
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_get_n_total_runs(RunManager *run_manager_ptr, int *total_runs)
{
	_c_run_manager_error.clear();
    int err = 0;
    try {
        *total_runs = run_manager_ptr->get_total_runs();
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_set_transfer_file_names(RunManager *run_manager_ptr, char **fnames, int fnames_array_len)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		vector<string> fnames_vec(fnames, fnames + fnames_array_len);
		run_manager_ptr->set_transfer_file_names(fnames_vec);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_set_transfer_security(RunManager *run_manager_ptr, char *security_method, char *security_key)
{
	int err = 0;
	_c_run_manager_error.clear();
	try {
		run_manager_ptr->set_transfer_security(security_method, security_key);

	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_is_run_last(RunManager *run_manager_ptr, int run_id)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->is_run_last(run_id);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_queue_file_transfer_from_worker(RunManager *run_manager_ptr, int filename_index_on_worker, int filename_index_on_manager, int run_id)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->queue_file_transfer_from_worker(filename_index_on_worker, filename_index_on_manager, run_id);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

int rmic_queue_file_transfer_to_workers(RunManager *run_manager_ptr, int filename_index_on_manager, int filename_index_on_worker)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		run_manager_ptr->queue_file_transfer_to_workers(filename_index_on_manager, filename_index_on_worker);
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}




int rmic_delete(RunManager *run_manager_ptr)
{
	_c_run_manager_error.clear();
	int err = 0;
	try {
		delete run_manager_ptr;
	}
	catch (const exception &e)
	{
		err = 1;
		_c_run_manager_error = e.what();
	}
	catch (char const *e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (const string e)
	{
		err = 1;
		_c_run_manager_error = e;
	}
	catch (...)
	{
		err = 1;
	}
	return err;
}

}
