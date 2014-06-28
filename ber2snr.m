function [ ber ] = ber2snr( x, M, f, fs, SNR)
%PSKdemod wykonuje demodulacj? M-ary PSK sygna?u @x
% @M - liczba taka ¿e n=log2(M) nale¿y do naturalnych > 1
% @f - czêstotliwoœæ sygna³u moduluj¹cego
% @fs - próbkowanie/rozdzielczoœæ
ber=zeros(1,length(SNR));   
[y1,z1]=PSKmod(x,M,f,fs);

for i=1:length(SNR)
	y2=AWGNadd(y1,SNR(i));
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