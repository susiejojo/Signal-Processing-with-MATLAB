b = [0 1];
r = 2;
theta = 1/3*pi;
a = [1 -2*r*cos(theta) r^2];
zplane(b,a);
title("pole-zero plot for r=2, theta = 1/3*pi");
%Poles are at z = r*e^(j*theta) and z = r*e^(-j*theta)
%Zero at z =0