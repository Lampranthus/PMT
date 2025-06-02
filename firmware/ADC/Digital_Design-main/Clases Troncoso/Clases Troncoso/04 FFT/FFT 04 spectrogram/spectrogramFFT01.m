% FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Short-Time Fourier Transform
% Spectrogram

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Sine60qw         Sine120qw        Sine180qw
%     Chirp100_150w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Sine60qgen;
load Sine120qgen;
load Sine180qgen;
load Chirp100_150gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Generate signals for 10.24 seconds
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Time-located sine
x(1:10240) = 0.0;
N = 1024*3;
x(N+1:N+1024) = Sine60qw;
N = 1024*5;
x(N+1:N+1024) = Sine120qw;
N = 1024*7;
x(N+1:N+1024) = Sine180qw;

% Chirp
y = Chirp100_150w;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Compute the STFT at every 1.024 seconds
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:10
    N = (i-1)*1024;
    a = x(N+1:N+1024);
    b = abs(fft(a));
    w(i,1:512) = b(1:512);
end;

for i=1:10
    N = (i-1)*1024;
    a = y(N+1:N+1024);
    b = abs(fft(a));
    z(i,1:512) = b(1:512);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% Plot the spectrogram
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Frequency axis
for i=1:512
    F(i) = (i-1)*1000/1024;
end;

% Time axis
for i=1:10
    T(i) = i*10.24/10;
end;

% Time-located sine
figure(1);
plot(x);
figure(2);
waterfall(F,T,w);

% Chirp
figure(3);
plot(y);
figure(4);
waterfall(F,T,z);
colormap(copper)