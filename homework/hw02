[110, 220, 440 ,660, 880] @=> int freqArray[];
[0.2, 0.3, 0.5, 0.6, 0.7] @=> float gainArray[];
SinOsc sin_a => dac;

for (0 => int i; i < 5; i++){
    freqArray[i] => sin_a.freq;
    gainArray[i] => sin_a.gain;
    1::second => now;
}
