function [ y ,z] = zPSKdemod( x, M)
%PSKdemod wykonuje demodulacj? M-ary PSK sygna?u @x
% @M - liczba taka ¿e n=log2(M) nale¿y do naturalnych > 1
% @f - czêstotliwoœæ sygna³u moduluj¹cego
% @fs - próbkowanie/rozdzielczoœæ

if (isinteger(log2(M)))
        error('Niepoprawna wartoœciwoœæ modulacji.')
end

ylength=length(x);
y = zeros(1,ylength);%wektor wyjsciowy, poki co zerowy
fi = zeros(1,(1+M));%wektor przypisania przesuniêæ fazowych do wartoœci
%wartoœciami s¹ pozycje w wektorze (fi(x)-1)
for m=0:(M),
     fi(m+1)=m*2*pi/M;%k¹ty odniesienie
end

for j=0:(ylength-1),    
    
    rPShift=angle(x(j+1));%przesuniêcie fazowe danej czêœci sygna³u
    if rPShift < 0 %adds 2pi for under 0 outputs
        rPShift=rPShift+(2*pi);
    end
    [c index] = min(abs(fi-rPShift));%znajduje najblizsza faze w tablicy fi i na tej podstawi podaje wartosc sygnalu
   
    if(index==1+M)
       index=1;
    end
    
    y(j+1)=index-1;
end

z=y;%wektor intów
k=log2(M);%konwersja z intow na binarne
x=y;
y=zeros(1,((0+ylength)*k));
for j=1:ylength, 
    %biore czesc wektora x i wrzucam do y, reszta to 0 z automatu
    robo=de2bi(x(j));
    rl=length(robo);
    y(((j-1)*k+1):((j-1)*k+rl))=robo;
end