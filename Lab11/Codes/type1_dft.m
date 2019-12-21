function [w,h] = type1_dft(N,wc)
% Create vector of equally-spaced frequencies
k = 0:1:N-1;
w = 2*pi*k/N;
% Create ideal amplitude response of low-pass filter (remember,it should be symmetric about w = pi)
Ad = zeros(1,N);
for i =1:N
    if (w(i) <wc || w(i)>(2*pi-wc))
        Ad(i) = 1;
    end
end
%stem(Ad);
%Ad = [ones(1,wc),zeros(1,((2*pi)-wc)-wc),ones(1,((2*pi)-((2*pi)-wc)))];
% Compute linear phase vector using correct slope
M = (N-1)/2;
phi = exp(-1j*w*M);
% Compute ideal frequency samples as product of Ad and phi
H = Ad.*phi;
% Compute filter taps via inverse DFT
h = ifft(H);
% Make result real to get rid of near-zero imaginary parts
h = real(h);
L = 1024;
H1 = fft(h,L);
w1 = 2*pi*(0:L-1)/L; 

% Plot impulse response, magnitude response, and phase response over a finer frequency grid
subplot(3,1,1);
plot(h);
title("Time domain response");
subplot(3,1,2);
%plot(abs(H));
plot(w1,abs(H1));
title("Magnitude of frequency response");
hold on;
stem(w,abs(H));
subplot(3,1,3);
%plot(angle(H))
plot(w1,angle(H1));
title("Phase response");
end

