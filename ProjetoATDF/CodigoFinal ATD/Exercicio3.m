function [startfinal,endfinal] = Exercicio3(ID,Start,End,idprocura)
    startfinal = zeros(0,0);
    endfinal = zeros(0,0);
    contadoraux = 1;
    
    for i=1:length(ID)
        
         if(ID(i) == idprocura)
            startfinal(contadoraux) = Start(i);
            endfinal(contadoraux) = End(i);
            contadoraux = contadoraux + 1;
            
         end 

    end

end