function [ y, z] = PSKmod( xin, M, f, fs)
%PSKdemod wykonuje modulacj? M-ary PSK sygna?u @x
% @xin - wektor binarnych danych
% @x - wektor danych typu int o wielko�ciach (x>=0 && x<M)
% @M - liczba taka �e n=log2(M) nale�y do naturalnych > 1
% @f - cz�stotliwo�� sygna�u moduluj�cego
% @fs - pr�bkowanie/rozdzielczo��

k=log2(M);%konwersja z binarnych na inty
xlength=length(xin)/k; %musi by? podzielny przez k

if (mod(xlength,1)~=0)
        error('Ilo?? bit� nie jest wielokrotno?ci? log2(M).')
end

x=zeros(1,(0+xlength));
for j=1:xlength, 
    x(j) = bi2de(xin((1+((j-1)*k)):(0+j*k)));
end

z=x;%wektor int�w

if (mod(k,1)~=0)
        error('Niepoprawna warto�ciwo�� modulacji.')
end


chck=x-M;
for j=1:xlength,  
    if any ( chck(j) > 0 || x(j) < 0 )
        error('Niepoprawna warto�� nadawanego sygna�u.')
    end
end
if (mod(x,1)~=0)
        error('Sygna� nie nale�y do int.')
end


fi0=2*pi/M;%kat modulacji
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