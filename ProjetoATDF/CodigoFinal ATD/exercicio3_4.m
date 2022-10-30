function exercicio3_4(ficheiros,pergunta)
 
    estaticasx = [];
    estaticasy = [];
    estaticasz = [];
    transicaox = [];
    transicaoy = [];
    transicaoz = [];
    dinamicasx = [];
    dinamicasy = [];
    dinamicasz = [];
    contadorEsta = 1;
    contadorTra = 1;
    contadorDina = 1;
    for i=1:2:length(ficheiros)
        file = sprintf("/Users/brunosequeira/Desktop/MATLAB/RawData/acc_exp%d_user%d.txt",ficheiros(i),ficheiros(i+1));
        [x,y,z] = leitura(file);
        
        flabel = '/Users/brunosequeira/Desktop/MATLAB/RawData/labels.txt';
        [ID,start,End] = leituraLabel(flabel,ficheiros(i));
      
        for j=1:3
            [startfinal,endfinal] = Exercicio3(ID,start,End,j);
            px = zeros(0,0);
            py = zeros(0,0);
            pz = zeros(0,0);
            for k=1:length(startfinal)
                px = [px x(startfinal(k):endfinal(k))];
                py = [py y(startfinal(k):endfinal(k))];
                pz = [pz z(startfinal(k):endfinal(k))];
            end
            [~,m_X] = DFT(px,50);
            dinamicasx(contadorDina) = median(m_X);
            [~,m_Y] = DFT(px,50);
            dinamicasy(contadorDina) = median(m_Y); 
            [~,m_Z] = DFT(px,50);
            dinamicasz(contadorDina) = median(m_Z);
            contadorDina = contadorDina + 1;
        end
        
         for j=4:6
            [startfinal,endfinal] = Exercicio3(ID,start,End,j);
            px = zeros(0,0);
            py = zeros(0,0);
            pz = zeros(0,0);
            for k=1:length(startfinal)
                px = [px x(startfinal(k):endfinal(k))];
                py = [py y(startfinal(k):endfinal(k))];
                pz = [pz z(startfinal(k):endfinal(k))];
            end
            [~,m_X] = DFT(px,50);
            estaticasx(contadorEsta) = median(m_X);
            [~,m_Y] = DFT(px,50);
            estaticasy(contadorEsta) = median(m_Y); 
            [~,m_Z] = DFT(px,50);
            estaticasz(contadorEsta) = median(m_Z);
            contadorEsta = contadorEsta + 1;
         end
        
         for j=7:12
            [startfinal,endfinal] = Exercicio3(ID,start,End,j);
            px = zeros(0,0);
            py = zeros(0,0);
            pz = zeros(0,0);
            for k=1:length(startfinal)
                px = [px x(startfinal(k):endfinal(k))];
                py = [py y(startfinal(k):endfinal(k))];
                pz = [pz z(startfinal(k):endfinal(k))];
            end
            [~,m_X] = DFT(px,50);
            transicaox(contadorTra) = median(m_X);
            [~,m_Y] = DFT(px,50);
            transicaoy(contadorTra) = median(m_Y); 
            [~,m_Z] = DFT(px,50);
            transicaoz(contadorTra) = median(m_Z);
            contadorTra = contadorTra + 1;
        end
        
    end
    if(pergunta == 1)
        Plot3D(estaticasx,estaticasy,estaticasz,transicaox,transicaoy,transicaoz,dinamicasx,dinamicasy,dinamicasz);
    else    
        Plot3D_2(estaticasx,estaticasy,estaticasz,transicaox,transicaoy,transicaoz,dinamicasx,dinamicasy,dinamicasz);
    end
end
