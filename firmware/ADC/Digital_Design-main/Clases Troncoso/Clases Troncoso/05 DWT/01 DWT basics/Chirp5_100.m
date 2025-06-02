% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% Chirp 5-100
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.024;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
a  = 1.0;            % Amplitude
f1 = 5;              % Start frequency
f2 = 100;            % End frequency
% Computation
df = (f2-f1)/N;
for i=0:N-1
    Chirp5_100w(i+1) = a*sin(2.0*pi*(f1+(i)*df)*i*Ts);
end;

save Chirp5_100gen Chirp5_100w