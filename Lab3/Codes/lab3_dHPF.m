T=2*pi;
N=(length(A)-1)/2;
A = [0.5 0 0 0 0.5i 0 -0.5i 0 0 0 0.5]; 
wo = (2*pi)/T;
t=-6*pi:0.001:6*pi;
x=sin(t)+cos(5*t);
subplot(2,1,1);
plot(t,x);
title("Input signal: sin(t)+cos(5t)");
wc = 3.5;
for k = -5:5
   if (k*wo< wc && k*wo> -wc)
       A(k+N+1)=0;
   end
end
y=partialfouriersum(A,T,t);
subplot(2,1,2);
plot(t,y);
title("Output signal");
