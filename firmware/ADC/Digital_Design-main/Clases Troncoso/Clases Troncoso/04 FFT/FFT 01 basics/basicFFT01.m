% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Basic analysis

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

x1 = abs(fft(Impulse0w));
x2 = abs(fft(Step0w));
x3 = (fft(Sine05qw));
x4 = abs(fft(Sine60qw));
x5 = abs(fft(Sine120qw));
x6 = abs(fft(Sine180qw));
x7 = abs(fft(Harmonic60qw));

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