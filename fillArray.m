function array = fillArray(array)

disp(' - Filling up the entire array.....');

[X, Y, Z] = readClonClatVertices;
[R,C] = size(array);
done = [];
    for i = 3:R
            for j = 3:C
        
                a = array{i-1,j};
                b = array{i-1, j-1};

                for m = 1:size(X, 2)
                    
                    if sum(X(:,m)==a(1))==1 && sum(X(:,m)==b(1))==1
                        
                        tempX = X(:,m);
                        tempY = Y(:,m);
                        tempZ = Z(:,m);
                        
                        foundX = tempX((X(:,m)~=a(1) & X(:,m)~=b(1)));
                        
                        for s = 1:length(tempX)
                            if tempX(s)==foundX
                                id = s;
                                break;
                            end
                        end
                        
                        r = 0;
                        Mat = [];
                        for n = 1:size(array,1)
                            for p = 1:size(array,2)
                                if ~isempty(array{n,p})
                                r = r+1;
                                Mat(r) = array{n,p}(1);
                                end
                            end
                        end
                        
                        
                            if sum(Mat==foundX)~=1
                                foundY = tempY(id);
                                foundZ = tempZ(id);
                                array{i,j}=[foundX; foundY; foundZ];
                               
                                break;
                            end
                        
                    end
                    
                end
                

                
            end
    end

end