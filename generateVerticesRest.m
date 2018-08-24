function arrayOfDiamond = generateVerticesRest(theArray)

    origin = theArray{end,1};
    Cvector = theArray{end,2};
    oppositeOfdiag = theArray{end-1,1};
    
    [diagVector, Rvector] = getVectorsForRest(origin, Cvector, oppositeOfdiag);
   
    arrayOfDiamond = generateVertices(origin, Cvector, Rvector, diagVector);
    
end

function [diagVector, Rvector] = getVectorsForRest(origin, Cvector, oppositeOfdiag)

[X, Y, Z] = readClonClatVertices();  
diagVector = [];
for i = 1:size(X,2)
  
   if sum(X(:,i)==origin(1))==1 && sum(X(:,i)==Cvector(1))==1
   
           tempX = X(:,i);
           tempY = Y(:,i);
           tempZ = Z(:,i);
           
           foundX = tempX(X(:,i)~=origin(1) & X(:,i)~=Cvector(1));
           
           if foundX~=oppositeOfdiag(1)  
               foundY = tempY(Y(:,i)~=origin(2) & Y(:,i)~=Cvector(2));
               foundZ = tempZ(Z(:,i)~=origin(3) & Z(:,i)~=Cvector(3));
               diagVector = [foundX; foundY; foundZ];
               break;
           end
   end
end


Rvector = [];

for i = 1:size(X,2)
  
   if sum(X(:,i)==origin(1))==1 && sum(X(:,i)==diagVector(1))==1
   
           tempX = X(:,i);
           tempY = Y(:,i);
           tempZ = Z(:,i);
           
           foundX = tempX(X(:,i)~=origin(1) & X(:,i)~=diagVector(1));
           
           if foundX~=Cvector(1)  
               foundY = tempY(Y(:,i)~=origin(2) & Y(:,i)~=diagVector(2));
               foundZ = tempZ(Z(:,i)~=origin(3) & Z(:,i)~=diagVector(3));
               Rvector = [foundX; foundY; foundZ];
               break;
           end
   end
end

end