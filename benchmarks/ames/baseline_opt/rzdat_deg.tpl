ptf @
========================================================================
=======================  R Z W Q M 2   V E R  2.00  ====================
========================================================================
==              Text Headers Last Modified:  9.16.2010
========================================================================
==                                                                    ==
==            P H Y S I O G R A P H I C    P A R A M E T E R S        ==
==                                                                    ==
========================================================================
=     Environmental parameters
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      area of the field                                      [ha]
=     2      elevation for the field                                 [m]
=     3      aspect measured clockwise from true north         [radians]
=     4      latitude of field                                 [radians]
=     5      slope of field                                    [radians]
=     6      longitude of field                                [radians]
=     7      rainfall zones 1-3  [default=2 {10-20Inch annual rainfall}]
========================================================================
0.405  300.0  1.5708  0.748746  0.020071  1.81514  2  
========================================================================
==                                                                    ==
==         SOIL PROPERTIES AND PARAMETERS                             ==
==                                                                    ==
========================================================================
=         SOIL SYSTEM PHYSICAL CONFIGURATION
=
= Rec 1: number of soil horizons, profile depth                     [cm]
= Rec 2: soil horizon lower depths                                  [cm]
=      ...repeated for each horizon
========================================================================
10  247.000000
20.0  
41.0  
50.0  
69.0  
89.0  
101.0  
130.0  
150.0  
200.0  
247.0  
========================================================================
==                                                                    ==
==        NUMERICAL SYSTEM CONFIGURATION                              ==
==                                                                    ==
========================================================================
=        DEPTH DISCRETIZATION FOR MOISTURE & HEAT MODELS
=
= Rec 1: number of numerical nodes.
= Rec 2: node # , depth of numerical layer [cm], distance from this
=        node to the next node [cm]
=
= . . . Repeat Rec 2 for all remaining node/layer pairs, 1 pair per
=       record (depth increasing with node no.)
========================================================================
58
1  1.0  1.0  
2  2.0  1.0  
3  4.0  3.0  
4  7.0  3.0  
5  11.0  5.0  
6  16.0  5.0  
7  20.0  3.0  
8  24.0  5.0  
9  29.0  5.0  
10  34.0  5.0  
11  38.0  3.0  
12  41.0  3.0  
13  44.0  3.0  
14  47.0  3.0  
15  50.0  3.0  
16  53.0  3.0  
17  57.0  5.0  
18  62.0  5.0  
19  66.0  3.0  
20  69.0  3.0  
21  72.0  3.0  
22  76.0  5.0  
23  81.0  5.0  
24  85.0  3.0  
25  89.0  5.0  
26  93.0  3.0  
27  97.0  5.0  
28  101.0  3.0  
29  105.0  5.0  
30  110.0  5.0  
31  115.0  5.0  
32  120.0  5.0  
33  125.0  5.0  
34  130.0  5.0  
35  135.0  5.0  
36  140.0  5.0  
37  145.0  5.0  
38  150.0  5.0  
39  155.0  5.0  
40  160.0  5.0  
41  165.0  5.0  
42  170.0  5.0  
43  175.0  5.0  
44  180.0  5.0  
45  185.0  5.0  
46  190.0  5.0  
47  195.0  5.0  
48  200.0  5.0  
49  205.0  5.0  
50  210.0  5.0  
51  215.0  5.0  
52  220.0  5.0  
53  225.0  5.0  
54  230.0  5.0  
55  235.0  5.0  
56  240.0  5.0  
57  244.0  3.0  
58  247.0  0.0  
========================================================================
=         SOIL HORIZON PHYSICAL PROPERTIES
=
= Rec 1: texture class (soil type) name (<= 32 char)
= Rec 2: texture code (=1, default hydraulic properties; =0, user specified hydraulic properties required), 
=        particle dens [g/cm^3], bulk dens [g/cm^3]
=        porosity [0..1], Fsand [0..1], Fsilt [0..1], Fclay [0..1]
=
= . . . Repeat for each horizon, soil surface to profile bottom
========================================================================
clay
0  2.6  1.45  0.442  0.38  0.42  0.2  
clay
0  2.65  1.51  0.43  0.41  0.34  0.25  
clay
0  2.65  1.51  0.43  0.42  0.32  0.26  
clay
0  2.69  1.6  0.405  0.4  0.4  0.2  
clay
0  2.69  1.6  0.405  0.4  0.4  0.2  
clay
0  2.69  1.69  0.372  0.44  0.31  0.25  
clay
0  2.7  1.8  0.333  0.44  0.31  0.25  
clay
0  2.7  1.8  0.333  0.44  0.31  0.25  
clay
0  2.7  1.8  0.333  0.44  0.31  0.25  
clay
0  2.7  1.8  0.333  0.44  0.31  0.25  
========================================================================
=        SOIL HORIZON HYDRAULIC PROPERTIES
=
= soil horizon 1:  modified Brooks-Corey parameters
=               /-- horizon sequence number (ie.1,2,3,...)
=               |   (1;):   hb    - bubbling pressure O(h) [cm]
=               |   (2;):   lamda - pore size distribution index
=       rec #1 <    (3;):   eps   - exponent for K(h) curve
=               |   (4;):   Ksat  - sat hydraulic conductivity [cm/hr]
=               |   (5;):   wr    - residual water content
=               \-- (6;):   ws    - saturation water content
=               /-- (7;):   wfc   - field capacity (1/3 bar) wc
=               |   (8;):   wfc   - field capacity (1/10 bar) wc
=               |   (9;):   wwp   - wilting point (15 bar) wc
=       rec #2 <    (10;):  hb    - bubbling pressure K(h) curve
=               |   (11;):  C2    - second intercept on K(h) curve
=               |   (12;):  N1    - first exponent for K(h) curve
=               \-- (13;):  A1    - constant for O(h) curve
=       rec #3  lateral saturated conductivity to the drain [cm/hr]
=
= . . . Repeat for each horizon
========================================================================
1  @s21      @ @a21      @ @n21     @ @c11     @   0.027  0.442  
0.293128  0.322135  0.218813  @s11      @ @c21      @  0.0  0.0  
3.600000
2  @s22      @ @a22      @ @n22     @ @c12     @  0.027  0.43  
0.325626  0.351861  0.255756  @s12      @ @c22      @  0.0  0.0  
6.050000
3  @s23      @ @a23      @ @n23     @ @c13     @  0.027  0.43  
0.325626  0.351861  0.255756  @s13      @ @c23      @  0.0  0.0  
8.500000
4  @s24      @ @a24      @ @n24     @ @c14     @  0.027  0.405  
0.274247  0.303182  0.201179  @s14      @ @c24      @  0.0  0.0  
11.500000
5  @s25      @ @a25      @ @n25     @ @c15     @  0.027  0.405  
0.274247  0.303182  0.201179  @s15      @ @c25      @  0.0  0.0  
14.500000
6  @s26      @ @a26      @ @n26     @ @c16     @  0.027  0.372  
0.29238  0.312242  0.238178  @s16      @ @c26      @  0.0  0.0  
9.410000
7  @s27      @ @a27      @ @n27     @ @c17     @  0.027  0.333  
0.26238  0.279998  0.214306  @s17      @ @c27      @  0.0  0.0  
@LKs      @
8  4.2  0.06  2.18  0.01  0.027  0.333  
0.26238  0.279998  0.214306  4.2  0.23  0.0  0.0  
0.010000
9  4.2  0.06  2.18  0.01  0.027  0.333  
0.26238  0.279998  0.214306  4.2  0.23  0.0  0.0  
0.010000
10  4.2  0.06  2.18  0.01  0.027  0.333  
0.26238  0.279998  0.214306  4.2  0.23  0.0  0.0  
0.010000
========================================================================
=        SOIL HORIZON HEAT MODEL PARAMETERS
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=    1       texture class index (1-coarse,2-med,3-fine)
=    2       dry vol heat capacity (<=1.0)                    [J/mm^3/C]
=
=            . . . Repeat for each horizon
========================================================================
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
2  0.00111  
========================================================================
==                                                                    ==
==            M A C R O P O R E  and  I N F I L T R A T I O N         ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=
=     control information
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      a surface crust is present                     [0=no, 1=yes]
=     2      crust hydraulic conductivity                         [cm/hr]
=     3      bottom boundry condition for soil water redistribution:
=              1: CONSTANT HEAD BOUNDRY, uses initial value and
=                    maintains this head throughout simulation.
=              2: UNIT GRADIENT BOUNDRY, assumes the same conductivity
=                    for last node and bottom psuedo-node (as function
=                    of water content).
=              3: CONSTANT FLUX BOUNDRY, uses user specified value of
=                    leakage rate as long as a water table is maintained
=                    in the root zone.
=     4      Field saturation fraction for (THETA-S)
=     5      Convergence Criteria threshold for Richards equation
=     6      Maximum number of iterations steps for Richards equation
=     7      Maximum number of cycles of iterations for Richards equ.
=     8      Management cutoff threshold for soil moisture content.[0..1]
=               1st horizon moisture content exceeded, mangt is postponed
=     9      Perched water table is present in profile      [0=no, 1=yes]
=    10         value of water table leakage rate                 [cm/hr]
=    11      drains are present in the soil profile         [0=no, 1=yes]
=    12         depth from surface to drains                         [cm]
=    13         drain spacing                                        [cm]
=    14         radius of drain                                      [cm]
=    15      unit gradient flow during infiltration events.[0=no, 1=yes]
=    16      lateral hydraulic gradient
========================================================================
1  @chc @ 3  1.0  1.000E-005  5000  1  0.99  1  0.0  1  120.0  2900.0  5.0  1  @lhg       @ 
========================================================================
=
=     micropore information
= RECORD # 1
= item no.   description
= --------   -----------
=     1      use horizon microporosity data as given       [0=no, 1=yes]
=     2      const A of nonuniform mixing equation: mixing = Ae^(-Bx) [=1.0]
=     3      const B of nonuniform mixing equation: mixing = Ae^(-Bx)
= RECORD # 2
= item no.   description
= --------   -----------
=     1      microporosity of each horizon                      [.01..1]
=
=     ...  repeat record number 2 for each horizon
========================================================================
1  1.0  4.4  
0.495  
0.595  
0.595  
0.497  
0.497  
0.64  
0.644  
0.644  
0.644  
0.644  
========================================================================
=
=     macropore information
= ITEM NO.   DESCRIPTION
= --------   -----------
=    1.1     macropores are present in soil                [0=no, 1=yes]
=    1.2     Sorptivity factor control for lateral G-A infil      [0..1]
=    1.3     macropore / tile drain Express Fraction              [0..1]
=    2       Effective lateral infiltration wetting thickness
=    2.1       for radial holes                                     [CM]
=    2.2       for cracks/columns                                   [CM]
=    3.1     total macroporosity                               [cm3/cm3]
=    3.2     avg. radius of cylindrical pores                       [cm]
=    3.3     width of rectangular cracks in lower horizons,
=            this is zero in the top horizon                        [cm]
=    3.4     length of cracks in lower horizons,
=            this is zero in top horizon                            [cm]
=    3.5     average length of aggregate in lower horizons          [cm]
=    3.6     fraction of dead end pores                           [0..1]
=
=     ...  repeat this record for each horizon
========================================================================
1  0.1  @expr @  
@EST @  0.5  
@   mac  @  @  mac_r @  0.0  0.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  0.0  
@   mac  @  @  mac_r @  0.0  10.0  0.0  1.0  
0.0  0.0  0.0  10.0  0.0  0.0  
0.0  0.0  0.0  10.0  0.0  0.0  
0.0  0.0  0.0  10.0  0.0  0.0  
========================================================================
==                                                                    ==
==            P O T E N T I A L   E V A P O R A T I O N               ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     Environmental parameters
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      albedo of the dry soil                               [0..1]
=     2      albedo of the wet soil                               [0..1]
=     3      albedo of the crop at maturity                       [0..1]
=     4      albedo of fresh residue                              [0..1]
=     5      height at which wind measurements are taken             [m]
=     6      average sunshine fraction for a day                  [0..1]
=     7      PAN COEFFICIENT                                      [0..1]
=     8      Using Hourly weather                          [0=no, 1=yes]
=     9      Using SHAW module                             [0=no, 1=yes]
=    10      Using Penflux module                          [0=no, 1=yes]
========================================================================
0.2  0.1  0.25  0.4  2.0  0.8  1.0  0  0  0  
========================================================================
==                                                                    ==
==                 S U R F A C E   R E S I D U E                      ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     Current Residue Conditions
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      dry mass of the flat residue on the surface[Metric tons/ha]
=     2      age of residue at start of simulation                [days]
=     3      residue cover factor     [corn=2.0, soybean=2.5, wheat=4.0]
=     4      average height of flat residue layer                   [cm]
=     5      C:N ratio of dominate residue material            [10..500]
=     6      residue stem area index       [m2 standing stems/m2 ground]
=     7      height of standing residue                             [cm]
=     8      dry mass of the standing residue           [Metric tons/ha]
========================================================================
5.0  100.0  2.0  3.0  48.19  0.0  0.0  0.0  
========================================================================
=     Anhydrous Ammonia Fate
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      delay time for nitrification to restart after a plain
=            anhydrous application                                [days]
=     2      delay time attributed to "N-SERV" application, in
=            addition to item #1                                  [days]
=     3      length of time from start to full recovery after a
=            plain anhydrous application                          [days]
=     4      length of time from start to full recovery after a
=            "N-SERV" anhydrous application                       [days]
=     5      The Douglas-Rickman Surface Residue Decomposition Constant [.0004] 
=            (no longer yearly fraction of surface residue incorporated[.05])
========================================================================
14  18  14  14 0.0004  
========================================================================
==                                                                    ==
==                   S O I L   C H E M I S T R Y                      ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     FULL PROFILE CHEMICAL INFORMATION
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      % base saturation                                       [%]
=     2      salinity of soil expressed as EC of soil water  [mMOLES/cm]
========================================================================
0.000000  0.000000 
========================================================================
==                                                                    ==
==                   RAIN WATER CHEMISTRY                             ==
==                                                                    ==
==                                                                    ==
========================================================================
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      ph                                                  [2..14]
=     2      chem concentrations of (Ca, Na, Mg, Cl, HCO3)        [mg/L]
=     3      chem concentrations of (SO4, AL, CO3, NH4, NO3)      [mg/L]
=
========================================================================
6.4  
0.0  0.0  0.0  0.0  0.0  
0.0  0.0  0.0  0.0  0.0  
========================================================================
==                                                                    ==
==                   IRRIGATION WATER CHEMISTRY                       ==
==                                                                    ==
==                                                                    ==
========================================================================
=
= REC  NO.   DESCRIPTION
= --------   -----------
=     1      ph                                                  [2..14]
=     2      chem concentrations of (Ca, Na, Mg, Cl, HCO3)        [mg/L]
=     3      chem concentrations of (SO4, AL, CO3, NH4, NO3)      [mg/L]
=
========================================================================
6.8  
0.0  0.0  0.0  0.0  0.0  
0.0  0.0  0.0  0.0  0.0  
========================================================================
==                                                                    ==
==                      P E S T I C I D E S                           ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     GENERAL PESTICIDE INFORMATION
=
= REC.NUM.   DESCRIPTION
= --------   -----------
=     1      Number of pesticides                                 [1..3]
=     2      Name of this pesticide
=     3      Physiochemical properties:
=     3.1       Molecular weight                                [g/mole]
=     3.2       Henry's Law constant                        [real small]
=     3.3       Daughter product ancestry code [0=parent/none,1=daughter,2=granddaughter]
=     3.4       Daughter product formation process code           [1-13]
=     3.5       Daughter product formation percentage                [%]
=     3.6       Octanol-water partitioning coefficient (Kow)
=     3.7       irreversible bound pool formation fraction (not used)
=     4      Degradation adjustment factors:
=     4.1       Reference soil volumetric water content          [cc/cc]
=     4.2       Reference soil temperature                           [C]
=     4.3       Aerobic arrhenius equation activation energy    [Kj/mol]
=     4.4       Anerobic arrhenius equation activation energy   [Kj/mol]
=     4.5       Walker soil moisture adjustment constant
=     4.6       Flag for depth adjustment, on if = 1.              [0/1]
=     4.7       Maximum relative adjustment due to depth
=     5      Plant canopy wash-off parameters: coeff(a),power(b)
=            Residue wash-off parameters: coeff(a),power(b)
=     6      Sorption/desorption and kinetic parameters
=     6.1       pKa:  acid dissociation = 10^(-pKa)
=     6.2       pKb:  base protonation  = 10^(-pKb)
=     6.3       Freundlich isotherm (not used)
=     6.4       Neutral sorption constant for soil OM (Koc)       [cc/g]
=     6.5       Cationic (+) sorption constant for soil OM (Koc)  [cc/g]
=     6.6       Anionic (-) sorption constant for soil OM (Koc)   [cc/g]
=     6.7       Reference soil pH
=     6.8       Kinetic fraction for adsorption to calcualte EK2 (0-1)
=     6.9       Kinetic desorption halflife to calculate RK2 (days)
=     6.10      Diffusion rate for micro<==>meso movement      [cm^2/hr]
=
=		...repeat records 2-6 for each pesticide
========================================================================
3
ATRAZINE
215.7  1.030E-007  0  0  0.0  500.0  0.0  
@rsw   @  @rst  @  @Ea     @  @Ea     @  @Wsm  @  1  @mrad   @  
100  0.033  100.0  0.033  
0.0  12.32  1.0  @Koc  @  0.0  0.0  7.0  0.0  0.0  0.01  
METOLACHLOR
283.8  9.190E-007  0  0  0.0  500.0  0.0  
0.3  20.0  54000.0  54000.0  0.8  0  10.0  
100.0  0.033  100.0  0.033  
0.0  0.0  1.0  100.0  0.0  0.0  7.0  0.0  0.0  0.01  
ALACHLOR
269.8  8.620E-007  0  0  0.0  500.0  0.0  
0.3  20.0  54000.0  54000.0  0.8  0  10.0  
100.0  0.033  100.0  0.033  
0.0  0.0  1.0  170.0  0.0  0.0  7.0  0.0  0.0  0.01  
========================================================================
=
=     Degradation Halflives (SET EQUAL TO -1 IF NOT USED)
=
= ITEM NUM.  DESCRIPTION
= --------   -----------
=     1      Foliar biotic halflife (days)
=     2      Foliar photodegradation halflife (days)
=     3      Foliar abiotic halflife (days)
=     4      Residue layer biotic halflife (days)
=     5      Residue layer photodegradation halflife (days)
=     6      Residue layer abiotic halflife (days)
=     7      Soil Surface biotic halflife (days)
=     8      Soil Surface volatilization halflife (days)
=     9      Soil Surface photodegradation halflife (days)
=     10     Soil Profile Lumped halflife (days) * 
=     11     Soil Subsurface aerobic biodegradation halflife (days)
=     12     Soil Subsurface anerobic biodegradation halflife (days)
=     13     Soil Subsurface abiotic halflife (days)
=     14     Absorbed Pesticide Halflife in the Soil Profile (days)
=
=           ... REPEAT FOR EACH PESTICIDE
========================================================================
15.0  -1.0  -1.0  @h_3 @  -1.0  -1.0  @half@  -1.0  -1.0  -1.0  @h_2 @  -1.0  -1.0  -1.0  
15.0  -1.0  -1.0  15.0  -1.0  -1.0  80     -1.0  -1.0  -1.0  80.0  -1.0  -1.0  -1.0  
15.0  -1.0  -1.0  15.0  -1.0  -1.0  15.0  -1.0  -1.0  -1.0  30.0  -1.0  -1.0  -1.0  
========================================================================
==                      P L A N T   G R O W T H                       ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     PLANT MODEL CONTROL
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      number of plants parameterized                       [1..5]
=     2...   name of plant                                     [30 char]
=
=        The order given is used in the plant management section
=        below as the reference number.
=
========================================================================
6
0006  CORN (NK45-T5)
0007  CORN (NK4640)
0008  CORN (GH2343)
0101  SOYBEAN (SOI237)
0102  SOYBEAN (Krug 2343)
0103  SOYBEAN (Sans S2062)
========================================================================
=     SITE SPECIFIC PARAMETERS
=
=     THE FOLLOWING PARAMETERS CAN BE USED TO CALIBRATE THE ROOT ZONE
=     WATER QUALITY MODEL.
=
=     NOTES FOR ADJUSTING THE SIX PRIMARY PARAMETES OF THE GENERIC PLANT
=     GROWTH MODEL (DESCRIPTIONS OF THE VARIABLES ARE GIVEN BELOW)
=
=               ITEM NO.    EXPLANATION OF RESULTS
=               --------    ----------------------------------------
=                  1        INCREASE ACTIVE N UPTAKE BY THE ROOTS;
=                           INCREASING THIS PARAMETER CAUSES AN
=                           INCREASE IN ACTIVE UPTAKE WHICH, IN MOST
=                           WILL RESULT IN AN INCREASED YIELD
=                  2        MAINTAINS N UPTAKE WHILE DECREASING
=                           BIOMASS ACCUMULATION; INCREASING THIS
=                           PARAMETER RESULTS IN A DECREASE IN BIOMASS
=                  3        AFFECTS THE CONVERSION BETWEEN LEAF AREA
=                           AND BIOMASS.  INCREASING THIS PARAMETER
=                           CAUSES A DECREASE IN TOTAL PLANT PRODUCTION
=                  4        THIS IS THE END OF SEASON PLANT DENSITY
=                           UPON WHICH PARAMETER #3 IS BASED.  NOTE
=                           THAT PARAMETERS #3 AND #4 ARE TOTALLY
=                           DEPENDENT ON EACH OTHER.
=                  5        THIS PARAMETER KEEPS THE TOTAL PRODUCTION
=                           CONSTANT WHILE DECREASING THE YIELD BY
=                           DECREASING PHOTOSYNTHESIS EFFICIENCY DURING
=                           PROPAGULE DEVELOPMENT.  USE THIS AND #6 TO
=                           ADJUST THE HARVEST INDEX.  DECREASES IN
=                           #5 RESULT IN A DECREASE IN HARVEST INDEX
=                  6        SAME AS #5 ABOVE, BUT EFFECT PHOTOSYNTHESIS
=                           DURING YIELD DEVELOPMENT PERIOD (LATER IN
=                           GROWING SEASON)
=                  7        ALLOWS MORE ROOT DEVELOPMENT AND THEREFORE
=                           INCREASES IN ROOT DEPTH GENERALLY INCREASE
=                           TOTAL PLANT PRODUCTION
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      MAXIMUM NITROGEN UPTAKE RATE  (CNUP1)         [G/PLANT/DAY]
=     2      PROPORTION OF PHOTOSYNTHATE TO RESPIRE              [0...1]
=     3      AMOUNT OF BIOMASS NEEDED TO OBTAIN LEAF AREA
=                       INDEX OF 1.0                                 [G]
=     4      PLANT DENSITY UPON WHICH #3 IS BASED
=     5      AGE EFFECT FOR PROPAGULES AS PROP. OF PHOTO.        [0...1]
=     6      AGE EFFECT FOR SEEDS AS PROPORTION OF PHOTO.        [0...1]
=     7      NORMAL MAXIMUM ROOT SYSTEM DEPTH                        [M]
=     8      POTENTIAL MIN LEAF STOMATAL RESISTANCE (S/M)     [100...400]
=     9      NITROGEN SUFFICIENCY INDEX THRESHOLD BELOW WHICH FERTILIZER
=            APPLICATIONS ARE TRIGGERED (aka: CHLOROPHYLL METER)  [0...1]
=    10      PLANT LUXURIOUS NITROGEN UPTAKE EFFICIENCY FACTOR [0...1]
=    11      SENSITIVITY INDEX TO WATER STRESS, WSI, IS USED AS (AT/PT)^WSI [0...1]
=
=    ..REPEAT FOR EACH PLANT; INDEPENDENT OF PLANT MODEL USED.
========================================================================
1.5  0.0  10.0  71114.0  1.0  1.0  1.5  100.0  1.0  0.0  0.0  
1.5  0.0  10.0  71114.0  1.0  1.0  1.5  100.0  1.0  0.0  0.0  
1.5  0.0  10.0  71114.0  1.0  1.0  1.5  100.0  1.0  0.0  0.0  
0.4  0.1  0.7  494000.0  0.9  0.85  1.0  100.0  1.0  0.0  0.0  
0.4  0.1  0.7  494000.0  0.9  0.85  1.0  100.0  1.0  0.0  0.0  
0.4  0.1  0.7  494000.0  0.9  0.85  1.0  100.0  1.0  0.0  0.0  
========================================================================
==                                                                    ==
==                                                                    ==
==                      N U T R I E N T                               ==
==                                                                    ==
==                                                                    ==
========================================================================
=     OM TRANSFORMATION DISTRIBUTION CONSTANTS
=
=   These are intra-om pool transformation coeficients (ala Parton).
=   Rij: decimal fraction of pool i decay that is transformed to pool j.
=
=   R14  R23  R34  R43  R45  R53
========================================================================
0.3  0.6  0.6  0.0  0.7  0.0  
========================================================================
=     MISC CONSTANTS
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      Oxygen limitation.
=     2      bm efficiency in converting decayed om uptake to assimilated
=            bm (remainder goes off as respiration CO2.
=     3      Autotroph efficiency in converting "nitrified" NH4 to
=            auto bm-N (remainder goes off as NO3).
=     4      Efficiency factor for denitrification (fraction EFFDEN taken
=            up by denitrifiers; remainder (1 - EFFDEN) goes off as N2,N2O).
=     5      Dimensionless efficiency factor:
=            denit rate ==> anaerobic om decay rate.
=     6,7,8  3-long vector of bm population unit conversion factors:
=            *RPOP(I): [ug-C/g-soil] ==> [# orgs/g-soil]
=
========================================================================
0.05  0.5  0.01  0.1  0.1  950.0  9500.0  9500.0  
========================================================================
=     REACTION RATE CONSTANT "A" VALUES
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      Coefficient for Arrhenius om decay equation, for om
=            pools                                             [sec/day]
=     2      Coeff for Arrhenius equation for nitrification     [sec/day]
=     3      Coeff for Arrhenius equation for denitrification   [sec/day]
=     4      Coeff for Arrhenius equ for hydrolysis of urea     [sec/day]
=
========================================================================
8.187E-009  1.000E-009  3.000E-013  0.00025  
========================================================================
=     INDIVIDUAL OM DECAY "A" VALUES
=
=   5-long vector of coefficients for Arrhenius om decay equations,
=   for om  pools                                              [sec/day]
=
========================================================================
1.673E-007  8.140E-006  2.500E-007  5.000E-008  4.500E-010  
========================================================================
=     DEATH EQUATION "A" VALUES
=
=   3-long vector of coefficients for bm death equations        [sec/day]
=
========================================================================
5.000E-036  4.770E-040  3.400E-033  
========================================================================
=     KP VALUES
=
=   Coefficient for calculation of activation energy.
=
========================================================================
88.6  61.0  63.1  
========================================================================
=     C:N RATIOS
=
=   9-long vector of OM and BM C:N ratios (in same order as in
=   C vector).
=
========================================================================
8.0  80.0  8.0  10.0  11.0  0.0  8.0  8.0  8.0  
========================================================================
==                                                                    ==
==                      PLANT  MANAGEMENT                             ==
==                   VARIABLES AND PARAMETERS                         ==
==                                                                    ==
========================================================================
=          planting control and harvest parameters
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=    1       number of plantings                                 [1..40]
=    2.1     plant reference number (corr. to plant number above)
=    2.2     date of planting                               [dd/mm/yyyy]
=    2.3     row spacing for planting operation                     [cm]
=    2.4     planting depth (layer index number)                 [1..nn]
=    2.5     planting density                                [#seeds/ha]
=    2.6     Method of planting- seeds (default)/transplant/pre-Germinated [s=0/t=1/pre=2]
=    2.7     initial plant material at transplanting (default -99.)        [kg/ha]
=    2.8     emergence (applies to seeds method only default -99)          [#days after planting]
=    2.9     sprout length at transplanting (only needed for potato otherwise -99.)[cm]
=    2.10    plant age at transplanting (default -99) [#days]
=
=     These are parameters which direct the harvesting of the crop.
= ITEM NO.   DESCRIPTION     RECORD 1
= --------   -----------
=    1       when to harvest specification                        [1..3]
=            1:  when growth stage is beyond a point
=            2:  when % of growth class is beyond certain percentage
=            3:  on a specified date (specified in items 5-7)
=    2       growth stage used in option 1                        [0..1]
=    3       growth class to use in option 2                      [1..7]
=    4       threshold percentage used in option 2                [0..1]
=    5-7     date for harvest in option 3                   [dd/mm/yyyy]
= ITEM NO.   DESCRIPTION     RECORD 2
= --------   -----------
=    1       stubble height left after harvesting                   [cm]
=    2       harvesting efficiency (frac of what is cut that is   [0..1]
=                actually taken away from site)  (ex. 0.97)
=    3       type of harvest performed                            [1..5]
=            (multiple harvest choices removed from Plant Harvest Type)
=            3:  single harvest; yield seeds only (default)
=            4:  single harvest; yield all above ground biomass
=            5:  single harvest; yield roots only
========================================================================
26
3  17   5  1978  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1978 
               15.0  0.97   3
3  25   5  1979  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1979 
               15.0  0.97   3
3  7   5  1980  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  9 10 1980 
               15.0  0.97   3
3  15   5  1981  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1981 
               15.0  0.97   3
3  1   6  1982  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1982 
               15.0  0.97   3
3  10   5  1983  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1983 
               15.0  0.97   3
3  10   5  1984  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  9 10 1984 
               15.0  0.97   3
3  3   5  1985  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1985 
               15.0  0.97   3
3  7   5  1986  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1986 
               15.0  0.97   3
3  4   5  1987  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1987 
               15.0  0.97   3
3  2   5  1988  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  9 10 1988 
               15.0  0.97   3
3  2   5  1989  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1989 
               15.0  0.97   3
3  2   5  1990  75.0   4 71494.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  2 10 1990 
               15.0  0.97   3
3  28   5  1991  75.0   4 66690.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1991 
               15.0  0.97   3
3  5   5  1992  75.0   4 66690.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  16 10 1992 
               15.0  0.97   3
3  18   5  1993  75.0   4 66690.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  25 10 1993 
               15.0  0.97   3
3  2   5  1994  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  28 9 1994 
               15.0  0.97   3
3  16   5  1995  75.0   4 71383.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  22 9 1995 
               15.0  0.97   3
3  21   5  1996  75.0   4 68710.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  21 10 1996 
               15.0  0.97   3
3  12   5  1997  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  10 10 1997 
               15.0  0.97   3
3  5   5  1998  75.0   4 71114.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  22 9 1998 
               15.0  0.97   3
2  10   5  1999  75.0   4 76822.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  7 10 1999 
               15.0  0.97   3
2  27   4  2000  75.0   4 79709.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  22 9 2000 
               15.0  0.97   3
5  19   5  2001  20.0   4 494000.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  5 10 2001 
               2.0  0.97   3
1  7   5  2002  75.0   4 80194.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  30 9 2002 
               15.0  0.97   3
6  20   5  2003  20.0   4 494000.0   0 -99.0   -99 -99.0   -99 
               3 0.0   0 0.0  25 9 2003 
               2.0  0.97   3
========================================================================
==                                                                    ==
==               M A N U R E   M A N A G E M E N T                    ==
==                    VARIABLES AND PARAMETERS                        ==
==                                                                    ==
========================================================================
=     Application control parameters
=
= REC  NO.   DESCRIPTION
= --------   -----------
=     1      number of manure applications                       [0..40]
=     2.1    plant reference number that application is used for  [1..5]
=     2.2    when to apply manure:                                [1..5]
=                1: preplant,  # of days before planting
=                2: preemergence,  planting to emergence
=                3: postemergence,  emerged to maturity
=                4: layby,  harvest to death
=                5: specified date, enter date as offset date
=     2.3    date offset for application time        [day -or- dd mm yy]
=     2.4    how to apply manure:                                 [1..4]
=                1: broadcast - leave on surface
=                2: broadcast - incorporate down with tillage imp.
=                3: injected
=                4: irrigation water
=     2.5    manure identification number                        [1..15]
=               1) beef w/ bedding      2) beef w/o bedding
=               3) dairy w/ bedding     4) dairy w/o bedding
=               5) swine w/ bedding     6) swine w/o bedding
=               7) poultry w/ litter    8) poultry w/o litter
=               9) turkey w/ litter     10) turkey w/o litter
=               11) sheep w/ bedding    12) sheep w/o bedding
=               13) horse w/ bedding    14) horse w/o bedding
=               15) bedding, litter, or food processor waste
=     2.6    amount of NH4-N applied                             [Kg/ha]
=     2.7    amount of ORGANIC WASTE applied                     [Kg/ha]
=     2.8    amount of BEDDING, LITTER, OR FOOD PROCESSOR WASTE  [Kg/ha]
=     2.9    C:N ratio of BEDDING, LITTER, OR FOOD PROCESSOR WASTE
=     2.10   C:N ratio of ORGANIC WASTE (MANURE) 
=     2.11   fraction of carbon in the manure material
=
=     3...   repeat record 2 for each application.
========================================================================
11
3  5  29  10  1992  3  6  4.83  1919.0  0.0  1.0  15.0  1.0  
3  5  17  11  1993  3  6  59.12  6339.0  0.0  1.0  15.0  1.0  
3  5  2  11  1994  3  6  262.38  434.0  0.0  1.0  15.0  1.0  
3  5  20  11  1995  3  6  79.12  158.0  0.0  1.0  15.0  1.0  
3  5  25  4  1997  3  6  94.55  323.0  0.0  1.0  15.0  1.0  
3  5  31  10  1997  3  6  145.37  956.0  0.0  1.0  15.0  1.0  
3  5  19  11  1998  3  6  133.41  123.0  0.0  1.0  15.0  1.0  
2  5  4  11  1999  3  6  144.93  1181.0  0.0  1.0  15.0  1.0  
2  5  1  11  2000  3  6  198.78  393.0  0.0  1.0  15.0  1.0  
5  5  7  11  2001  3  6  159.84  1178.0  0.0  1.0  15.0  1.0  
1  5  6  11  2002  3  6  142.76  662.0  0.0  1.0  15.0  1.0  
========================================================================
==                                                                    ==
==            F E R T I L I Z E R   M A N A G E M E N T               ==
==                    VARIABLES AND PARAMETERS                        ==
==                                                                    ==
========================================================================
=     Application control parameters
=
= REC  NO.   DESCRIPTION
= --------   -----------
=     1      number of fertilizer applications                   [0..40]
=     2.1    plant reference number that application is used for  [1..5]
=     2.2    when to apply fertilizer:                            [1..7]
=                1: preplant,  # of days before planting
=                2: preemergence,  AFTER planting
=                3: postemergence,  POST emergence to maturity
=                4: layby,  POST harvest
=                5: specified date, date is value in (offset date)
=                6: preplant, split applications
=                7: preplant, split with chlorophyll meter trigger
=     2.3    date offset for application time        [day -or- dd mm yy]
=     2.4    how to apply fertilizer:                             [1..6]
=                1: broadcast - leave on surface
=                2: broadcast - incorporate down with tillage imp.
=                3: injected with NH3 applicator
=                4: injected with NH3 applicator with N-SERVE
=                5: irrigation water
=                6: Use Best Management Practice (BMP) options
=     2.5    amount of NO3 applied                               [Kg/ha]
=     2.6    amount of NH4 applied                               [Kg/ha]
=     2.7    amount of UREA applied                              [Kg/ha]
=     2.8    BMP chemical application options                     [1..6]
=                1: BMP rec'd fertilizer is applied as NO3-N
=                2: BMP rec'd fertilizer is applied as NH4-N
=                3: BMP rec'd fertilizer is applied as NH4NO3-N
=                4: BMP rec'd fertilizer is applied as NH3-N
=                5: BMP rec'd fertilizer is applied as NH3-N with N-serve
=                6: BMP rec'd fertilizer is applied as UAN-N
=     2.9    BMP application options                              [1..4]
=                1: broadcast - leave on surface
=                2: broadcast - incorporate down with tillage imp.
=                3: injected with NH3 applicator
=                4: irrigation water
=     2.10   minimum number of days between split applications
=     2.11   fraction of initial fert application that is applied
=            as starter                                           [0..1]
=     2.12   maximum amount of N to apply each split application [kg/ha]
=
=     ...   repeat record 2 for each application.
========================================================================
16
3  5  1  5  1978  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1979  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1980  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1981  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1982  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1983  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1984  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1985  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1986  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1987  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1988  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  1  5  1989  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  18  4  1990  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  14  5  1991  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
3  5  2  5  1992  3  0.0  202.0  0.0  1  1  0  0.0  0.0  
2  5  15  6  1999  3  15.75  15.75  31.5  1  1  0  0.0  0.0  
========================================================================
==                                                                    ==
==                   B M P   M A N A G E M E N T                      ==
==                  (BEST MANAGEMENT PRACTICES)                       ==
==                   VARIABLES AND PARAMETERS                         ==
==                                                                    ==
========================================================================
=            Fertilizer recommendation algorithm parameters
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=     1      State code - signifies which state algorithm to use
=             1: Missouri               (2), (3), (6)
=             2: Nebraska               (2), (3)  (4), (5), (6)
=             3: Iowa (fall)            (2), (6), (7), (8), (9)
=             4: Iowa (late spring)     (2), (4), (6)
=             5: Colorado               (2), (3), (4), (5), (6)
=     2      Yield goal                                           [bu/ac]
=     3      Organic matter adjustment factor
=     4      Depth at which NO3-N soil tests are taken               [cm]
=     5      Signifies if last year there was a soybean crop [1=yes,0=no]
=     6      Misc. credits not included in current algorithm    [lb-N/ac]
=     7      Soybean crop yield from previous year                [lb/ac]
=     8      Manure N credit                                    [lb-N/ac]
=     9      Mapping unit conversion factor                     [lb-N/bu]
=     10     Amt of water used to apply default irrigation event     [cm]
=     11     Depth of anhydrous injector used for fertlizer app      [cm]
=
========================================================================
3  150.0  2.0  36.0  0  10.0  0.0  1.0  1.22  1.0  10.0  
========================================================================
==                                                                    ==
==            P E S T I C I D E   M A N A G E M E N T                 ==
==                    VARIABLES AND PARAMETERS                        ==
==                                                                    ==
========================================================================
=     Application control parameters
=
= REC  NO.   DESCRIPTION
= --------   -----------
=     1      number of pesticide applications                    [0..40]
=     2.1    plant reference number that application is used for  [1..5]
=     2.2    pesticide to apply (corresponds to pesticide number above)
=     2.3    when to apply pesticide:                             [1..5]
=                1: preplant,  # of days before planting
=                2: preemergence,  planting to emergence
=                3: postemergence,  emerged to maturity
=                4: layby,  harvest to death
=                5: specified date, date is value in (offset date)
=     2.4    date offset for application time        [day -or- dd mm yy]
=     2.5    how to apply pesticide:                              [1..8]
=                1: broadcast - leave on surface
=                2: broadcast - incorporate down with tillage imp.
=                3: folliar application - on plants and residue
=                4: irrigation water
=                5: microencapsulated(slow release) - leave on surface
=                6: microencapsulated - incorporate down with tillage imp.
=                7: soil surface - not on residue or plants
=                8: fumigation - injected into the plow layer
=     2.6    amount of pesticide applied (Active ingredient only)[Kg/ha]
=     2.7    percentage daily release for slow release pesticide  [0..1]
=
=     ...   repeat record 2 for each pesticide application.
========================================================================
28
1  2  5  10  5  1998  1  2.8  0.0  
1  2  5  29  5  1999  1  1.1  0.0  
1  1  5  29  5  1999  1  1.1  0.0  
1  1  5  10  5  1998  1  0.6  0.0  
1  1  5  16  5  1997  1  0.6  0.0  
1  2  5  16  5  1997  1  2.8  0.0  
1  2  5  23  5  1996  1  2.8  0.0  
1  1  5  23  5  1996  1  0.5  0.0  
2  1  5  2  5  1986  1  2.8  0.0  
2  3  5  2  5  1986  1  2.2  0.0  
3  3  5  2  5  1988  1  2.2  0.0  
3  3  5  28  5  1991  1  2.2  0.0  
3  1  5  6  5  1992  1  2.8  0.0  
3  3  5  6  5  1992  1  2.2  0.0  
3  2  5  17  5  1993  1  2.8  0.0  
3  1  5  17  5  1993  1  0.5  0.0  
3  1  5  2  5  1994  1  0.5  0.0  
3  2  5  2  5  1994  1  2.8  0.0  
3  1  5  16  5  1995  1  0.5  0.0  
3  2  5  16  5  1995  1  2.8  0.0  
3  1  5  28  5  1991  1  2.8  0.0  
3  1  5  2  5  1990  1  2.8  0.0  
3  3  5  2  5  1990  1  2.2  0.0  
3  1  5  2  5  1989  1  2.8  0.0  
3  3  5  2  5  1989  1  2.2  0.0  
3  1  5  2  5  1988  1  2.8  0.0  
3  1  5  2  5  1987  1  2.8  0.0  
3  3  5  2  5  1987  1  2.2  0.0  
========================================================================
==                                                                    ==
==            T I L L A G E   M A N A G E M E N T                     ==
==                    VARIABLES AND PARAMETERS                        ==
==                                                                    ==
========================================================================
=     Application control parameters
=
= REC  NO.   DESCRIPTION
= --------   -----------
=     1      number of tillage operations                        [1..10]
=     2.1    plant reference number that application is used for  [1..5]
=     2.2    when to perform tillage operation:                   [1..5]
=               1: preplant,  # of days before planting
=               2: preemergence,  planting to emergence
=               3: postemergence,  emerged to maturity
=               4: layby,  harvest to death
=               5: specified date, date is value in (offset date)
=     2.3    date offset for application time        [day -or- dd mm yy]
=     2.4    tillage impliment to use:                           [1..29]
=               1:moldboard plow        2:chisel plow-straight
=               3:chisel plow-twisted   4:field cultivator
=               5:tandem disk           6:offset disk
=               7:one-way disk          8:paraplow
=               9:spike tooth harrow    10:spring tooth harrow
=               11:rotary hoe           12:bedder ridge
=               13:v-blade sweep        14:subsoiler
=               15:rototiller           16:roller package
=               17:row planter w/ smooth coulter
=               18:row planter w/ fluted coulter
=               19:row planter w/ sweeps
=               20:lister planter       21:drill
=               22:drill w/chain drag   23:row cultivator w/sweeps
=               24:row cultivator w/spider wheels
=               25:rod weeder           26:rolling cultivator
=               27:nh3 applicator       28:ridge-till cultivator
=               29:ridge-till planter
=     2.5    impliment average effective depth                      [cm]
=     2.6    till intensity enter either index or intensity
=               - index [(1) corn or (2) soybean] OR            [1 or 2]
=               - value of intensity [0-min..1-max]               [0..1]
=     2.7    tillage operation performed                          [1..3]
=               1: primary tillage operation (major tillage)
=               2: secondary tillage operation (minor tillage)
=               3: tertiary tillage operation (compaction)
=
=     3...   repeat record 2 for each tillage operation
========================================================================
0
========================================================================
==                                                                    ==
==            T I L E H E A D G A T E      M A N A G E M E N T        ==
==                                                                    ==
========================================================================
=     Application control parameters									  
=																		  
= REC  NO.   DESCRIPTION												  
= --------   -----------												  
=     1      number of applications									  
=     2.1    date for tile head gate height adjustment      [dd mm yyyy]
=     2.2    head gate height                                       [cm]
=																		  
=     3...   repeat record 2 for each application.					  
========================================================================
0
========================================================================
==                                                                    ==
==            I R R I G A T I O N   M A N A G E M E N T               ==
==                 MODEL VARIABLES AND PARAMETERS                     ==
==                                                                    ==
========================================================================
=     Irrigation control parameters
=
= ITEM NO.   DESCRIPTION
= --------   -----------
=   1.1      number of irrigation operations
=   1.2      depth of the rooting zone for depletion calculation, 
=            (DEFAULT = 0 use active rooting zone) [0...3000 cm] 
=   2.1      plant reference number
=   2.2      type of irrigation [1=sprinkler, 2=flood, 3=furrow, 4=drip]
=   2.3      timing choice for irrigation practice                [1..3]
=   2.4      methodology choice for irrigation practice           [1..3]
=   2.5-7    earliest date for irrigation                   [dd mm yyyy]
=   2.8-10   latest date for irrigation (D/M/Y)             [dd mm yyyy]
=   2.11     minimum number of days between irrigations            [day]
=            note (if item 2.3 equals 1 or 2, set to zero)
=   2.12     maximum depth of irrigation to be applied during the
=              season (if = 0.0, water assumed unlimited)           [cm]
=   2.13     rate at which sprinkler irrigation is applied       [cm/hr]
=   3        timing of irrigation practice
=              see the user manual for details about this line
=   4        methodology of irrigation practice
=              see the user manual for details about this data
=   . . .  repeat Rec 2-4 for each operation
========================================================================
0  0
