function PlotDFTWindow(dados,janela,titulo)
    f=linspace(-25,25,numel(dados));

    X = abs(fftshift(fft((detrend(dados).*janela))));    
  
    plot(f,X),title(titulo),xlabel('F(Hz)'),ylabel('|DFT|');
end




