function visualizeAnimate(choiceOfGeometric, choiceOfDiamonds)
    clc;
    cla;
 
    diamonds = importdata('icosahedron/Diamonds.mat');
if choiceOfDiamonds~=0
    %%%%%%%%%%% if not for ALL %%%%%%%%%%%%%%%
        D = diamonds{choiceOfDiamonds};
        patch(D(1,:), D(2,:), D(3,:), [0.6 0.7 0.3]);
        hold on;
   
    if strcmp(choiceOfGeometric,'triangles')==1
         [X, Y, Z] = readClonClatVertices();
        theCellIndex = importdata(['cells/triangleCellsOfDiamond',num2str(choiceOfDiamonds),'.mat']);
        for m = 1:length(theCellIndex)
           patch(X(:,theCellIndex(m)), Y(:,theCellIndex(m)), Z(:,theCellIndex(m)), [0.4 0.5 0.7]); 
           hold on;
           pause(0.01);
        end         
    end
   
  
   if strcmp(choiceOfGeometric,'vertices')==1
        [X, Y, Z] = readVlonVlat();
        vertices = importdata(['verticesIndex/verticesIndexOfDiamond',num2str(choiceOfDiamonds),'.mat']);
        for m = 1:length(vertices)
 
                    plot3(X(vertices(m)), Y(vertices(m)), Z(vertices(m)), '.k');
                    hold on;
                    pause(0.01);
        end         
   end
   
else
     %%%%%%%%%%% if for ALL %%%%%%%%%%%%%%%
    visualizeIcosa();
    hold on;
     [X, Y, Z] = readVlonVlat();

     if strcmp(choiceOfGeometric,'vertices')==1
         for v = 1:10
              vertices = importdata(['verticesIndex/verticesIndexOfDiamond',num2str(v),'.mat']);
                    for m = 1:length(vertices)
                            plot3(X(vertices(m)), Y(vertices(m)), Z(vertices(m)), '.k');
                            pause(0.01);
                            hold on;
                    end
         end
     end
     
     if strcmp(choiceOfGeometric,'triangles')==1
           [X, Y, Z] = readClonClatVertices();
                for d = 1:10
                  theCellIndex = importdata(['cells/triangleCellsOfDiamond',num2str(d),'.mat']);
                       for  m = 1:length(theCellIndex)
                            patch(X(:,theCellIndex(m)), Y(:,theCellIndex(m)), Z(:,theCellIndex(m)), [0.8/d 0.7 0.4]); 
                            pause(0.01);
                            hold on;
                       end 
                end
     end
    
end
hold off;

end