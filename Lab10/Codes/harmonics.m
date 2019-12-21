function y = harmonics(t,f0,harmamps,harmphase)
y = zeros(size(t));
for i =1:length(harmamps)
    y=y+harmamps(i)*sin(2*pi*i*f0*t + harmphase(i)); %generate harmonics 
end
y = y/max(y(:))*0.95;
end