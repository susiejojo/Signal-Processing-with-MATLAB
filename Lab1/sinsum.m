function xt = sinsum(N)
ck=1:2:N;
t=0:0.01:1;
xt=1./ck*sin(2*pi*ck'*t);
end