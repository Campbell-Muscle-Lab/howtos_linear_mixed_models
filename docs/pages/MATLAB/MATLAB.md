---
title: MATLAB
nav_order: 2
---

[MATLAB](https://www.mathworks.com/products/matlab.html) is commercial software for scientific computing.

It has support for some statistical tests but it is not very easy to run linear mixed models using the base package.

This tutoral shows how to use MATLAB to run linear mixed models using SAS.

The basic approach is to use MATLAB to implement the following steps:

+ create an Excel file containing the experimental data and the appropriate factor and grouping variables
+ generate SAS code for the chosen analysis by replacing known tags in an analysis-specific template file
+ launch a system command from MATLAB that
  + starts SAS
  + runs the SAS code file
  + saves the SAS output as html
+ scrapes the statistical results from the html file
+ (optional) creates a figure showing the results

The MATLAB code uses the following repositories
+ [MATLAB_utilities](https://github.com/Campbell-Muscle-Lab/MATLAB_Utilities)
+ [MATLAB_SAS](https://github.com/Campbell-Muscle-Lab/MATLAB_SAS)

