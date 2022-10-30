function [f,m_X] = DFT(eixo,fs)
    N = numel(eixo);
    X = fftshift(fft(eixo));
    if (mod(N,2)==0)
        f = -fs/2:fs/N:fs/2-fs/N;
    else
        f = -fs/2+fs/(2*N):fs/N:fs/2-fs/(2*N);
    end
    m_X = abs(X); 
  
end