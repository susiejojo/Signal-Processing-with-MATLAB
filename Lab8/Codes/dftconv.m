function [conv_circ, conv_lin] = dftconv(h,x,N);
lx = length(x);
lh = length(h);
if N<max([lx lh])
error('N must be at least the length of the longer signal.')
end
% Compute order-N circular convolution based on length-N FFTs
X1 = fft(x,N);H1 = fft(h,N);F1 = ones(1,N);
for i =1:N
    F1(i) = X1(i)*H1(i);
end
conv_circ = ifft(F1);
% Compute linear convolution based on appropriate-length
% FFTs/zero padding
x_new = zeros(1,(lh+lx)-1);
x_new(1:lx) = x;
h_new = zeros(1,(lh+lx)-1);
h_new(1:lh) = h;
X2 = fft(x_new);
H2 = fft(h_new);
for i =1:(lh+lx-1)
    F2(i) = X2(i)*H2(i);
end
conv_lin = ifft(F2);
F3 = cconv(h,x,N);
F4 = conv(h,x);
subplot(2,1,1);
plot([1:N],conv_circ)
title("Circular convolution through DFT");
subplot(2,1,2);
plot([1:N],F3);
title("Actual circuar convolution");
figure;
subplot(2,1,1);
plot([1:(lx+lh-1)],conv_lin)
title("Linear convolution through DFT");
subplot(2,1,2);
plot([1:(lx+lh-1)],F4)
title("Actual linear convolution");
end