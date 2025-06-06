% IIR design
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse128w       Step128w         Sine05_128w
%     Sine60_128w       Sine120_128w     Sine180_128w
%     Harmonic60_128w   SineTime4w       Chirp5_100w
%     WhiteNoise01w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse128gen;
load Step128gen;
load Sine05_128gen;
load Sine60_128gen;
load Sine120_128gen;
load Sine180_128gen;
load Harmonic60_128gen;
load SineTime4gen;
load Chirp5_100gen;
load WhiteNoise01gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% IIR filter design
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% User parameters
% Sampling frequency in Hz
Fs = 10000.0;
% Filter order
N  = 5;
% Cutoff frequency
%     For LP and HP, Fc is a single value
%     For BP and BS, Fc is an ordered array [fc1 fc2]
Fc = [1000.0 2000.0];
% Minimum attenuation in the stop-band (dB) for inverse Chebyshev
S  = 40;

% Computation
% Normalized cutoff frequency
Fn = 2.0*Fc/Fs;
% Digital IIR filter
%     butter, cheby2
%     LP 'low'     HP 'high'     BP 'bandpass'     BS 'stop'
[a,b] = cheby2(N,S,Fn,'stop');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Floating-point analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Frequency response
figure(1);
freqz(a,b);

% Standard response
y1 = filter(a,b,Impulse128w);
y2 = filter(a,b,Step128w);
y3 = filter(a,b,Sine05_128w);
figure(2);
subplot(3,1,1), stem(Impulse128w,'r.'), hold on, stem(y1,'.'), hold off;
subplot(3,1,2), stem(Step128w,'r.'), hold on, stem(y2,'.'), hold off;
subplot(3,1,3), stem(Sine05_128w,'r.'), hold on, stem(y3,'.'), hold off;

% Extended response
y4 = filter(a,b,Sine60_128w);
y5 = filter(a,b,Sine120_128w);
y6 = filter(a,b,Sine180_128w);
y7 = filter(a,b,Harmonic60_128w);
y8 = filter(a,b,SineTime4w);
y9 = filter(a,b,Chirp5_100w);
figure(3);
subplot(2,3,1), stem(Sine60_128w,'r.'), hold on, stem(y4,'.'), hold off;
subplot(2,3,2), stem(Sine120_128w,'r.'), hold on, stem(y5,'.'), hold off;
subplot(2,3,3), stem(Sine180_128w,'r.'), hold on, stem(y6,'.'), hold off;
subplot(2,3,4), stem(Harmonic60_128w,'r.'), hold on, stem(y7,'.'), hold off;
subplot(2,3,5), stem(SineTime4w,'r.'), hold on, stem(y8,'.'), hold off;
subplot(2,3,6), stem(Chirp5_100w,'r.'), hold on, stem(y9,'.'), hold off;

% Noise effects
x10 = Impulse128w + 0.05*WhiteNoise01w;
x11 = Step128w    + 0.05*WhiteNoise01w;
x12 = Sine05_128w + 0.05*WhiteNoise01w;
y10 = filter(a,b,x10);
y11 = filter(a,b,x11);
y12 = filter(a,b,x12);
figure(4);
subplot(3,1,1), stem(x10,'r.'), hold on, stem(y10,'.'), hold off;
subplot(3,1,2), stem(x11,'r.'), hold on, stem(y11,'.'), hold off;
subplot(3,1,3), stem(x12,'r.'), hold on, stem(y12,'.'), hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% Quantization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% User parameters
n1 = 18;     % Signal bits
n2 = 18;     % Coefficient bits

% Signal quantization
R = 2.0*max(abs(max(Impulse128w)),abs(min(Impulse128w)));
Impulse128wq = R*floor(Impulse128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Step128w)),abs(min(Step128w)));
Step128wq = R*floor(Step128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Sine05_128w)),abs(min(Sine05_128w)));
Sine05_128wq = R*floor(Sine05_128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Sine60_128w)),abs(min(Sine60_128w)));
Sine60_128wq = R*floor(Sine60_128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Sine120_128w)),abs(min(Sine120_128w)));
Sine120_128wq = R*floor(Sine120_128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Sine180_128w)),abs(min(Sine180_128w)));
Sine180_128wq = R*floor(Sine180_128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Harmonic60_128w)),abs(min(Harmonic60_128w)));
Harmonic60_128wq = R*floor(Harmonic60_128w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(SineTime4w)),abs(min(SineTime4w)));
SineTime4wq = R*floor(SineTime4w*2^n1/R+0.5)/2^n1;
R = 2.0*max(abs(max(Chirp5_100w)),abs(min(Chirp5_100w)));
Chirp5_100wq = R*floor(Chirp5_100w*2^n1/R+0.5)/2^n1;

% Coefficient quantization
R = 2.0*max(abs(max(a)),abs(min(a)));
aq = R*floor(a*2^n2/R+0.5)/2^n2;
bq = R*floor(b*2^n2/R+0.5)/2^n2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 5
% Fixed-point analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Frequency response
figure(5);
freqz(aq,bq);

% Standard response
z1 = filter(aq,bq,Impulse128wq);
z2 = filter(aq,bq,Step128wq);
z3 = filter(aq,bq,Sine05_128wq);
figure(6);
subplot(3,1,1), stem(y1,'r.'), hold on, stem(z1,'.'), hold off;
subplot(3,1,2), stem(y2,'r.'), hold on, stem(z2,'.'), hold off;
subplot(3,1,3), stem(y3,'r.'), hold on, stem(z3,'.'), hold off;

% Extended response
z4 = filter(aq,bq,Sine60_128wq);
z5 = filter(aq,bq,Sine120_128wq);
z6 = filter(aq,bq,Sine180_128wq);
z7 = filter(aq,bq,Harmonic60_128wq);
z8 = filter(aq,bq,SineTime4wq);
z9 = filter(aq,bq,Chirp5_100wq);
figure(7);
subplot(2,3,1), stem(y4,'r.'), hold on, stem(z4,'.'), hold off;
subplot(2,3,2), stem(y5,'r.'), hold on, stem(z5,'.'), hold off;
subplot(2,3,3), stem(y6,'r.'), hold on, stem(z6,'.'), hold off;
subplot(2,3,4), stem(y7,'r.'), hold on, stem(z7,'.'), hold off;
subplot(2,3,5), stem(y8,'r.'), hold on, stem(z8,'.'), hold off;
subplot(2,3,6), stem(y9,'r.'), hold on, stem(z9,'.'), hold off;

% Noise effects
w10 = Impulse128wq + 0.05*WhiteNoise01w;
w11 = Step128wq    + 0.05*WhiteNoise01w;
w12 = Sine05_128wq + 0.05*WhiteNoise01w;
z10 = filter(aq,bq,w10);
z11 = filter(aq,bq,w11);
z12 = filter(aq,bq,w12);
figure(8);
subplot(3,1,1), stem(y10,'r.'), hold on, stem(z10,'.'), hold off;
subplot(3,1,2), stem(y11,'r.'), hold on, stem(z11,'.'), hold off;
subplot(3,1,3), stem(y12,'r.'), hold on, stem(z12,'.'), hold off;

% Quantization-error behavior
e1 = y1 - z1;
e2 = y2 - z2;
e3 = y3 - z3;
figure(9);
subplot(3,1,1), stem(e1,'.');
subplot(3,1,2), stem(e2,'.');
subplot(3,1,3), stem(e3,'.');

% Pole-zero location
figure(10);
zplane(a,b);
figure(11);
zplane(aq,bq);