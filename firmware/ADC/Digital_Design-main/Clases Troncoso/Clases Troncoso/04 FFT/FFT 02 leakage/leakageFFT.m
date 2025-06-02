% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Leakage

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Sine60w        Sine120w      Sine180w
%     Harmonic60w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Sine60gen;
load Sine120gen;
load Sine180gen;
load Harmonic60gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Direct FFT computation of input signals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xa = abs(fft(Sine60w));
x1 = xa(1:512);
xa = abs(fft(Sine120w));
x2 = xa(1:512);
xa = abs(fft(Sine180w));
x3 = xa(1:512);
xa = abs(fft(Harmonic60w));
x4 = xa(1:512);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Harmonic FFT with leakage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);
subplot(2,4,1), plot(Sine60w,'r');
subplot(2,4,2), plot(Sine120w,'r');
subplot(2,4,3), plot(Sine180w,'r');
subplot(2,4,4), plot(Harmonic60w,'r');
subplot(2,4,5), stem(x1,'.');
subplot(2,4,6), stem(x2,'.');
subplot(2,4,7), stem(x3,'.');
subplot(2,4,8), stem(x4,'.');