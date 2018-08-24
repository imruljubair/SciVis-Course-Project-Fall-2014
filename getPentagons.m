function [pentagonsIcosahedronX, pentagonsIcosahedronY, pentagonsIcosahedronZ] = getPentagons(ind)

    [X, Y, Z] = readClonClatVertices;
    
   
      m = 0;
     pentagonsIcosahedronX = {};
     pentagonsIcosahedronY = {};
     pentagonsIcosahedronZ = {};

     for i = 1:size(ind,2)
         
         m = m+1;
             pentagonsIcosahedronX{m} = X(:,(ind(:,i)));
             pentagonsIcosahedronY{m} = Y(:,(ind(:,i)));
             pentagonsIcosahedronZ{m} = Z(:,(ind(:,i)));
       
     end
     
end