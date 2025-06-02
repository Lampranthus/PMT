% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% Chirp 100-150
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 10.24;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
a  = 1.0;            % Amplitude
f1 = 100;            % Start frequency
f2 = 150;            % End frequency
% Computation
df = (f2-f1)/N;
for i=0:N-1
    Chirp100_150w(i+1) = a*sin(2.0*pi*(f1+(i)*df)*i*Ts);
end;

save Chirp100_150gen Chirp100_150w