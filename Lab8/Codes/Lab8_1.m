for i = 5:20
    x = zeros(20,1);
    L = 5;
    x = [ones(L,1);zeros(i-L,1)];
    X = directdft(x)
    subplot(2,2,1);
    plot(x)
    title("Input signal")
    X_f = fft(x);
    subplot(2,2,2)
    plot(abs(X))
    title("DFT output");
    subplot(2,2,3)
    plot(abs(X_f))
    title("FFT output");
    pause(0.2);
end