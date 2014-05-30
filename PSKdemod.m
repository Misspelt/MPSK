function [ y ] = PSKdemod( x, M )
%PSKdemod function performs M-ary PSK demodulation
%   Detailed explanation goes here

% check if variables are right format

% n=log2(M);
% jesli y to serial to bierzmy ciagi dlugosci n, jesli wektor to sprawdzamy
% czy Xy nei sa wieksze lub rowne od 0 i mniejsze od M

fi = zeros(1,M);%wektor wyjsciowy, pki co zerowy
for m=0:(M-1),
     fi(m+1)=m*2*pi/M;%katy odniesienie
end

f = 3;% Frequency of Modulating Signal 
fs = 1000;% Sampling rate - This will define the resoultion
%t = (0+1/fs): 1/fs : 1;% Time for one bit
ylength=length(x)/fs;
y = zeros(1,ylength);%wektor wyjsciowy, pki co zerowy
    

for j=0:(ylength-1),
       
    fftx=fft(x(fs*j+1:fs*(j+1)));
    PShift=angle(fftx(f+1));
    rPShift=round(PShift*10^4)/10000;%usuwa nadmiar miejsc po przecinku
    if rPShift < 0 %adds 2pi for under 0 outputs
        rPShift=rPShift+(2*pi);
    end
    
    [c index] = min(abs(fi-rPShift));%znajduje najblizsza faze w tablicy fi i na tej podstawi podaje wartosc sygnalu
    
    y(j+1)=index;
    
   
    
%   rfftx=real(fftx);
%    [ max_value, max_index ] = max(rfftx);
%    fftx2=zeros(length(fftx),1);
%    fftx2( max_index-1: max_index)= fftx( max_index-1: max_index);
%    xr=ifft(fftx2);

end

