function [ y ] = AWGNadd ( x, snr, fs)
%AWGNadd dodaje bia?y szum Gaussa do wektora @x z podanym snr
% @snr - signal to noise ratio
% @fs - próbkowanie/rozdzielczość
Ej=1;
y=x+sqrt(fs*Ej*10^(-snr/10))*randn(1,length(x));

end

