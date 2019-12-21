b = [0 1];
r = 0.95;
theta = 0:0.1:pi;
for theta=0:0.1:pi
    a = [1 -2*r*cos(theta) r^2];
    n = -3*pi:0.01:3*pi;
    freqz(b,a,n);
    title("With changing theta");
    pause(2);

end
% as theta increases at constant r, the magnitude first increases and then
% decreases. At theta=0 the frequency response is that of a Low pass
% Filter, and at theta= pi it is that of a High Pass Filter.
