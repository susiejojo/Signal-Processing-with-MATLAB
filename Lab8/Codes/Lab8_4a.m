x = [1 2 3 4];
h = [1 2 3];
N = 4;
dftconv(x,h,N)
% Through FFT the complexity of convolution is O(Nlog(N)).
% Through direct convolution complexity is O(N^2)