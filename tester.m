len = 10; % Number of symbols
M = 2; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
msg     = randi([0 M-1],1,len); % Original signal
M=4;
snr=100;
f=1;
fs=1000;

[PSKmsg]=PSKmod(msg,M, f, fs);

PSKmsgNOISED = AWGNadd(PSKmsg,snr, fs);
PSKmsgDEMOD = PSKdemod(PSKmsgNOISED,M,f,fs);

mPSKmsgNOISED = mAWGNadd(PSKmsg,snr);%built in implementation
mPSKmsgDEMOD = PSKdemod(mPSKmsgNOISED,M,f,fs);


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
