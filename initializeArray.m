function [array] = initializeArray(array,vector, diagVector, origin, X, Y, Z)


        a = vector;
        b =  diagVector;
        done = origin;

        p = 2;
        q = 2;
        
   k = 1;       
   while k <= 64-2
                
        X(X == done(1)) = NaN;
        Y(Y == done(2)) = NaN;
        Z(Z == done(3)) = NaN;
 

        for m = 1:size(X,2)
            if sum(X(:,m)==a(1))==1 && sum(X(:,m)==b(1))==1
                
                tempX = X(:,m);
                tempY = Y(:,m);
                tempZ = Z(:,m);
                
                foundX = tempX((X(:,m)~=a(1) & X(:,m)~=b(1)));
                if ~isnan(foundX)
                    foundY = tempY((Y(:,m)~=a(2) & Y(:,m)~=b(2)));
                    foundZ = tempZ((Z(:,m)~=a(3) & Z(:,m)~=b(3)));

                    if mod(k, 2) ~= 0
                        p = p+1;
                        array{2,p}=[foundX; foundY; foundZ];
                        done = b;
                        b = [foundX; foundY; foundZ];
                        break;
                    elseif mod(k, 2) == 0
                        q = q+1;
                        array{1,q}=[foundX; foundY; foundZ];
                        done = a;
                        a = [foundX; foundY; foundZ];
                        break;
                    end
                end
            end
        end
        
       k= k+1;
        
    end

end