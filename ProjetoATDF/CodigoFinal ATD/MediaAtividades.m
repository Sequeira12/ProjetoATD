function MediaAtividades(W,WD,WU)
   
    WauxX = zeros(0,0);
    WauxY = zeros(0,0);
    WauxZ = zeros(0,0);
    contador = 1;
    for i=1:3:length(W)
        WauxX(contador) = W(i);
        WauxY(contador) = W(i+1);
        WauxZ(contador) = W(i+2);
        contador = contador + 1;
    end
    contador = 1;
    
    
    WDauxX = zeros(0,0);
    WDauxY = zeros(0,0);
    WDauxZ = zeros(0,0);
    for i=1:3:length(WD)
        WDauxX(contador) = WD(i);
        WDauxY(contador) = WD(i+1);
        WDauxZ(contador) = WD(i+2);
        contador = contador + 1;
     
    end
    
    contador = 1;
    WUauxX = zeros(0,0);
    WUauxY = zeros(0,0);
    WUauxZ = zeros(0,0);
    for i=1:3:length(WU)
        WUauxX(contador) = WU(i);
        WUauxY(contador) = WU(i+1);
        WUauxZ(contador) = WU(i+2);
        contador = contador + 1;
     
    end
    disp('M�dia do W no eixo X e desvio padr�o:');    
    disp(median(WauxX));
    disp(std(WauxY));
    
    disp('M�dia do W no eixo Y e desvio padr�o:');    
    disp(median(WauxY));
    disp(std(WauxY));
    
    disp('M�dia do W no eixo Z e desvio padr�o:');    
    disp(median(WauxZ));
    disp(std(WauxZ));
    
    
    disp('M�dia do WU no eixo X e desvio padr�o:');    
    disp(median(WUauxX));
    disp(std(WUauxX));
    
    disp('M�dia do WU no eixo Y e desvio padr�o:');    
    disp(median(WUauxY));
    disp(std(WUauxY));
    
    disp('M�dia do WU no eixo Z e desvio padr�o:');    
    disp(median(WUauxZ));
    disp(std(WUauxZ));
    
    
    
    disp('M�dia do WD no eixo X e desvio padr�o:');    
    disp(median(WDauxX));
    disp(std(WDauxX));
    
    disp('M�dia do WD no eixo Y e desvio padr�o:');    
    disp(median(WDauxY));
    disp(std(WDauxY));
    
    disp('M�dia do WD no eixo Z e desvio padr�o:');    
    disp(median(WDauxZ));
    disp(std(WDauxZ));
    
end
