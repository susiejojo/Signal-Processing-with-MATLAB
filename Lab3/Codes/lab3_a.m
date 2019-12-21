T=2*pi;
N=7;
A = zeros(1,2*N+1); %initialising A with random coefficients
wo = (2*pi)/T;
for k =-N:N
   A(k+N+1)= rand();
end
t=-6*pi:0.001:6*pi;
x=partialfouriersum(A,T,t); %constructing input signal using previously defined function partialfouriersum
subplot(2,1,1);
plot(t,x);
title("Input signal");
wc = 3.5;
for k = -N:N
   if (k*wo> wc || k*wo< -wc) %for Low pass Filter the Fourier coefficients become 0 when w=kwo > wc or <-wc
       A(k+N+1)=0;
   end
end
y=partialfouriersum(A,T,t); %constructing output signal
subplot(2,1,2);
plot(t,y);
title("Output signal");
