function Diamond = getDiamonds(icosaVertices)

disp(' - Organizing the Diamonds.......');
  
    icosaX = icosaVertices{1};
    icosaY = icosaVertices{2};
    icosaZ = icosaVertices{3};
    
    Diamond = {};
    
    Diamond{1} = [icosaX(3), icosaX(2), icosaX(1), icosaX(7);
                icosaY(3), icosaY(2), icosaY(1), icosaY(7);
                icosaZ(3), icosaZ(2), icosaZ(1), icosaZ(7)];
            
    Diamond{2} = [icosaX(7), icosaX(1), icosaX(8), icosaX(12);
                icosaY(7), icosaY(1), icosaY(8), icosaY(12);
                icosaZ(7), icosaZ(1), icosaZ(8), icosaZ(12)];
            
    Diamond{3} = [icosaX(1), icosaX(2), icosaX(4), icosaX(8);
                icosaY(1), icosaY(2), icosaY(4), icosaY(8);
                icosaZ(1), icosaZ(2), icosaZ(4), icosaZ(8)];
            
    Diamond{4} = [icosaX(8), icosaX(4), icosaX(9), icosaX(12);
                icosaY(8), icosaY(4), icosaY(9), icosaY(12);
                icosaZ(8), icosaZ(4), icosaZ(9), icosaZ(12)];
            
    Diamond{5} = [icosaX(4), icosaX(2), icosaX(5), icosaX(9);
                icosaY(4), icosaY(2), icosaY(5), icosaY(9);
                icosaZ(4), icosaZ(2), icosaZ(5), icosaZ(9)];
            
    Diamond{6} = [icosaX(9), icosaX(5), icosaX(10), icosaX(12);
                icosaY(9), icosaY(5), icosaY(10), icosaY(12);
                icosaZ(9), icosaZ(5), icosaZ(10), icosaZ(12)];
            
    Diamond{7} = [icosaX(5), icosaX(2), icosaX(6), icosaX(10);
                icosaY(5), icosaY(2), icosaY(6), icosaY(10);
                icosaZ(5), icosaZ(2), icosaZ(6), icosaZ(10)];
            
    Diamond{8} = [icosaX(10), icosaX(6), icosaX(11), icosaX(12);
                icosaY(10), icosaY(6), icosaY(11), icosaY(12);
                icosaZ(10), icosaZ(6), icosaZ(11), icosaZ(12)];
            
    Diamond{9} = [icosaX(6), icosaX(2), icosaX(3), icosaX(11);
                icosaY(6), icosaY(2), icosaY(3), icosaY(11);
                icosaZ(6), icosaZ(2), icosaZ(3), icosaZ(11)];
            
    Diamond{10}= [icosaX(11), icosaX(3), icosaX(7), icosaX(12);
                icosaY(11), icosaY(3), icosaY(7), icosaY(12);
                icosaZ(11), icosaZ(3), icosaZ(7), icosaZ(12)];

end
