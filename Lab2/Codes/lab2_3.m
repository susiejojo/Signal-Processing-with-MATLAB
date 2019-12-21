T1 = 0.1;
T = 1;
t = -0.5:0.001:0.5;
N = 1:5:100;
absr=zeros(1,length(N));
mse=zeros(1,length(N)); %initialised parameters
for i = 1:length(N) %varying N from 1 to 100
    [A, y ,sq,absr(i),mse(i)] = squareFS(T,T1,t,N(i));
    fprintf("Absolute error:%d\n",absr);
    fprintf("MSE:%d\n",mse);
end
% plot of mean squared error and absolute error
plot(N,absr,'r');
hold on;
plot(N,mse,'b');
xlabel("N");
title("Absolute error vs mean sq. error");
legend('Absolute error','Mean Squared Error');