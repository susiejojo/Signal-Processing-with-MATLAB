n=0:1001;
s = zeros(1,121);
for i = 1:121
     s(i) = sin(.2*pi*n(i)) + sin(.7*pi*n(i));
end
N = 121;
wc = 0.4*pi;
tbvals =[0.7 0.3];
h = transitionband(N,wc,tbvals);
y=conv(s,h);
subplot(2,2,1);
plot(abs(fft(s,1001)));
title("FFT of original signal");
subplot(2,2,2);
plot(y);
title("Filtered signal in time domain");
a = fft(y,1001);
% a = fftshift(a);
subplot(2,2,3);
plot(abs(a));
title("Magnitude response on filtering");
subplot(2,2,4);
plot(angle(a));
title("Phase response on filtering");