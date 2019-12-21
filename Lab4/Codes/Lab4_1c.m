t_fine = 0:0.0001:2;
x = 1 + sin(3*pi*t_fine) + cos(5*pi*t_fine); %original x(t)
plot (t_fine,x,'r');
title ("Original signal & sinc interpolated signal");
t = 0:0.1:2;
hold on;
xn = 1 + sin(3*pi*t) + cos(5*pi*t); %sampled signal x[n]
xr = zeros(size(t_fine));
ws = (2*pi)/0.1;
wc = ws/2;
for i= 1:length(t)
    xr = xr + xn(i) * sinc ((t_fine - t(i))/0.1); %for Ts = 0.1
end
plot (t_fine,xr,'b--');
legend("Original signal","Sinc interpolated signal");
fprintf("The quality of the signal is not uniform throughout. Towards the start and the end edges the \nreconstructed signal differs more from the original signal than in the rest of the graph. \nThis is because towards the end the right hand samples are not available to interpolate and\n towards the start the left hand samples are not available to interpolate.\n")