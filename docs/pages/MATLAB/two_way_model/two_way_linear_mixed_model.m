function two_way_linear_mixed_model
% Code runs a one-way linear mixed model

data_file_string = 'data\two_way_data.xlsx';

two_way_jitter( ...
    data_file_string, ...
    'pCa50', ...
    'factor_1', ...
    'factor_2', ...
    'excel_sheet', 'Sheet1', ...
    'grouping', 'tag', ...
    'calling_path_string', cd, ...
    'y_from_zero',0)

print('two_way_jitter.png','-dpng')