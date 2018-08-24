function visualizeVerticesLevel(level)

clc;
  
 res = 2^level;
%      [X, Y, Z] = readClonClatVertices();
%     pentagons = importdata('icosahedron/indexOfThePentagonTriangle.mat');
%     
%     for i = 1:size(pentagons,2)
%         
%         patch(X(:,pentagons(:,i)), Y(:,pentagons(:,i)), Z(:,pentagons(:,i)), 'EdgeAlpha',0);
%         hold on;
%         
%     end
%     
% hp = findobj(gcf,'type','patch');
% set(hp,'facealpha',0.0)   
% hold on;


  diamonds = importdata('icosahedron/Diamonds.mat');
    for i = 1:length(diamonds)
        D = diamonds{i};
        patch(D(1,:), D(2,:), D(3,:), 0.5*i,'EdgeAlpha',0);
        hold on;
    end
    
%     hp = findobj(gcf,'type','patch');
%     set(hp,'facealpha',0.2)   
    hold on; 

  for v = 1:10

      vertices = importdata(['vertices/verticesOfDiamond',num2str(v),'.mat']);
                 
           for m = 1:res:size(vertices,1)
               for n = 1:res:size(vertices,2)

                    plot3(vertices{m,n}(1),vertices{m,n}(2),vertices{m,n}(3),'.k');
                    hold on;

               end
           end
           
  end
  


end


