function X = radix2fft(x);
% x should be a length-N column vector
N = length(x);

Wn = exp(-1i * 2 *pi/N);
if ~isequal(unique(factor(N)),2)
error('N is not a power of 2!');
end
if N == 2
% Compute length-2 DFT directly (it's super simple)
X = [x(1)+x(2),x(1)-x(2)];
else
% Split input vector into even and odd parts
x_even = x(1:2:end);
x_odd = x(2:2:end);
% Take radix 2 FFT of each part
X_even = radix2fft(x_even);
X_odd = radix2fft(x_odd);
% Recombine length N/2 results into length N result
for k = 0:N/2-1
    
    X(k+1) = X_even(k+1) + power(Wn,k)*X_odd(k+1);
    X(k+N/2+1) = X_even(k+1) -power(Wn,k)*X_odd(k+1);
end
end