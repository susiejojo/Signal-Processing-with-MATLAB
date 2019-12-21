n = 20;
[fib,b,a] = fibonacci_iir(n);
stem(fib);
zplane(b,a);
% the ROC lies outside of the outermost pole as the system is causal, and
% doesn't include unit circle. Hence unstable.