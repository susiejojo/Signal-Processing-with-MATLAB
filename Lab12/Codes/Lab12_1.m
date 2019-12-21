w0 = pi/3;
r = 0.4;
n = 0:200;
[b,a] = notch(w0,r);
x = sin(w0*n) + sin(2*w0*n);

subplot(211);
plot(n,x);
y = filter(b,a,x);
subplot(212);
plot(n,y);
hold on;
%plot(n,(y-x));

figure(2)
subplot(211);
plot(n,abs(fft(x)));
subplot(212);
plot(n,abs(fft(y)));