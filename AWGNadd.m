function [ y ] = AWGNadd ( x, SNR, fs, M , Es)
%AWGNadd dodaje bia?y szum Gaussa do wektora @x z podanym snr
% @snr - signal to noise ratio
% @fs - próbkowanie/rozdzielczoœæ  
N0 = Es./log2(M) .* 10^(-SNR/10);
y=x+sqrt(fs.*N0)*randn(1,length(x));
%y=awgn(x,SNR) ;%awgn wersja matlabowwa na wszelki wypadek
end

 