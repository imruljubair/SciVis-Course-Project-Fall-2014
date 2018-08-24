function array = subDivision(origin, Cvector, Rvector, diagVector)

     [X, Y, Z] = readClonClatVertices;

    array = {};
 
    array{1,1} = origin;
    array{1,2} = Cvector;

    disp(' - Initializing the columns.....');
    array{2,2} = diagVector;
    array = initializeArray(array,Cvector, diagVector, origin, X,Y,Z);
    
    
    disp(' - Initializing the rows.....');
    array{2,1} = Rvector;
    array = initializeArray(array',Rvector, diagVector, origin, X,Y,Z);
    
    
    array = array';
  
end