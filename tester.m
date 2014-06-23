clear all;
<<<<<<< HEAD
len = 10; % Number of symbols
M = 4; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
%msg = randi([0 M-1],len,1); % Original signal
msg=[0 0 1 0 1 2 3];
[PSKmsg,PSKmsgZ]=PSKmod(msg,M);%PSKmsgZ - zapis zespolony powinien byc taki sam jak PSKmsgML
PSKmsgML = pskmod(msg,M);

PSKmsgNOISED = AWGNadd(PSKmsg,100);

PSKmsgDEMOD = PSKdemod(PSKmsgNOISED,M);

subplot(3,1,1)
plot(real(PSKmsg))

subplot(3,1,2)
plot(real(PSKmsgNOISED))

rPSKmsgDEMOD=round(PSKmsgDEMOD*10^4)/10000;

subplot(3,1,3)
plot(rPSKmsgDEMOD)

=======
len = 111; % Number of symbols
M = 2; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
msg = randi([0 M-1],1,len); % Original signal
snr=100;

[PSKmsg]=PSKmod(msg,M);

PSKmsgNOISED = AWGNadd(PSKmsg,snr);
PSKmsgDEMOD = PSKdemod(PSKmsgNOISED,M);

mPSKmsgNOISED = mAWGNadd(PSKmsg,snr);%built in implementation
mPSKmsgDEMOD = PSKdemod(mPSKmsgNOISED,M);%built in implementation


odniesienie = 1:1:len;
subplot(3,2,1)
plot(odniesienie,msg,'o')
title('Plot of original message');

subplot(3,2,2)
plot(real(PSKmsg))
title('Plot of modulated message');

subplot(3,2,3)
plot(real(PSKmsgNOISED))
title('Plot of modulated message + noise');

subplot(3,2,4)
plot(odniesienie,PSKmsgDEMOD,'o')
title('Plot of demodulated message');

subplot(3,2,5)
plot(real(mPSKmsgNOISED))
title('Plot of modulated message + noise[built]');

subplot(3,2,6)
plot(odniesienie,mPSKmsgDEMOD,'o')
title('Plot of demodulated message[built]');
>>>>>>> 0efe643cb415607d0c00f5cb9a59502a487a879e
