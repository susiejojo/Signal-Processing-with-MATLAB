x = 0:pi/100:2*pi;
y1 = 2*cos(x);
y2 = cos(x);
y3 = 0.5*cos(x);
plot(x,y1,'g-*',x,y2,'m-',x,y3,'r:x')
xlabel("0 \leq x \leq 2\pi");
xticks([0  pi/2 pi 3*pi/2 2*pi])
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi'})
ylabel("Cosine functions");
legend("2*cos(x)","cos(x)","0.5*cos(x)");
