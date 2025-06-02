% Arbitrary waveform generation
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Example 2
%     Waveform generation with quantization
%     Noisy sine

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sine signal at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 5;               % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine(1:N) = 0.0;
for i=k:N-1
    Sine(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% White noise
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
mu = 0.0;            % Mean
sd = 1.0;            % Standard deviation
a  = 0.1;            % Noise amplitude
for i=0:N-1
    WhiteNoise(i+1) = a*random('norm',mu,sd);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Noisy sine
for i=0:N-1
    SineNoise(i+1) = Sine(i+1) + WhiteNoise(i+1);
end;
% Quantization routine
b = 8;                 % Quantization bits
R = 2.0*max(abs(max(SineNoise)),abs(min(SineNoise)));
SineNoiseq = R*floor(SineNoise*2^b/R+0.5)/2^b;
% Standard matlab output plot
yf = SineNoise;
yq = SineNoiseq;
figure(1);
stem(yf,'.');
hold on;
stem(yq,'.r');

% Addition of basic signals