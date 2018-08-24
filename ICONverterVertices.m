function ICONverterVertices()
h = waitbar(0,'ICONverter on progress. Please wait...');

clc;
disp('Conversion starts...')
[icosaVertices, indexOfThePentagonTriangle]  = findIcosahedronVertices();

Diamond = getDiamonds(icosaVertices);
 
save('icosahedron/VerticesOfIcosahedron.mat','icosaVertices');
save('icosahedron/indexOfThePentagonTriangle.mat','indexOfThePentagonTriangle');
save('icosahedron/Diamonds.mat','Diamond');

%%%%%%%%%%% first diamond %%%%%%%%
disp('On process: diamond 1')
Diamond1 = Diamond{1};

[Cvector, Rvector, diagVector] = getVectors(indexOfThePentagonTriangle);
origin = Diamond1(:,1);
arrayOfDiamond1 = generateVertices(origin, Cvector, Rvector, diagVector);
 waitbar(1/10)

save(['vertices/verticesOfDiamond',num2str(1),'.mat'],'arrayOfDiamond1');
disp([' - vertices stored as verticesOfDiamond', num2str(1),'.mat']);

%%%%%%%%%%% rest of diamond %%%%%%%%

numberOfDiamonds = 1;
theArray = arrayOfDiamond1;

 for n = 1:5
    
        numberOfDiamonds = numberOfDiamonds + 1;
        disp(['On process: diamond ',num2str(numberOfDiamonds)]);
        arrayOfDiamond = generateVerticesRest(theArray);
        
        waitbar(numberOfDiamonds/10)
        save(['vertices/verticesOfDiamond',num2str(numberOfDiamonds),'.mat'],'arrayOfDiamond');
        disp([' - vertices stored as verticesOfDiamond', num2str(numberOfDiamonds),'.mat']);
        theArray = arrayOfDiamond;
        
    if n < 5
        
        numberOfDiamonds = numberOfDiamonds + 1;
        disp(['On process: diamond ',num2str(numberOfDiamonds)]);
        arrayOfDiamond = generateVerticesRestNext(theArray);
        
        waitbar(numberOfDiamonds/10)
        save(['vertices/verticesOfDiamond',num2str(numberOfDiamonds),'.mat'],'arrayOfDiamond');
        disp([' - vertices stored as verticesOfDiamond', num2str(numberOfDiamonds),'.mat']);
         
        theArray = arrayOfDiamond;
    end
 end
disp('Conversion done')
close(h);
end
