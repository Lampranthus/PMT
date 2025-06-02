% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% White noise
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.024;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
mu = 0.0;            % Mean
sd = 1.0;            % Standard deviation
a  = 1.0;            % Noise amplitude
for i=0:N-1
    WhiteNoise01w(i+1) = a*random('norm',mu,sd);
end;

save WhiteNoise01gen WhiteNoise01w