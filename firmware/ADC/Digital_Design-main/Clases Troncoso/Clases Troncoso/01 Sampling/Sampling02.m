% Sampling theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 1.2
%     Stationary-signal sampling

clear all;

% User parameters
fc = 1;             % Input frequency
ph = 0.0;            % Input phase

% Fixed parameters
fs = 1000;           % Sampling frequency in Hz
Ts = 1.0;            % Running time for experimentation

% Oscilloscope-like plot
N = floor(fs*Ts);    % Samples to be taken
V = 20;              % Oversampling rate for graphics
M = V*N;             % Oversampled samples
M = 50;
for k=0:M
    yv(k+1) = sin(2.0*pi*fc*k/M + ph); % Oversampled function as reference
end;
% for k=0:N
%     s = V*k;
%     for i=0:V-1
%         yo(s+i+1) = yv(s+1); % Quasi-continous sampled signal, more realistic
%     end;
% end;
figure(1);
stem(yv,'r');
hold on;
% plot(yo);
figure(2);
YV=(abs(fft(yv)));
plot(YV(1:20));

% Experimentation procedure:
%     1. Change function to include 2nd harmonic
%     2. Change function to include 3rd harmonic
%     3. Change function to triangular
%     4. Change function to square
%     5. Change function to triangular modulated
%     6. Change function to square modulated (ASK, PSK)
%     7. Change function to square overdamped
%     8. Change function to square underdamped