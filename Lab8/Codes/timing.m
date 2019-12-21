function timing
    T1 = zeros(1,10); T2 = zeros(1,10); T3 = zeros(1,10);
    for i = 1:10
            N = power(2,i);t1 = 0; t2 = 0; t3 = 0;
            for M = 1:10
                x = rand(N,1);
                tic
                X1 = directdft(x);
                t1 = t1 + toc;
                tic
                X2 = radix2fft(x);
                t2 = t2 + toc;
                tic
                X3 = fft(x);
                t3 = t3 + toc;
            end
            t1 = t1/10; t2 = t2/10;t3 = t3/10;
            T1(i) = t1;
            T2(i) = t2;
            T3(i) = t3;
    end
    disp("T1");disp(T1);disp("T2");disp(T2);disp("T3");disp(T3);
    hold on; plot(1:10,T1);plot(1:10,T2);plot(1:10,T3);hold off;
    legend("Direct DFT","Radix2 FFT","FFT");
end