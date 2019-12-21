p=0.8;
title("pole-zero plot");
b = [1 -1/p];
a = [1 -p];
n = -3*pi:0.01:3*pi;
zplane(b,a);
freqz(b,a,n);
title("Transfer function for p=0.8"); 
%represents an all-pass filter
