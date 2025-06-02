% Sampling theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 1.1
%     Pure sinusoidal sampling

clear all;

% User parameters
fc = 60;             % Input frequency
ph = 0.5;            % Input phase aqui es 0.5 segun el profe

% Fixed parameters
fs = 1000;           % Sampling frequency in Hz
Ts = 0.1;            % Running time for experimentation

% Sampling a pure sinusoidal input signal
N = floor(fs*Ts);    % Samples to be taken
for k=0:N
    y(k+1) = sin(2.0*pi*fc*k/N + ph); % Sampled function
end;

% Standard matlab output plot
figure(1);
plot(y);             % Interpolated plot, non-realistic
%  stem(y,'.');         % Sampled plot, too theoretical

% Oscilloscope-like plot
V = 20;                % Oversampling rate for graphics
M = V*N;               % Oversampled samples
for k=0:M
    yv(k+1) = sin(2.0*pi*fc*k/M + ph); % Oversampled function as reference
end;
for k=0:N
    s = V*k;
    for i=0:N-1
        yo(s+i+1) = y(k+1); % Quasi-continous sampled signal, more realistic
    end;
end;
% plot(yv,'r');
% hold on;
% plot(yo);

% Experimentation procedure:
%     1. Run as is for interpolated plot
%     2. Run as is for sampled plot
%     3. Run as is for oscilloscope-like plot
%     4. Change input frequency to 100 (recommended limit)
%     5. Change input frequency to 250
%     6. Change input frequency to 500 (Nyquist rate)
%     7. Change input phase at Nyquist rate
%     8. Change input frequency beyond Nyquist rate
%     9. Make changes at will