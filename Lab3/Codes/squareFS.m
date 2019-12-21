function [A,y,sq,absr,mse] = squareFS(T,T1,t)
N =	round(2*T/T1);
A = zeros(1,2*N+1);
wo = (2*pi)/T;
%reconstruction of wave
for k =-N:N
   A(k+N+1)= 2/(k*wo*T)*sin(k*wo*T1);
end
A(N+1)=(2*T1)/T;
% Compute Fourier partial sum (see Problem 1.1)
y = zeros(size(t));
for k=-N:N
y = y + A(k+N+1)*exp(1i*k*wo*t);
end
y = real(y);
%ideal wave generation
sq = rectangularPulse(-T1,T1,t);
absr = max(abs(y-sq));
mse = (1/length(t))*sum((y-sq).^2);
end