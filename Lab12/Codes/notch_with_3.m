function [b,a] = notch_with_3(w0,r)
% Compute denominator polynomial from r and w0
b = [1.000 -2.026 2.148 -1.159 0.279]';
% Compute numerator polynomial from w0
a = [0.028  0.053 0.071  0.053 0.028]';
% Determine gain so that frequency response has magnitude 1 at w0
b = b*1;
% Diagnostic display
freqz(b,a);
fvtool(b,a);
end