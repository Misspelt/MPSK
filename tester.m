clear all;
len = 10; % Number of symbols
M = 2; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
%msg = randi([0 M-1],len,1); % Original signal
msg=[ 0 1 ];
[PSKmsg,PSKmsgZ,msgFi]=PSKmod(msg,M);%PSKmsgZ - zapis zespolony powinien byc taki sam jak PSKmsgML
PSKmsgML = pskmod(msg,M);

PSKmsgNOISED = AWGNadd(PSKmsg,1);

rPSKmsgDEMOD = PSKdemod(PSKmsgNOISED,M);

subplot(3,1,1)
plot(real(PSKmsg))

subplot(3,1,2)
plot(real(PSKmsgNOISED))


subplot(3,1,3)
plot(rPSKmsgDEMOD)

rPSKmsgDEMOD