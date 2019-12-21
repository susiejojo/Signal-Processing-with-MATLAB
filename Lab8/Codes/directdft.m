function X = directdft(x)
N= length(x);
y = (0:N-1);
y_f = y' * y;
F = exp(-1i*2*pi/N).^y_f;
X = F *x;
end
