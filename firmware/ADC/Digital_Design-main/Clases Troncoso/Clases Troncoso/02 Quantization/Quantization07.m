% Sampling theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.7
%     Quantization effects

clear all;

% User parameters
fc = 10;             % Input frequency
ph = 0.0;            % Input phase
b  = 24;             % Quantization bits

% Fixed parameters
fs = 1000;           % Sampling frequency in Hz
Ts = 1.0;            % Running time for experimentation

% Sampling and quantization
N = floor(fs*Ts);    % Samples to be taken
V = 20;              % Oversampling rate for graphics
M = V*N;             % Oversampled samples
Q = 2^(b-1);         % Quantization factor for sine function
for k=0:M-1
    yv(k+1) = sin(2.0*pi*fc*k/M + ph); % Oversampled function as reference
end;
for k=0:N-1
    s = V*k;
    for i=0:V-1
        yo(s+i+1) = yv(s+1);                  % Sampled signal
        yt(s+i+1) = floor(Q*yv(s+1))/Q;       % Quantization by truncation
        yr(s+i+1) = floor(Q*yv(s+1) + 0.5)/Q; % Quantization by rounding
    end;
end;

% Oscilloscope-like plot
figure(1);
plot(yv,'r');
hold on;
plot(yo);
plot(yt,'g');
plot(yr,'m');

% Quantization error
Ef = yv - yo; % Floating point
Et = yv - yt; % Truncation
Er = yv - yr; % Rounding

% Error plot
figure(2);
plot(Ef);
hold on;
plot(Et,'g');
plot(Er,'m');

% Experimentation procedure:
%     1. Run as is
%     2. Change quantization bits to 16
%     3. Change quantization bits to 8
%     4. Change quantization bits to 6