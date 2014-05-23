function [ y ] = PSKmod( x, M )
%PSKmod function performs M-ary PSK modulation
%   Detailed explanation goes here

% check if variables are right format

% n=log2(M);
% jesli y to serial to bierzmy ciagi dlugosci n, jesli wektor to sprawdzamy
% czy Xy nei sa wieksze lub rowne 	od 0 i mniejsze od M
xlength=length(x);
fi0=2*pi/M;%kat fazowy

f = 3;% Frequency of Modulating Signal
fs = 100;% Sampling rate - This will define the resoultion
t = (0+1/fs): 1/fs : 1;% Time for one bit
y = zeros(fs,xlength);%wektor wyjsciowy, poki co zerowy


j=1;
while j < xlength+1
    
    %mozemy uzyc x(j) bezposrednio bo 
    %sprawdzilismy czy jt w przedziale 0-M
    fi=x(j)*fi0;%kat przesuniêcia
    y(j)=sin(2*pi*f*t+fi);
    %sprawdz jaki kat fazowy przypisac danemu x. czyli ktoremu M odpowiada

    j=j+1;
end

return y;