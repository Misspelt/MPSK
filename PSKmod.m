function [ y] = PSKmod( x, M )
%PSKmod function performs M-ary PSK modulation
% @x - wektor danych typu int o wielko�ciach (x>=0 && x<M)
% @M - liczba taka �e n=log2(M) nale�y do naturalnych > 1

xlength=length(x);

if (isinteger(log2(M)))
        error('Niepoprawna warto�ciwo�� modulacji.')
end
chck=x-M;
for j=1:xlength,  
    if any ( chck(j) > 0 || x(j) < 0 )
        error('Niepoprawna warto�� nadawanego sygna�u.')
    end
end
if (isinteger(x))
        error('Sygna� nie nale�y do int.')
end

fi0=2*pi/M;%kat modulacji
f = 3;%cz�stotliwo�� sygna�u moduluj�cego
fs = 1000;%pr�bkowanie/rozdzielczo��
t = 0: 1/fs : 1-1/fs;%czas przesy�u 1 bitu
%z=zeros(1,xlength);%por�wnanie do wyniku wbudowanej funkcji moduluj�cej
ylength=xlength*fs;
y = zeros(1,ylength);%wektor wyjsciowy, poki co zerowy

for j=1:xlength,    
    fi=x(j)*fi0;%kat przesuni�cia fazowego
    ind=(fs*(j-1))+1;%index umieszczenia danych zmodulowanych
    y((ind):(ind+fs-1)) = cos(2*pi*f*t+fi);
    %z(j)=sin(2*pi*f+fi);%por�wnanie do wyniku wbudowanej funkcji moduluj�cej
end
%z=z';