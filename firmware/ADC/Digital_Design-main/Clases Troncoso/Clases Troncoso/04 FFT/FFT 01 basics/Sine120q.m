% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% Sine 120Hz at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.024;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 117.1875;        % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine120qw(1:N) = 0.0;
for i=k:N-1
    Sine120qw(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

save Sine120qgen Sine120qw