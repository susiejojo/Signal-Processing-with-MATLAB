T=2*pi;
A = ones(1,15);
N= (length(A)-1)/2;
wo = (2*pi)/T;
t=-6*pi:0.001:6*pi;
x=partialfouriersum(A,T,t);
subplot(2,1,1);
plot(t,x);
title("Input signal");
wc = 3.5;
for k = -N:N
   if (k*wo< wc && k*wo> -wc)
       A(k+N+1)=0;
   end
end
y=partialfouriersum(A,T,t);
subplot(2,1,2);
plot(t,y);
title("Output signal");
