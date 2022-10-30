function Exercicio2(nfile,temp,x,y,z,coresFinais,ID,start,End,nomes,NameFile)
%%% --- TABELA ACC_X JÁ COM AS CORES e TEXTO --------- %%%%
    figure(nfile);
    
    subplot(411);
    hold on  
    plot(temp,x,'k')
    xlabel('Tempo(min)')
    ylabel('ACC_X')
    for k=1:length(ID)
        inicio = start(k);
        final = End(k);
        
        a = coresFinais(ID(k));
        
        if mod(k,2)==0
            posicao = min(x);
        else
            posicao = max(x);
        end 

        
        plot(temp(inicio:final),x(inicio:final),a);
        text(inicio/50/60,posicao,nomes(ID(k)));
    end    
    hold off
%%% --- TABELA ACC_Y JÁ COM AS CORES e TEXTO --------- %%%%
    subplot(412);
    hold on   
    plot(temp,y,'k')
    xlabel('Tempo(min)')
    ylabel('ACC_Y')
    for k=1:length(ID)
        inicio = start(k);
        final = End(k);
        
         a = coresFinais(ID(k));
        if mod(k,2)==0
            posicao = min(y)+0.05;
        else
            posicao = max(y);
        end 
        plot(temp(inicio:final),y(inicio:final),a);
        text(inicio/50/60,posicao,nomes(ID(k)));
    end    
    hold off
%%% --- TABELA ACC_Z JÁ COM AS CORES e TEXTO --------- %%%%
    subplot(413);
    hold on   
    plot(temp,z,'k')
    
    xlabel('Tempo(min)')
    ylabel('ACC_Z')
    for k=1:length(ID)
        inicio = start(k);
        final = End(k);
         a = coresFinais(ID(k));
         
        if mod(k,2)==0
            posicao = min(z);
        else
            posicao = max(z);
        end 
        plot(temp(inicio:final),z(inicio:final),a);
        text(inicio/50/60,posicao,nomes(ID(k)));
    end    
    hold off  
   sgtitle(NameFile) ;
end