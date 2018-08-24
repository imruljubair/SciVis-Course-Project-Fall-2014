function validation()
[X,Y,Z] = readClonClat();
[CX, CY, CZ] = readClonClatVertices();
dataSelected = 'wet_c';
Data= ncread('icon_ocean.nc',dataSelected);
    Data = mean(Data,2);
    Data = getNormalizedData(Data);
    
    
    i = 1:length(X);
        
        patch(CX(:,i), CY(:,i), CZ(:,i),Data(i));
        hold on;
    
    
end

function normalizedData = getNormalizedData(Data)

        A = max(Data);
        B = min(Data);
        
        a = 0;
        b = 1;
        
        normalizedData = a+((Data - A).*(b-a))./(B - A);


end