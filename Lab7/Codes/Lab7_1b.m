p=0.9;
b = 1;
a = [1 -0.9];
n = -3*pi:0.01:3*pi;
freqz(b,a,n);
title("Transfer function for p=0.9");