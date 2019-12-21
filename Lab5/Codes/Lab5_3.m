notes = [240 270 300 320 360 400 450 480];
durs = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5];
harmamps = rand(6,1);
adsr = [1 1 0.5 1 1];
fs = 48000;
y = synthesizer(notes,durs,harmamps,adsr,fs);
plot(y)
title("Music synthesizer");