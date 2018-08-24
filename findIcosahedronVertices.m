function [icosaVertices, indexOfThePentagonTriangle]  = findIcosahedronVertices()
disp(' - finding the vertices of icosahedron....');
[X, ~, ~] = readVlonVlatVertices();

[vX, vY, vZ] = readVlonVlat();

[cX, cY, cZ] = readClonClatVertices();

[~, col] = size(X);

pentagonsCoordinatesX = [];
pentagonsCoordinatesY = [];
pentagonsCoordinatesZ = [];

icosaVerticesX = [];
icosaVerticesY = [];
icosaVerticesZ = [];


icosaVertices = {};
indexOfThePentagonTriangle = [];
    for i = 1:col

        if X(end,i) == X(end-1,i) 

                icosaVerticesX = [icosaVerticesX; vX(i)];
                icosaVerticesY = [icosaVerticesY; vY(i)];
                icosaVerticesZ = [icosaVerticesZ; vZ(i)];
              
                temp= [];
                for j = 1: size(cX,2)
                   
                   if sum(cX(:,j)== vX(i))==1
                       
                        pentagonsCoordinatesX = [pentagonsCoordinatesX, cX(:,j)];
                        pentagonsCoordinatesY = [pentagonsCoordinatesY, cY(:,j)];
                        pentagonsCoordinatesZ = [pentagonsCoordinatesZ, cZ(:,j)];
                        temp = [temp; j];
                       
                      
                   end
                   
                     
                   
                end
                
                indexOfThePentagonTriangle = [ indexOfThePentagonTriangle , temp];
                
        end

    end
 
    
    icosaVertices = {icosaVerticesX; icosaVerticesY; icosaVerticesZ};
    
    
end
