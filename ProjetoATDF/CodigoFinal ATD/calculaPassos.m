function n_passos = calculaPassos(f,m_X)
        abs_dft = m_X;
        in = find(f>0);
        nf = f(f>0);
        maxi = max(abs_dft(in));
        [~,locs] = findpeaks(abs_dft(in),'MinPeakHeight',0.4*maxi);
        if(~isempty(locs))
            freq = nf(locs(1));
        else
            freq = 0;
        end    
        n_passos = freq * 60;
end