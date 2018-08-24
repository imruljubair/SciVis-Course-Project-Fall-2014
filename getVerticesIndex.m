function indexOfVertices = getVerticesIndex(vertices)

[X,~,~] = readVlonVlat();
indexOfVertices = [];
    for i = 1:size(vertices,1)
       for j = 1:size(vertices,2)

                tempX = vertices{i,j}(1);
                
                for ind = 1:length(X)
                    if(X(ind) == tempX)
                        indexOfVertices = [indexOfVertices , ind];
                    end
                end

       end
    end

end