function [ y ] = AWGNadd ( x, snr )
%AWGNadd adds white Gaussian noise to the vector signal x with appropriate signal-to-noise ratio per sample. 

fs = 1000;%próbkowanie/rozdzielczoœæ
Ej=1;
y=x+sqrt(fs*Ej*10^(-snr/10))*randn(1,length(x));


end

