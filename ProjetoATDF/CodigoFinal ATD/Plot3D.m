function Plot3D(estaX,estaY,estaZ,transX,transY,transZ,dinaX,dinaY,dinaZ)
    figure(10);
    scatter3(estaX,estaY,estaZ,'r');
    hold on;
    scatter3(transX,transY,transZ,'b');
    hold off;
    hold on;
    scatter3(dinaX,dinaY,dinaZ,'k');
    hold off;
    xlabel('Eixo X');
    ylabel('Eixo Y');
    zlabel('Eixo Z');
    legend('Estáticos','Transição','Dinamicos');
end