N=71;
% w1=rectwin(N);
% lp_fir(w1,N);
% w2 = bartlett(N);
% lp_fir(w2,N);
% w3 = hamming(N);
% lp_fir(w3,N);
% w4 = hanning(N);
% lp_fir(w4,N);
w5 = blackman(N);
lp_fir(w5,N);
%2a) Yes, otherwise it would not be possible to implement a LPF.
%2b)If the windows are anti-symmetric then the filter may not be suited for
%   low pass or high pass if N is odd, and low pass filter if N is even.
%2c)Yes, the phase response is linear for the filters.
%2d)The side lobes tell us about the spectral leakage in the window. The rectangular window has a 
%   very narrow main lobe, but the side lobes are quite high, at ~13 dB. 
%   Other filters have significantly fatter main lobes, but fare much better in the side lobe suppression.
%   Hence a trade-off arises.
%2e)While trying to separate/identify two signals that are fairly close in
%frequency, but similar in strength, then we should choose the rectangular,
%because it will give you the best resolution, while if they are of different frequencies we can pick the
% other windows.