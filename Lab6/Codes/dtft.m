function X = dtft(x, N0, w)
% Evaluate the DTFT sum directly for each of the w samples
for i=1:length(w)
X(i) = 0;
for n= (1-N0):(length(x)-N0)
    X(i) = X(i) + x(n+N0)*exp((w(i)*n)*(-1j));
end
end
% Plot the DTFT magnitude and phase
figure;
subplot(211); plot(w,abs(X));
title("For unit step");
ylabel("Magnitude");
subplot(212); plot(w,angle(X));
ylabel("Phase");
% Plot the DTFT real and imaginary components
figure;
subplot(211); plot(w,real(X));
title("For unit step");
ylabel("Real part");
subplot(212); plot(w,imag(X));
ylabel("Imaginary part");
end