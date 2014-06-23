function [ y ] = PSKdemod( x, M, f, fs)
%PSKdemod wykonuje demodulacj? M-ary PSK sygna?u @x
% @M - liczba taka �e n=log2(M) nale�y do naturalnych > 1
% @f - cz�stotliwo�� sygna�u moduluj�cego
% @fs - pr�bkowanie/rozdzielczo��

if (isinteger(log2(M)))
        error('Niepoprawna warto�ciwo�� modulacji.')
end

ylength=length(x)/fs;
y = zeros(1,ylength);%wektor wyjsciowy, poki co zerowy
fi = zeros(1,M);%wektor przypisania przesuni�� fazowych do warto�ci
%warto�ciami s� pozycje w wektorze (fi(x)-1)
for m=0:(M-1),
     fi(m+1)=m*2*pi/M;%k�ty odniesienie
end

for j=0:(ylength-1),    
    fftx=fft(x(fs*j+1:fs*(j+1)));
    PShift=angle(fftx(f+1));%przesuni�cie fazowe danej cz�ci sygna�u
    rPShift=round(PShift*10^4)/10000;%usuwa nadmiar miejsc po przecinku
    if rPShift < 0 %adds 2pi for under 0 outputs
        rPShift=rPShift+(2*pi);
    end
    [c index] = min(abs(fi-rPShift));%znajduje najblizsza faze w tablicy fi i na tej podstawi podaje wartosc sygnalu
    y(j+1)=index-1;
end

