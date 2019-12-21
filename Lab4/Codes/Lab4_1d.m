t_fine = 0:0.0001:2;
x = 1 + sin(3*pi*t_fine) + cos(5*pi*t_fine); %original signal
t = 0:0.1:2;
xn = 1 + sin(3*pi*t) + cos(5*pi*t); %sampled signal
x_s = interp1(t,xn,t_fine,'previous'); %sample and hold
fprintf("MSE for sample and hold: %d\n",sum((x_s-x).^2)/length(t_fine));
x_l = interp1(t,xn,t_fine,'linear'); %linear interpolation
fprintf("MSE for linear interpolation: %d\n",sum((x_l-x).^2)/length(t_fine));
xr = zeros(size(t_fine));
ws = (2*pi)/0.1;
wc = ws/2;
for i= 1:length(t) %sinc interpolation
    xr = xr + xn(i) * sinc ((t_fine - t(i))/0.1);
end
fprintf("MSE for sinc interpolation: %d\n",sum((xr-x).^2)/length(t_fine));