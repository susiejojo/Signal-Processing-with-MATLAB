T = 1;
t = -2:0.01:2; %time calibration
A = [1 2 3]; %taking 1, 2, 3 as the Fourier series coefficients
y= partialfouriersum(A,T,t);
y = real(y);
plot(t,y);
xlabel("t");
title("Partial Fourier Sum");

