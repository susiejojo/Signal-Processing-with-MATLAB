function [fib,b,a] = fibonacci_iir(n)
% Determine IIR filter that produces Fibonacci sequence
b = [1 0 0];
a = [ 1 -1 -1];
% Create length-n impulse to drive filter
imp = [ones(n,1)];
% Determine impulse response
fib = filter(b,a,imp);
end