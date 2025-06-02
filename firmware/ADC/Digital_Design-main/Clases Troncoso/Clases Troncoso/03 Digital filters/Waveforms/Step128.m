% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% Step at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.024;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 127;             % Step position (0:N-1)
a = 1.0;             % Amplitude
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Step128w(1:N)   = 0.0;
Step128w(k+1:N) = a;

save Step128gen Step128w