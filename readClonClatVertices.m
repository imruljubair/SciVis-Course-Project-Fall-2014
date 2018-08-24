function [X, Y, Z] = readClonClatVertices()

lon = ncread('icon_ocean.nc','clon_vertices');
lat = ncread('icon_ocean.nc','clat_vertices');
R = 10;
[X, Y, Z] = convertXYZ(lat, lon, R);

% save clonVertices_clatVertices coordinates;
end