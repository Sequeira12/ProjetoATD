% exercicio 1 e 2
nfile = 1;
ficheiros = [54,27,55,27,56,28,57,28,58,29,59,29,60,30,61,30];
coreszita = ['r','g','b','c','m','y','*','o','+','-','.','c'];
nomes = ["W", "WU", "WD", "SIT", "STAND", "LAY", "SSIT", "SSTAND", "SLIE", "LSIT", "STLIE","LSTAND"]; 


for i=1:2:length(ficheiros)
    file = sprintf("RawData/acc_exp%d_user%d.txt",ficheiros(i),ficheiros(i+1));
    [x,y,z] = leitura(file);
    NameFile = sprintf("Gráfico do sinal da experiencia %d e utilizador %d com as respetivas atividades",ficheiros(i),ficheiros(i+1));
    temp = zeros(0,0);
    for p=1:length(x)
        temp(length(temp)+1) = p/50/60;
    end
    flabel = 'RawData/labels.txt';
    [ID,start,End] = leituraLabel(flabel,ficheiros(i));

    Exercicio2(nfile,temp,x,y,z,coreszita,ID,start,End,nomes,NameFile);
    nfile = nfile + 1;
end

%% exercicio 3.1
conta = 1;
contador = 300;
for i=1:2:length(ficheiros)
    file = sprintf("RawData/acc_exp%d_user%d.txt",ficheiros(i),ficheiros(i+1));
    [x,y,z] = leitura(file);
    nomegraficofile = sprintf("DFT DO SINAL EXP %d - USER %d",ficheiros(i),ficheiros(i+1));
    flabel = 'RawData/labels.txt';
    [ID,start,End] = leituraLabel(flabel,ficheiros(i));

    for j=1:12
        [startfinal,endfinal] = Exercicio3(ID,start,End,j);
        
        px = zeros(0,0);
        py = zeros(0,0);
        pz = zeros(0,0);
        for k=1:length(startfinal)
            px = [px x(startfinal(k):endfinal(k))];
            py = [py y(startfinal(k):endfinal(k))];
            pz = [pz z(startfinal(k):endfinal(k))];
        end
        figure(contador);
        
        sgtitle(nomegraficofile);
        DFT_PLOTS(px,py,pz,j);
        
        
           
    end 
    contador = contador + 1;
    nfile = nfile + 1;


end

%% exercicio 3.3
W = [];
WU = [];
WD = [];
final = [];
for i=1:4:length(ficheiros)

    file = sprintf("RawData/acc_exp%d_user%d.txt",ficheiros(i),ficheiros(i+1));
    file2 = sprintf("RawData/acc_exp%d_user%d.txt",ficheiros(i+2),ficheiros(i+3));
   
    
    
    [x,y,z] = leitura(file);
    [x2,y2,z2] = leitura(file2);
    nomegraficofile = sprintf("DFT DO SINAL EXP %d - USER %d",ficheiros(i),ficheiros(i+1));
    flabel = 'RawData/labels.txt';
    [ID,start,End] = leituraLabel(flabel,ficheiros(i));
    [ID2,start2,End2] = leituraLabel(flabel,ficheiros(i+2));
  
    auxiliar = [];
    
    for j=1:3
        [startfinal,endfinal] = Exercicio3(ID,start,End,j);
        [startfinal2,endfinal2] = Exercicio3(ID2,start2,End2,j);
        px1 = zeros(0,0);
        py1 = zeros(0,0);
        pz1 = zeros(0,0);
        px2 = zeros(0,0);
        py2 = zeros(0,0);
        pz2 = zeros(0,0);
        for k=1:length(startfinal)
            px1 = [px1 x(startfinal(k):endfinal(k))];
            py1 = [py1 y(startfinal(k):endfinal(k))];
            pz1 = [pz1 z(startfinal(k):endfinal(k))];
            
           
        end
        for k=1:length(startfinal2)
            px2 = [px2 x2(startfinal2(k):endfinal2(k))];
            py2 = [py2 y2(startfinal2(k):endfinal2(k))];
            pz2 = [pz2 z2(startfinal2(k):endfinal2(k))];
        end
        
        % número passos no eixo x
        auxiliarX = [px1 px2];
        auxiliarX = detrend(auxiliarX);
        [f,m_X] = DFT(auxiliarX,50);
        passosX = calculaPassos(f,m_X);
       
        % número passos no eixo y
        auxiliarY = [py1 py2];
        auxiliarY = detrend(auxiliarY);
        [f,m_Y] = DFT(auxiliarY,50);
        passosY = calculaPassos(f,m_Y);
      
        
        %número passos no eixo z
        auxiliarZ = [pz1 pz2];
        auxiliarZ = detrend(auxiliarZ);
        [f,m_Z] = DFT(auxiliarZ,50);
        passosZ = calculaPassos(f,m_Z);
      
        if(j == 1)
            W = [W passosX passosY passosZ];
        end    
        if(j == 2)
            WU = [WU passosX passosY passosZ];
        end  
        if(j == 3)
            WD = [WD passosX passosY passosZ]; 
        end
    
           
    end 
    
    
    nfile = nfile + 1;
end
MediaAtividades(W,WD,WU);

%% exercicio 3.4

exercicio3_4(ficheiros,1);


%% exercício 3.5

exercicio3_4(ficheiros,2);
%% exercicio 4.1
file = sprintf("RawData/acc_exp61_user30.txt");
[~,y,z] = leitura(file);

[ID,start,End] = leituraLabel(flabel,61);

fs = 50;
data = zeros(0,0);
for i = 1:length(ID)
    if (ID(i) == 1)
        starttemp = start(i);
        endtemp = End(i);
       
        data = [data z(starttemp:endtemp)];
        
        
    end

end


figure(40);
subplot(2,2,1);
ham = hamming(endtemp-starttemp+1);
PlotDFTWindow(data,ham,"hamming");

subplot(2,2,2);
ret = rectwin(endtemp-starttemp+1);
PlotDFTWindow(data,ret,"retangular");

subplot(2,2,3);
ham = kaiser(endtemp-starttemp+1);
PlotDFTWindow(data,ham,"kaiser");





%% exercicio 4.3


file = sprintf("RawData/acc_exp60_user30.txt");
[x,y,z] = leitura(file);
stftNew(z);

