% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Noise effects

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse0w       Step0w         Sine05qw
%     Sine60qw        Sine120qw      Sine180qw
%     Harmonic60qw    WhiteNoise01w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse0gen;
load Step0gen;
load Sine05qgen;
load Sine60qgen;
load Sine120qgen;
load Sine180qgen;
load Harmonic60qgen;
load WhiteNoise01gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Direct FFT computation of input signals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa = abs(fft(Impulse0w));
x1 = xa(1:512);
xa = abs(fft(Step0w));
x2 = xa(1:512);
xa = abs(fft(Sine05qw));
x3 = xa(1:512);
xa = abs(fft(Sine60qw));
x4 = xa(1:512);
xa = abs(fft(Sine120qw));
x5 = xa(1:512);
xa = abs(fft(Sine180qw));
x6 = xa(1:512);
xa = abs(fft(Harmonic60qw));
x7 = xa(1:512);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Noise addition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Noise level
na = 0.05;

% Noise addition
y1 = Impulse0w + na*WhiteNoise01w;
y2 = Step0w + na*WhiteNoise01w;
y3 = Sine05qw + na*WhiteNoise01w;
y4 = Sine60qw + na*WhiteNoise01w;
y5 = Sine120qw + na*WhiteNoise01w;
y6 = Sine180qw + na*WhiteNoise01w;
y7 = Harmonic60qw + na*WhiteNoise01w;

% FFT computation
za = abs(fft(y1));
z1 = za(1:512);
za = abs(fft(y2));
z2 = za(1:512);
za = abs(fft(y3));
z3 = za(1:512);
za = abs(fft(y4));
z4 = za(1:512);
za = abs(fft(y5));
z5 = za(1:512);
za = abs(fft(y6));
z6 = za(1:512);
za = abs(fft(y7));
z7 = za(1:512);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% FFT with noise effects
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);
subplot(2,3,1), plot(Impulse0w), hold on, plot(y1,'r'), hold off;
subplot(2,3,2), plot(Step0w), hold on, plot(y2,'r'), hold off;
subplot(2,3,3), plot(Sine05qw), hold on, plot(y3,'r'), hold off;
subplot(2,3,4), stem(x1,'.'), hold on, stem(z1,'r.'), hold off;
subplot(2,3,5), stem(x2,'.'), hold on, stem(z2,'r.'), hold off;
subplot(2,3,6), stem(x3,'.'), hold on, stem(z3,'r.'), hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 5
% Harmonic FFT with noise effects
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);
subplot(2,4,1), plot(Sine60qw), hold on, plot(y4,'r'), hold off;
subplot(2,4,2), plot(Sine120qw), hold on, plot(y5,'r'), hold off;
subplot(2,4,3), plot(Sine180qw), hold on, plot(y6,'r'), hold off;
subplot(2,4,4), plot(Harmonic60qw), hold on, plot(y7,'r'), hold off;
subplot(2,4,5), stem(x4,'.'), hold on, stem(z4,'r.'), hold off;
subplot(2,4,6), stem(x5,'.'), hold on, stem(z5,'r.'), hold off;
subplot(2,4,7), stem(x6,'.'), hold on, stem(z6,'r.'), hold off;
subplot(2,4,8), stem(x7,'.'), hold on, stem(z7,'r.'), hold off;