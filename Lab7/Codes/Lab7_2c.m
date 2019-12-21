b = [0 1];
theta = pi/3;
for r = 0:0.1:1
    a = [1 -2*r*cos(theta) r^2];
    n = -3*pi:0.01:3*pi;
    freqz(b,a,n);
    pause(1);
    title("With changing r");
end
%as r increases towards unity at constant theta the poles move closer to the origin and the magnitude of the impulse response
%increases.
