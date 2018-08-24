function [Cvector, Rvector, diagVector] = getVectors(indexOfThePentagonTriangle)

disp(' - Initializing the starting vectors.......');
    [pentagonsIcosahedronX, pentagonsIcosahedronY, pentagonsIcosahedronZ] = getPentagons(indexOfThePentagonTriangle);
    n = 3;
    Cvector = [pentagonsIcosahedronX{n}(1,1); 
               pentagonsIcosahedronY{n}(1,1);
               pentagonsIcosahedronZ{n}(1,1)];
           
    Rvector = [pentagonsIcosahedronX{n}(3,3);
               pentagonsIcosahedronY{n}(3,3);
               pentagonsIcosahedronZ{n}(3,3)];
           
    diagVector = [pentagonsIcosahedronX{n}(3,1);
               pentagonsIcosahedronY{n}(3,1);
               pentagonsIcosahedronZ{n}(3,1)];
    
end