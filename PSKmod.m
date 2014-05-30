function [ y,z,Fiarray ] = PSKmod( x, M )
%PSKmod function performs M-ary PSK modulation
%   Detailed explanation goes here

% check if variables are right format

% n=log2(M);
% jesli y to serial to bierzmy ciagi dlugosci n, jesli wektor to sprawdzamy
% czy Xy nei sa wieksze lub rowne 	od 0 i mniejsze od M
fi0=2*pi/M;%kat fazowy

f = 3;% Frequency of Modulating Signal
fs = 1000;% Sampling rate - This will define the resoultion
t = 0: 1/fs : 1-1/fs;% Time for one bit
xlength=length(x);
z=zeros(1,xlength);%imaginary sins
ylength=xlength*fs;
y = zeros(1,ylength);%wektor wyjsciowy, poki co zerowy
Fiarray =  zeros(1,xlength);

for j=1:xlength,    
    %mozemy uzyc x(j) bezposrednio bo 
    %sprawdzilismy czy jt w przedziale 0-M
    fi=x(j)*fi0;%kat przesuniêcia
    Fiarray(j)=fi;
    ind=(fs*(j-1))+1;%index of isnertion into y array
    y((ind):(ind+fs-1)) = cos(2*pi*f*t+fi);
    z(j)=sin(2*pi*f+fi);
    %sprawdz jaki kat fazowy przypisac danemu x. czyli ktoremu M odpowiada

end

z=z';
