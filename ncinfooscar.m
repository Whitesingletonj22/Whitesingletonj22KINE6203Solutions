% Provide the path to your .nc file
ncfile = '/Users/jr/Downloads/oscar_vel2023.nc';

% Open the NetCDF file in read-only mode
ncid = netcdf.open(ncfile, 'NOWRITE');

% Get a list of variable names in the NetCDF file
[ndims, nvars, natts] = netcdf.inq(ncid);
varnames = cell(1, nvars);

for i = 1:nvars
    [varnames{i}, xtype, dimids, natts] = netcdf.inqVar(ncid, i-1);
end

disp('Variable names:');
disp(varnames);

latData = ncread(ncfile, 'latitude');