% Sampling theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 1.3
%     Stationary signal plus noise sampling

clear all;

% User parameters
fc = 10;             % Input frequency
ph = 0.0;            % Input phase
mu = 0.0;            % Mean
sd = 1.0;            % Standard deviation
am = 0.1;            % Noise amplitude

% Fixed parameters
fs = 1000;           % Sampling frequency in Hz
Ts = 1.0;            % Running time for experimentation

% Oscilloscope-like plot
N = floor(fs*Ts);    % Samples to be taken
V = 20;                % Oversampling rate for graphics
M = V*N;               % Oversampled samples
for k=0:M
    yv(k+1) = sin(2.0*pi*fc*k/M + ph) + am*random('norm',mu,sd); % Oversampled function as reference
end;
for k=0:N
    s = V*k;
    for i=0:V-1
        yo(s+i+1) = yv(s+1); % Quasi-continous sampled signal, more realistic
    end;
end;
figure(1);
plot(yv,'r');
hold on;
plot(yo);

% Experimentation procedure:
%     1. Run as is
%     2. Change noise amplitude at will
%     3. Change function to include harmonics
%     4. Change function to square
%     5. Change function to triangular
%     6. Change function to square modulated (ASK, PSK)
%     7. Change function to square overdamped
%     8. Change function to square underdamped