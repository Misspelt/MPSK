function [ y, z] = zPSKmod( xin, M, f)
%PSKdemod wykonuje modulacj? M-ary PSK sygna?u @x
% @xin - wektor binarnych danych
% @x - wektor danych typu int o wielko�ciach (x>=0 && x<M)
% @M - liczba taka �e n=log2(M) nale�y do naturalnych > 1
% @f - cz�stotliwo�� sygna�u moduluj�cego
% @fs - pr�bkowanie/rozdzielczo��

k=log2(M);%konwersja z binarnych na inty
xlength=length(xin)/k; %musi by? podzielny przez k

x=zeros(1,(0+xlength));

for j=1:xlength, 
    x(j) = bi2de(xin((1+((j-1)*k)):(0+j*k)));
end

z=x;%wektor int�w
chck=x-M;

for j=1:xlength,  
    if any ( chck(j) > 0 || x(j) < 0 )
        error('Niepoprawna wartosc nadawanego sygnalu.')
    end
end

if (mod(x,1)~=0)
        error('Sygna� nie nale�y do int.')
end

fi0=2*pi/M;%kat modulacji
y=zeros(1,xlength);%por�wnanie do wyniku wbudowanej funkcji moduluj�cej

for j=1:xlength,    
    fi=x(j)*fi0;%kat przesuni�cia fazowego
    y(j)=cos(2*pi*f+fi)+i*sin(2*pi*f+fi);%por�wnanie do wyniku wbudowanej funkcji moduluj�cej
end
y=y;