function [X, Y, Z] = readVlonVlat()

lat = ncread('icon_ocean.nc','vlat');
lon = ncread('icon_ocean.nc','vlon');
R = 10;
[X, Y, Z] = convertXYZ(lat, lon, R);


end