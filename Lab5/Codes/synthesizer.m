function y = synthesizer(notes,durs,harmamps,adsr,fs)
% Initialize output as empty
y = [];
% Loop over the notes
for i=1:length(notes)
% Compute the time vector and ADSR envelope for this note
[t,e] = envelope(fs,adsr(1)*durs(i),adsr(2)*durs(i),adsr(3),adsr(4)*durs(i),adsr(5)*durs(i));
% Compute the sum of harmonics for this note
harmphase = rand(size(harmamps));
h = harmonics(t,notes(i),harmamps,harmphase);
% Modulate the sum of harmonics with the envelope
n = h.*e;
% Add the note to the sequence
y = [y,n];
end
% Play the sound
sound(y,fs);
end