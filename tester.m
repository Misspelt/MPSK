clear all;
len = 10; % Number of symbols
M = 4; % Size of alphabet (M must be in the form of M = 2^K, where K is an integer.)
%msg = randi([0 M-1],len,1); % Original signal
msg=[0 1 2 3 3];
[PSKmsg,PSKmsgZ]=PSKmod(msg,M);

%PSKmsgML = pskmod(msg,M);


%k=0;
%while k <10
%    u=fft(PSKmsg(1000*k+1:1000*(k+1)));
%    angle(u(4))
%    k=k+1;
%end
PSKmsgNOISED = AWGNadd(PSKmsg,100);

z = PSKdemod(PSKmsgNOISED,M)

%subplot(4,1,1)
%plot(real(PSKmsg))

%subplot(4,1,2)
%plot(real(PSKmsg1))

%subplot(4,1,3)
%plot(z)

%subplot(4,1,4)
%plot(PSKmsgML)