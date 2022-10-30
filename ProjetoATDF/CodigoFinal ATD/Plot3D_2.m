function Plot3D_2(estaX,estaY,estaZ,transX,transY,transZ,dinaX,dinaY,dinaZ)
    
    figure(30);
    legend('a','b','c','d','e','f','g','h','i','k','n','m');
    scatter3(estaX,estaY,estaZ,'k');
    hold on;
    for i=1:3:length(estaX)
        hold on;
        scatter3(estaX(i),estaY(i),estaZ(i),'r');
        hold off;
        hold on;
        scatter3(estaX(i+1),estaY(i+1),estaZ(i+1),'g*');
        hold off;
        hold on;
        scatter3(estaX(i+2),estaY(i+2),estaZ(i+2),'bo');
        hold off;
    end
 
     for i=1:3:length(transX)
        hold on;
        scatter3(transX(i),transY(i),transZ(i),"c");
        hold off;
        hold on;
        scatter3(transX(i+1),transY(i+1),transZ(i+1),"m");
        hold off;
        hold on;
        scatter3(transX(i+2),transY(i+2),transZ(i+2),"y");
        hold off;
     end

    for i=1:6:length(dinaX)
        hold on;
        scatter3(dinaX(i),dinaY(i),dinaZ(i),"r*");
        hold off;
        hold on;
        scatter3(dinaX(i+1),dinaY(i+1),dinaZ(i+1),"g+");
        hold off;
        hold on;
        scatter3(dinaX(i+2),dinaY(i+2),dinaZ(i+2),"b*");
        hold off;
        hold on;
        scatter3(dinaX(i+3),dinaY(i+3),dinaZ(i+3),"k*");
        hold off;
        hold on;
        scatter3(dinaX(i+4),dinaY(i+4),dinaZ(i+4),"m*");
        hold off;
        hold on;
        scatter3(dinaX(i+5),dinaY(i+5),dinaZ(i+5),"y*");
        hold off;
    end
    hold off;
   xlabel('Eixo X');
    ylabel('Eixo Y');
    zlabel('Eixo Z');
   
    




end