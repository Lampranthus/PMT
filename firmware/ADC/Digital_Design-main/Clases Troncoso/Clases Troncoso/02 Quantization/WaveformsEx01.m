% Arbitrary waveform generation
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Example 1
%     Waveform generation with quantization
%     DSB modulation

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Carrier at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 100;             % Carrier frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
SineCarrier(1:N) = 0.0;
for i=k:N-1
    SineCarrier(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modulating at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Sine position (0:N-1)
a = 2.0;             % Amplitude
f = 4;               % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
SineModulating(1:N) = 0.0;
for i=k:N-1
    SineModulating(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DSB modulation
for i=0:N-1
    SineDSB(i+1) = SineCarrier(i+1)*SineModulating(i+1);
end;
% Quantization routine
b = 16;                 % Quantization bits
R = 2.0*max(abs(max(SineDSB)),abs(min(SineDSB)));
SineDSBq = R*floor(SineDSB*2^b/R+0.5)/2^b;
% Standard matlab output plot
yf = SineDSB;
yq = SineDSBq;
figure(1);
stem(yf,'.');
hold on;
stem(yq,'.r');

% Multiplication of basic signals