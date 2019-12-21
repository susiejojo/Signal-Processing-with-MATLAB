function [b,a] = notch(w0,r)
% Compute denominator polynomial from r and w0
b = [1 -2*cos(w0) 1];
% Compute numerator polynomial from w0
a = [1 -2*r*cos(w0) r^2];
% Determine gain so that frequency response has magnitude 1 at 0
b = b*((1+(r^2)-2*r*cos(w0))/(2-2*cos(w0))) ;
% Diagnostic display
freqz(b,a);
fvtool(b,a);
