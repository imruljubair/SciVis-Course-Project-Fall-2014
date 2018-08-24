function [X,Y,Z] = readClonClat()

lon = ncread('icon_ocean.nc','clon');
lat = ncread('icon_ocean.nc','clat');
 R = 10;
[X,Y,Z] = convertXYZ(lat, lon, R);

% save clon_clat coordinates;
end