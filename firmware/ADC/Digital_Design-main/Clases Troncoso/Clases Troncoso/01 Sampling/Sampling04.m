% Sampling theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 1.4
%     Non-stationary signal sampling

clear all;

% User parameters
fc = 100;             % Input frequency
ph = 0.0;            % Input phase

% Fixed parameters
fs = 1000;           % Sampling frequency in Hz
Ts = 1.0;            % Running time for experimentation

% Oscilloscope-like plot
N = floor(fs*Ts);    % Samples to be taken
V = 20;              % Oversampling rate for graphics
M = V*N;             % Oversampled samples
for k=0:M
    yv(k+1) = sin(2.0*pi*fc*k/M + ph); % Oversampled function as reference
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

% Non-stationary signals:
%     1. Overdamped impulse
%     2. Underdamped impulse
%     3. Overdamped step
%     4. Underdamped step
%     5. Sinusoidal with random spikes
%     6. Chirp
%     7. Time-located frequency
%     8. Time-located frequencies