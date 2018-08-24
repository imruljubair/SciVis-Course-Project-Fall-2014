function ICONverterData(dataSelected)

clc;
disp(dataSelected);
disp('Finding data index for cells from ICON grid:');
    Data= ncread('icon_ocean.nc',dataSelected);
    Data = mean(Data,2);
    Data = getNormalizedData(Data);
    
    for m = 1: 10
         disp([' - data is being identified for diamond ',num2str(m)]);
         theIndex = importdata(['cells/triangleCellsOfDiamond',num2str(m),'.mat']);
         theData = getData(theIndex, Data);
         save(['data/dataOneOfDiamond',num2str(m),'.mat'],'theData');
    end
   
end

function theData = getData(theIndex, Data)
    
   theData = [];
   for i = 1:length(theIndex)
       ind = theIndex(i);
       tempData = Data(ind);
       theData = [theData, tempData];
       
   end

end

function normalizedData = getNormalizedData(Data)

        A = max(Data);
        B = min(Data);
        
        a = 0;
        b = 1;
        
        normalizedData = a+((Data - A).*(b-a))./(B - A);


end