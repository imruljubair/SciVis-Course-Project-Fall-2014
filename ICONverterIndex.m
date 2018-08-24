function ICONverterIndex()
h = waitbar(0,'Configuring visICON. Please wait...');
clc;
disp('Finding cell index from ICON grid:');
bar = 0;
for i = 1:10
        
        vertices = importdata(['vertices/verticesOfDiamond',num2str(i),'.mat']);
        
        
        disp([' - vertices are being identified from ICON grid for diamond ', num2str(i)]);
        indexOfVertices = getVerticesIndex(vertices);
        save(['verticesIndex/verticesIndexOfDiamond',num2str(i),'.mat'],'indexOfVertices');
        bar = bar + 1;
        waitbar(bar/20)
        
        disp([' - triangular cells are being identified from ICON grid for diamond ', num2str(i)]);
        arrayOfIndex = getTriangle(vertices);
        save(['cells/triangleCellsOfDiamond',num2str(i),'.mat'],'arrayOfIndex');
        bar = bar + 1;
        waitbar(bar/20)
        
        
end
close(h);
end