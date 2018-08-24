function finalarray = generateVertices(origin , Cvector, Rvector, diagVector)

  
    array = subDivision(origin, Cvector, Rvector, diagVector);


    finalarray = fillArray(array);

end