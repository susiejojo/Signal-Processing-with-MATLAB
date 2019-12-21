T=2*pi;
N=7;
A = zeros(1,2*N+1);
wo = (2*pi)/T;
for k =-N:N
   A(k+N+1)= rand();
end
t=-6*pi:0.001:6*pi;
x=partialfouriersum(A,T,t);
subplot(2,1,1);
plot(t,x);
title("Input signal");
wc = 3.5;
for k = -N:N
   w = k*wo;
   H = 1/(1+w*1i);
   A(k+N+1) = A(k+N+1)*H;
end
y=partialfouriersum(A,T,t);
subplot(2,1,2);
plot(t,y);
title("Output signal");
