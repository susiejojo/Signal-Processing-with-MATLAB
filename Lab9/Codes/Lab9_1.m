N = 10;
x = rand(100,1);
h = ones(4,1);
y = overlapsave(h,x,N);
subplot(2,2,1);
plot(1:length(y),y);
title("Convolution through fft");
subplot(2,2,2);
plot(1:(length(x)+length(h)-1),conv(x,h));
title("Convolution through inbuilt function");
subplot(2,2,3);
plot(1:(length(x)+length(h)-1),conv(x,h)'-y);
title("Error");
