clear all;
len = 10; % Number of symbols
M = 2; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
msg = randi([0 M-1],1,len); % Original signal
[PSKmsg]=PSKmod(msg,M);

PSKmsgNOISED = AWGNadd(PSKmsg,100);

PSKmsgDEMOD = PSKdemod(PSKmsgNOISED,M);

odniesienie = 1:1:len;
subplot(2,2,1)
plot(odniesienie,msg,'o')
title('Plot of original message');

subplot(2,2,2)
plot(real(PSKmsg))
title('Plot of modulated message');

subplot(2,2,3)
plot(real(PSKmsgNOISED))
title('Plot of modulated message + noise');

subplot(2,2,4)
plot(odniesienie,PSKmsgDEMOD,'o')
title('Plot of demodulated message');
