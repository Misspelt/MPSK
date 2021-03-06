function [ ber ] = ber2snr( x, M, f, fs, SNR, Es, Ts)
%PSKdemod wykonuje demodulacj? M-ary PSK sygna?u @x
% @M - liczba taka że n=log2(M) należy do naturalnych > 1
% @f - częstotliwość sygnału modulującego
% @fs - próbkowanie/rozdzielczość
ber=zeros(1,length(SNR));   
[y1,z1]=PSKmod(x,M,f,fs,Es, Ts);

for i=1:length(SNR)
	y2=AWGNadd(y1,SNR(i), fs, M, Es);
	[y3,z2]=PSKdemod(y2,M,f,fs);
	z=z1-z2;

    counter=0;
	for j=1:length(z)
		if(z(j)~=0)
			counter=counter+1;
		end
    end
	ber(i)=counter/length(z1);

end