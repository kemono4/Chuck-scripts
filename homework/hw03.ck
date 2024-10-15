float freqArray[6];
[0.3,0.2,0.1,0.1,0.1,0.1] @=> float gainArray[];

220 => float base;
base => freqArray[0];

1 => int i;
while (i < freqArray.cap()){
    base*(i+1) => freqArray[i];
    i++;
}

SinOsc s0 => dac;
SinOsc s1 => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
SinOsc s5 => dac;

freqArray[0] => s0.freq;
gainArray[0] => s0.gain;
freqArray[1] => s1.freq;
gainArray[1] => s1.gain;
freqArray[2] => s2.freq;
gainArray[2] => s2.gain;

freqArray[3] => s3.freq;
gainArray[3] => s3.gain;
freqArray[4] => s4.freq;
gainArray[4] => s4.gain;
freqArray[5] => s5.freq;
gainArray[5] => s5.gain;


1::second => now;
