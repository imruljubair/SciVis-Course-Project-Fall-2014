function visualizeCells()
 clc;
 
  [X, Y, Z] = readClonClatVertices();
  

  for d = 1:10

      theCellIndex = importdata(['cells/triangleCellsOfDiamond',num2str(d),'.mat']);
     
      
            m = 1:length(theCellIndex);
                     patch(X(:,theCellIndex(m)), Y(:,theCellIndex(m)), Z(:,theCellIndex(m)), [0.8 0.7 0.4]); 
                     hold on;
        

      
  end

end


