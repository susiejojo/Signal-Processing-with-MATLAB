function [h] = transitionband(N,wc,tbvals)
% Create vector of N equally-spaced frequencies
w = 0:2*pi/N:(2*pi*(N-1))/N;
% Create ideal amplitude response of low-pass filter (remember,
%it should be symmetric about w = pi)
Ad = (w<=wc)|(w>=2*pi-wc);
% Determine which indices correspond to the samples just to the
% left and the right of the cutoff frequency (if cutoff freq
%falls exactly
% on a sample, use that sample and the one to the right).
wleftind = floor((N*wc)/(2*pi))+1;
wrightind = wleftind + 1;
lleftind = floor(21-(N*wc)/(2*pi))+1;
lrightind = lleftind - 1;
% Update amplitude response with given transition band values at
%these frequencies (remember the symmetry around pi);
Ad(wleftind) = tbvals(1);
Ad(wrightind) = tbvals(2);
Ad(lleftind) = tbvals(2);
Ad(lrightind) = tbvals(1);
% Compute linear phase vector using correct slope
phi = exp(-1*j*(N-1)/2*w);
% Compute ideal frequency samples as product of Ad and phi
H = Ad.*phi;
% Compute filter taps via inverse DFT
h = ifft(H);
% Make result real to get rid of near-zero imaginary parts
h = real(h);
% Compute finely-spaced frequency response of designed filter
Y = fftshift(fft(h,1024));
%[H,wfine] = freqz(h,1,1024);
subplot(311);
plot(h);
title("Time domain signal");
subplot(312);
plot(abs(Y));
title("Magnitude of frequency response");
subplot(313);
plot(angle(Y));
title("Phase response");
end