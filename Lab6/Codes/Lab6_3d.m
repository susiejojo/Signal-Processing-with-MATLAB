%H(e^(jw)) = 1/(1+ 0.9*e^(-jw))
w = -3*pi :0.01: 3*pi;
H = zeros(length(w));
for i = 1:length(w)
    H(i) = 1/(1+0.9*exp(w(i)*(-1i)));
end
figure;
subplot(211); plot(w,abs(H));
ylabel("Magnitude");
subplot(212); plot(w,angle(H));
ylabel("Phase");
% Plot the DTFT real and imaginary components
figure;
subplot(211); plot(w,real(H));
ylabel("Real part");
subplot(212); plot(w,imag(H));
ylabel("Imaginary part");