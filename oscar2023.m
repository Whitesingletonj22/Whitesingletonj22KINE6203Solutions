% Get information about the NetCDF file
fileInfo = ncinfo('/Users/jr/Downloads/oscar_vel2023.nc');

% Read a specific variable from the file
variableData = ncread('/Users/jr/Downloads/oscar_vel2023.nc', 'VariableName');


fileInfo = ncinfo('/Users/jr/Downloads/oscar_vel2023.nc');
disp(fileInfo);