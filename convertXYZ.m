function [X, Y, Z] =  convertXYZ(lat, lon, R)


X = R * cos(lat) .* cos(lon);
Y = R * cos(lat) .* sin(lon);
Z = R *sin(lat);


end