function [X, Y, Z] = readVlonVlatVertices()

lat = ncread('icon_ocean.nc','vlat_vertices');
lon = ncread('icon_ocean.nc','vlon_vertices');
R = 10;
[X, Y, Z] = convertXYZ(lat, lon, R);

end