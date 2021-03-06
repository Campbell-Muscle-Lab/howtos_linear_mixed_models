function one_way_linear_mixed_model
% Code runs a one-way linear mixed model

data_file_string = 'data\one_way_data.xlsx';

one_way_jitter( ...
    data_file_string, ...
    'y', ...
    'factor_1', ...
    'excel_sheet', 'Sheet1', ...
    'grouping', 'grouping', ...
    'calling_path_string', cd)

print('one_way_jitter.png','-dpng')