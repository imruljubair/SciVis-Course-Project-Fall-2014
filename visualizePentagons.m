function visualizePentagons()
   clc;
   
    [X, Y, Z] = readClonClatVertices();
    pentagons = importdata('icosahedron/indexOfThePentagonTriangle.mat');
    
    for i = 1:size(pentagons,2)
        
        patch(X(:,pentagons(:,i)), Y(:,pentagons(:,i)), Z(:,pentagons(:,i)), [0.5 0.8 0.3]);
        hold on;
        
    end
   
    
end