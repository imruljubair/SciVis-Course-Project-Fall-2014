function arrayOfIndex = getTriangle(vertices)



    [X, ~, ~] = readClonClatVertices();

    trinagleX = {};
    trinagleY = {};
    trinagleZ = {};

    n = 0;
    for i = 1:size(vertices,1)-1
       for j = 1:size(vertices,2)-1
            V1 = vertices{i,j};
            V2 = vertices{i+1,j};
            V3 = vertices{i+1,j+1};

            n = n + 1;
            trinagleX{n} = [V1(1);V2(1);V3(1)];
            trinagleY{n} = [V1(2);V2(2);V3(2)];
            trinagleZ{n} = [V1(3);V2(3);V3(3)];

            V4 = vertices{i,j};
            V5 = vertices{i,j+1};
            V6 = vertices{i+1,j+1};

            n = n + 1;
            trinagleX{n} = [V4(1);V5(1);V6(1)];
            trinagleY{n} = [V4(2);V5(2);V6(2)];
            trinagleZ{n} = [V4(3);V5(3);V6(3)];

       end
    end

  arrayOfIndex = zeros(size(trinagleX));
    
    for n = 1:size(trinagleX,2)
        tx = trinagleX{n};
        ty = trinagleY{n};
        tz = trinagleZ{n};
        
        for p = 1:size(X,2)
            
            if sum(X(:,p)==tx(1))==1 && sum(X(:,p)==tx(2))==1 && sum(X(:,p)==tx(3))==1
                arrayOfIndex(n) = p;
            end
            
        end
        
    end
    

end
