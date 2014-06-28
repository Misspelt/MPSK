function [ y ] = AWGNadd ( x, snr)
%AWGNadd dodaje bia?y szum Gaussa do wektora @x z podanym snr
% @snr - signal to noise ratio
% @fs - próbkowanie/rozdzielczoœæ
Ej=1;
y=x+sqrt(Ej.*10^(-snr./10))*randn(1,length(x));
%y=awgn(x,snr) ;%awgn wersja matlabowwa na wszelki wypadek
end

