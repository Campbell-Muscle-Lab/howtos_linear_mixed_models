/* SAS template for a 1 way analysis with a grouping variable */

proc import out = work.all_data
	datafile = "C:\ken\GitHub\CampbellMuscleLab\howtos\howtos_linear_mixed_models\docs\pages\MATLAB\one_way_model\data\one_way_data.xlsx"
	dbms = xlsx replace;
	sheet = "Sheet1";
	getnames=yes;
run;

ods html file="C:\ken\GitHub\CampbellMuscleLab\howtos\howtos_linear_mixed_models\docs\pages\MATLAB\one_way_model\sas_results\sas_results.html";
ods listing close;

/*data work.all_data; */
/*	modify work.all_data;*/
/*	if y = 'NaN' then y = . ;*/
/*run;*/

proc print data=all_data;
	title1 'All data';
run;

proc glimmix data=all_data;
	class factor_1 grouping;
	model y = factor_1 /ddfm=satterthwaite;
	random grouping;
	lsmeans factor_1 /slice = factor_1 pdiff adjust=tukey;
run;

ods listing;
ods html close;

