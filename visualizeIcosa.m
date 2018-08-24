function visualizeIcosa()
    clc;
   
    diamonds = importdata('icosahedron/Diamonds.mat');
    for i = 1:length(diamonds)
        D = diamonds{i};
        patch(D(1,:), D(2,:), D(3,:), 0.5*i);
        hold on;
    end
    

     hp = findobj(gcf,'type','patch');
    set(hp,'facealpha',0.8)  
    
end