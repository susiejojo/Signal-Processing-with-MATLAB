f0 = 100;
t = 0:0.0000208:2;
fs = 48000; %sampling frequency
n=20;
harmamps = rand(n,1);
harmphase = rand(n,1);
y = harmonics(t,f0,harmamps,harmphase);
plot(t(:,1:1000),y(:,1:1000));
xlabel("t");
ylabel("y(t)");
title("Sum of harmonics");
sound(y,fs);