function visualizeData()
clc;
cla;
  [X, Y, Z] = readClonClatVertices();
  

  for d = 1:10

      theCellIndex = importdata(['cells/triangleCellsOfDiamond',num2str(d),'.mat']);
      theData = importdata(['data/dataOneOfDiamond',num2str(d),'.mat']);
     
             m = 1:length(theCellIndex);
             
             
                     patch(X(:,theCellIndex(m)), Y(:,theCellIndex(m)), Z(:,theCellIndex(m)), theData(m)); 
                     hold on;
            

      
  end
hold off;
end
