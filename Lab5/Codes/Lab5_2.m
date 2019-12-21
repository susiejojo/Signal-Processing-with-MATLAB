fs = 48000;
a = 1; %duration of attack
d = 1; %duration of decay
s = 0.5; %sustain level
dur = 1; %duration of sustain
r = 1; %duration of release
f0 = 500;
n= 9;
harmamps = rand(n,1);
harmphase = rand(n,1);
[t,env] = envelope(fs,a,d,s,dur,r);
y = harmonics(t,f0,harmamps,harmphase);
plot(t,env);
xlabel("t")
ylabel("e(t)")
title("adsr signal");
sound(y.*env,fs);