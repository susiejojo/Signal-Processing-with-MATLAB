function h = hp_fir(w,N)
wc=0.4*pi;
% N=71;
n=0:N-1;
hd=sin(wc*(n-((N-1)/2)))./(pi*(n-((N-1)/2)));
hd(1+(N-1)/2) = 0.4;
% w = rectwin(N);
% disp(size(hd))

for i =1:71
    hd(i) = hd(i) .*(-1)^i;
end
h=w.*hd';
subplot(2,2,1);
plot(hd);
title("Ideal HPF");
subplot(2,2,2);
plot(h);
title("Time domain response");
subplot(2,2,3);
x = fft(h,1001);
x = fftshift(x);
plot(abs(x));
subplot(2,2,4);
plot(angle(x));
end