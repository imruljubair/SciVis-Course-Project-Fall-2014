function arrayOfDiamond = generateVerticesRestNext(theArray)

    origin = theArray{1,end};
    Rvector = theArray{2,end};
    oppositeOfdiag = theArray{1,end-1};
    
    [diagVector, Cvector] = getVectorsForRestNext(origin, Rvector, oppositeOfdiag);
   
    arrayOfDiamond = generateVertices(origin, Cvector, Rvector, diagVector);
    
end

function [diagVector, Cvector] = getVectorsForRestNext(origin, Rvector, oppositeOfdiag)

[X, Y, Z] = readClonClatVertices();  
diagVector = [];
for i = 1:size(X,2)
  
   if sum(X(:,i)==origin(1))==1 && sum(X(:,i)==Rvector(1))==1
   
           tempX = X(:,i);
           tempY = Y(:,i);
           tempZ = Z(:,i);
           
           foundX = tempX(X(:,i)~=origin(1) & X(:,i)~=Rvector(1));
           
           if foundX~=oppositeOfdiag(1)  
               foundY = tempY(Y(:,i)~=origin(2) & Y(:,i)~=Rvector(2));
               foundZ = tempZ(Z(:,i)~=origin(3) & Z(:,i)~=Rvector(3));
               diagVector = [foundX; foundY; foundZ];
               break;
           end
   end
end


Cvector = [];

for i = 1:size(X,2)
  
   if sum(X(:,i)==origin(1))==1 && sum(X(:,i)==diagVector(1))==1
   
           tempX = X(:,i);
           tempY = Y(:,i);
           tempZ = Z(:,i);
           
           foundX = tempX(X(:,i)~=origin(1) & X(:,i)~=diagVector(1));
           
           if foundX~=Rvector(1)  
               foundY = tempY(Y(:,i)~=origin(2) & Y(:,i)~=diagVector(2));
               foundZ = tempZ(Z(:,i)~=origin(3) & Z(:,i)~=diagVector(3));
               Cvector = [foundX; foundY; foundZ];
               break;
           end
   end
end

end