t_fine = 0:0.0001:2;
x = cos(5*pi*t_fine);
title ("Original signal & sinc interpolated signals");
t1 = 0:0.1:2;
t2 = 0:0.2:2;
t3 = 0:0.3:2;
%original signals 
xn1 = cos(5*pi*t1);
xn2 = cos(5*pi*t2);
xn3 = cos(5*pi*t3);
xr1 = zeros(size(t_fine));
xr2 = zeros(size(t_fine));
xr3 = zeros(size(t_fine));
for i= 1:length(t1)
    xr1 = xr1 + xn1(i) * sinc ((t_fine - t1(i))/0.1); %interpolation for T=0.1
end
for i= 1:length(t2)
    xr2 = xr2 + xn2(i) * sinc ((t_fine - t2(i))/0.2); %interpolation for T=0.2
end
for i= 1:length(t3)
    xr3 = xr3 + xn3(i) * sinc ((t_fine - t3(i))/0.3); %interpolation for T=0.3
end
fprintf("Nyquist rate is : 10pi\n"); %Nyquist rate

%Plotting
subplot (2,2,1);
plot (t_fine,x,'r');
hold on;
plot (t_fine,xr1,'b--');
legend("Original signal","For T=0.1");
title("Interpolated signal for T=0.1");
subplot (2,2,2);
plot (t_fine,x,'r');
hold on;
plot (t_fine,xr2,'k--');
legend("Original signal","For T=0.2");
title("Interpolated signal for T=0.2");
subplot (2,2,3);
plot (t_fine,x,'r');
hold on;
plot (t_fine,xr3,'m--');
legend("Original signal","For T=0.3");
title("Interpolated signal for T=0.3");