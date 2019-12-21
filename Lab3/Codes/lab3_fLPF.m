T=2*pi;
N=7;
t=-6*pi:0.001:6*pi;
A = zeros(1,2*N+1);
wo = (2*pi)/T;
T1=2;
%reconstruction of wave
for k =-N:N
   A(k+N+1)= 2/(k*wo*T)*sin(k*wo*T1);
end
A(N+1)=(2*T1)/T;
x=partialfouriersum(A,T,t);
subplot(2,1,1);
plot(t,x);
title("Input signal");
wc = 3.5;
for k = -N:N
   if (k*wo> wc || k*wo< -wc)
       A(k+N+1)=0;
   end
end
y=partialfouriersum(A,T,t);
subplot(2,1,2);
plot(t,y);
title("Output signal");