% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Time located signals

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse0w        Impulse128w      Sine180qw
%     Sine180_128w     Sine180_512w     Sine180_900w
%     SineTime4w       Chirp5_100w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse0gen;
load Impulse128gen;
load Sine180qgen;
load Sine180_128gen;
load Sine180_512gen;
load Sine180_900gen;
load SineTime4gen;
load Chirp5_100gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Time-located impulses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa = abs(fft(Impulse0w));
x1 = xa(1:512);
xa = abs(fft(Impulse128w));
x2 = xa(1:512);
xa = abs(fft(Sine180qw));
x3 = xa(1:512);
xa = abs(fft(Sine180qw + Impulse128w));
x4 = xa(1:512);

figure(1);
subplot(2,4,1), plot(Impulse0w,'r');
subplot(2,4,2), plot(Impulse128w,'r');
subplot(2,4,3), plot(Sine180qw,'r');
subplot(2,4,4), plot(Sine180qw + Impulse128w,'r');
subplot(2,4,5), stem(x1,'.');
subplot(2,4,6), stem(x2,'.');
subplot(2,4,7), stem(x3,'.');
subplot(2,4,8), stem(x4,'.');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Time-located sinusoidal signals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa = abs(fft(Sine180_128w));
x5 = xa(1:512);
xa = abs(fft(Sine180_512w));
x6 = xa(1:512);
xa = abs(fft(Sine180_900w));
x7 = xa(1:512);

figure(2);
subplot(2,3,1), plot(Sine180_128w,'r');
subplot(2,3,2), plot(Sine180_512w,'r');
subplot(2,3,3), plot(Sine180_900w,'r');
subplot(2,3,4), stem(x5,'.');
subplot(2,3,5), stem(x6,'.');
subplot(2,3,6), stem(x7,'.');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% Time-located multiple-sinusoidal signals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa = abs(fft(SineTime4w));
x8 = xa(1:512);
y9(1:1024) = SineTime4w(1024:-1:1);
xa = abs(fft(y9));
x9 = xa(1:512);

figure(3);
subplot(2,2,1), plot(SineTime4w,'r');
subplot(2,2,2), plot(y9,'r');
subplot(2,2,3), stem(x8,'.');
subplot(2,2,4), stem(x9,'.');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 5
% Chirp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa  = abs(fft(Chirp5_100w));
x10 = xa(1:512);

figure(4);
subplot(2,1,1), plot(Chirp5_100w,'r');
subplot(2,1,2), stem(x10,'.');