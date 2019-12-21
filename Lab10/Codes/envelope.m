function [t,env] = envelope(fs,a,d,s,dur,r)
% Attack: signal linearly increases from 0 to 1 in a seconds
t = 0:1/fs:a;
e = (1/a)*t;
% Decay: signal linearly decreases from 1 to s in d seconds
tdecay = (a+1/fs):1/fs:(a+d);
t = [t, tdecay];
e = [e, (s-1)/d*(tdecay-a)+1];
% Sustain: signal stays at s for dur seconds
tsustain = (a+d):1/fs:(a+d+dur);
t = [t, tsustain];
e = [e, ones(1,length(tsustain)).*s];
% Release: signal linearly decreases from s to 0 in r seconds
trelease = (a+d+dur):1/fs:(a+d+dur+r);
t = [t, trelease];
e = [e, s-(s/r)*(trelease-(a+d+dur))];
env = e;
end