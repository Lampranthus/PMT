% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Basic analysis without mirror spectrum

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse0w       Step0w         Sine05qw
%     Sine60qw        Sine120qw      Sine180qw
%     Harmonic60qw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse0gen;
load Step0gen;
load Sine05qgen;
load Sine60qgen;
load Sine120qgen;
load Sine180qgen;
load Harmonic60qgen;

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
% Basic FFT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);
subplot(2,3,1), plot(Impulse0w,'r');
subplot(2,3,2), plot(Step0w,'r');
subplot(2,3,3), plot(Sine05qw,'r');
subplot(2,3,4), stem(x1,'.');
subplot(2,3,5), stem(x2,'.');
subplot(2,3,6), stem(x3,'.');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% Harmonic FFT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);
subplot(2,4,1), plot(Sine60qw,'r');
subplot(2,4,2), plot(Sine120qw,'r');
subplot(2,4,3), plot(Sine180qw,'r');
subplot(2,4,4), plot(Harmonic60qw,'r');
subplot(2,4,5), stem(x4,'.');
subplot(2,4,6), stem(x5,'.');
subplot(2,4,7), stem(x6,'.');
subplot(2,4,8), stem(x7,'.');