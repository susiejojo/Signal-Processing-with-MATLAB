T=2*pi;
N=7;
A = zeros(1,2*N+1);
wo = (2*pi)/T;
T1=2;
%reconstruction of wave
for k =-N:N
   A(k+N+1)= 2/(k*wo*T)*sin(k*wo*T1);
end
A(N+1)=(2*T1)/T;
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
