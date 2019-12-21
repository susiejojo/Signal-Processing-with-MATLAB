T=2*pi;
N=7;
A = zeros(1,2*N+1); %we generate 7 random coefficients for A
wo = (2*pi)/T;
for k =-N:N
   A(k+N+1)= rand();
end
t=-6*pi:0.001:6*pi;
x=partialfouriersum(A,T,t); %constructing input signal
subplot(2,1,1);
plot(t,x);
title("Input signal"); 
wc = 3.5;
for k = -N:N
   if (k*wo< wc && k*wo> -wc) %High Pass Filter allows frequencies (kwo>wc or <-wc and filters out in between -wc and wc
       A(k+N+1)=0;
   end
end
y=partialfouriersum(A,T,t); %constructing output signal
subplot(2,1,2);
plot(t,y);
title("Output signal");
