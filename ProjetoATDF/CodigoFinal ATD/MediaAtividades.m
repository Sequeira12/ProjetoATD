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
    disp('Média do W no eixo X e desvio padrão:');    
    disp(median(WauxX));
    disp(std(WauxY));
    
    disp('Média do W no eixo Y e desvio padrão:');    
    disp(median(WauxY));
    disp(std(WauxY));
    
    disp('Média do W no eixo Z e desvio padrão:');    
    disp(median(WauxZ));
    disp(std(WauxZ));
    
    
    disp('Média do WU no eixo X e desvio padrão:');    
    disp(median(WUauxX));
    disp(std(WUauxX));
    
    disp('Média do WU no eixo Y e desvio padrão:');    
    disp(median(WUauxY));
    disp(std(WUauxY));
    
    disp('Média do WU no eixo Z e desvio padrão:');    
    disp(median(WUauxZ));
    disp(std(WUauxZ));
    
    
    
    disp('Média do WD no eixo X e desvio padrão:');    
    disp(median(WDauxX));
    disp(std(WDauxX));
    
    disp('Média do WD no eixo Y e desvio padrão:');    
    disp(median(WDauxY));
    disp(std(WDauxY));
    
    disp('Média do WD no eixo Z e desvio padrão:');    
    disp(median(WDauxZ));
    disp(std(WDauxZ));
    
end
