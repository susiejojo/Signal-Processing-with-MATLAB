t_fine = 0:0.0001:2;
x = 1 + sin(3*pi*t_fine) + cos(5*pi*t_fine); %original x(t)
plot (t_fine,x,'r');
title ("Original signal & sample and hold signal");
t = 0:0.1:2; %intervals for sampling
hold on;
xn = 1 + sin(3*pi*t) + cos(5*pi*t); %sampled signal x[n]
x_s = interp1(t,xn,t_fine,'previous');
plot (t_fine,x_s,'b--');
grid on;
legend("Original signal","Sample and hold signal");
    