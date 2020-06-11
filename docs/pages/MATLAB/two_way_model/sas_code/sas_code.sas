/* SAS template for a 2 way analysis with a grouping variable */

proc import out = work.all_data
	datafile = "C:\ken\GitHub\CampbellMuscleLab\howtos\howtos_linear_mixed_models\docs\pages\MATLAB\two_way_model\temp.xlsx"
	dbms = xlsx replace;
	sheet = "Sheet1";
	getnames=yes;
run;

ods html file="C:\ken\GitHub\CampbellMuscleLab\howtos\howtos_linear_mixed_models\docs\pages\MATLAB\two_way_model\sas_results\sas_results.html";
ods listing close;

proc print data=all_data;
	title1 'All data';
run;

proc glimmix data=all_data;
	class factor_1 factor_2 tag;
	model pCa50 = factor_1 factor_2 factor_1*factor_2 /ddfm=satterthwaite;
	random tag;
	lsmeans factor_1 factor_2 factor_1*factor_2 /slice = factor_1 slice = factor_2 slicediff=(factor_1 factor_2) pdiff adjust=tukey;
run;

ods listing;
ods html close;

