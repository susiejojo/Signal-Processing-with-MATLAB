N=71;
% w1=rectwin(N);
% hp_fir(w1,N)
% w2 = bartlett(N);
% hp_fir(w2,N);
% w3 = hamming(N);
% hp_fir(w3,N);
% w4 = hanning(N);
% hp_fir(w4,N);
w5 = blackman(N);
hp_fir(w5,N);