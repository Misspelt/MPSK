function [ y] = PSKmod( x, M, f, fs)
%PSKdemod wykonuje modulacj? M-ary PSK sygna?u @x
% @x - wektor danych typu int o wielkościach (x>=0 && x<M)
% @M - liczba taka że n=log2(M) należy do naturalnych > 1
% @f - częstotliwość sygnału modulującego
% @fs - próbkowanie/rozdzielczość

xlength=length(x);

if (isinteger(log2(M)))
        error('Niepoprawna wartościwość modulacji.')
end
chck=x-M;
for j=1:xlength,  
    if any ( chck(j) > 0 || x(j) < 0 )
        error('Niepoprawna wartość nadawanego sygnału.')
    end
end
if (isinteger(x))
        error('Sygnał nie należy do int.')
end

fi0=2*pi/M;%kat modulacji
t = 0: 1/fs : 1-1/fs;%czas przesyłu 1 bitu
%z=zeros(1,xlength);%porównanie do wyniku wbudowanej funkcji modulującej
ylength=xlength*fs;
y = zeros(1,ylength);%wektor wyjsciowy, poki co zerowy

for j=1:xlength,    
    fi=x(j)*fi0;%kat przesunięcia fazowego
    ind=(fs*(j-1))+1;%index umieszczenia danych zmodulowanych
    y((ind):(ind+fs-1)) = cos(2*pi*f*t+fi);
    %z(j)=sin(2*pi*f+fi);%porównanie do wyniku wbudowanej funkcji modulującej
end
%z=z';