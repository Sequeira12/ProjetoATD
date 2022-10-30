function DFT_PLOTS(x,y,z,sub)
    [fx,m_X] = DFT(x,50);
    [fy,m_Y] = DFT(y,50);
    [fz,m_Z] = DFT(z,50);
    
    subplot(3,12,sub);

    plot(fx,m_X);
    if(sub == 1)
       ylabel('ACC X');
    end  
    subplot(3,12,sub+12);
      
    plot(fy,m_Y);
    if(sub == 1)
       ylabel('ACC Y');
    end  
    
    subplot(3,12,sub+24);
   
    plot(fz,m_Z);
     if(sub == 1)
        
       ylabel('ACC Z');
    end 

    
    


end
  