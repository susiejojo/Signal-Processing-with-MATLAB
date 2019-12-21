t_fine = 0:0.0001:2;
x = 1 + sin(3*pi*t_fine) + cos(5*pi*t_fine); %original x(t)
plot (t_fine,x,'r');
hold on;
title ("Original signal & linear interpolated signal");
t = 0:0.1:2;
xn = 1 + sin(3*pi*t) + cos(5*pi*t); %sampled signal x[n]
x_s = interp1(t,xn,t_fine,'linear');
plot (t_fine,x_s,'b--');
grid on;
legend("Origial signal","Linear interpolated signal");
    