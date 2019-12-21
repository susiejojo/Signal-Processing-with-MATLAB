b = 1;
for p =-1:0.1:1
    a = [1 -p];
    n = -3*pi:0.01:3*pi;
    freqz(b,a,n);
    title("Transfer function for changing p");
    pause(0.5);
end