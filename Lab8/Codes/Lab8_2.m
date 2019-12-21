x = zeros(16,1);
L = 10;
x = (1:16)';
X = radix2fft(x)
subplot(2,2,1);
plot(x)
title("Input signal")
X_f = fft(x);
subplot(2,2,2)
plot(abs(X))
title("radix2fft output");
subplot(2,2,3)
plot(abs(X_f))
title("FFT output");
X_d = directdft(x);
subplot(2,2,4);
plot(abs(X_d));
title("Direct DFT output");