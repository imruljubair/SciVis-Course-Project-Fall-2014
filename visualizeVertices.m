function visualizeVertices()
clc;
 cla;
     [X, Y, Z] = readClonClatVertices();
    pentagons = importdata('icosahedron/indexOfThePentagonTriangle.mat');
    
    for i = 1:size(pentagons,2)
        
        patch(X(:,pentagons(:,i)), Y(:,pentagons(:,i)), Z(:,pentagons(:,i)), 'EdgeAlpha',0);
        hold on;
        
    end
    
hp = findobj(gcf,'type','patch');
set(hp,'facealpha',0.0)   
hold on;

  [X, Y, Z] = readVlonVlat();
  
  for v = 1:10

      vertices = importdata(['verticesIndex/verticesIndexOfDiamond',num2str(v),'.mat']);
                 
            m = 1:length(vertices);
                    plot3(X(vertices(m)), Y(vertices(m)), Z(vertices(m)), '.');
                    hold on;
      
  end
hold off;
end


