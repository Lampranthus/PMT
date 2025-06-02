% Arbitrary waveform generation
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Example 3
%     Waveform generation with quantization
%     Piecewise-function composition

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sine signal 1
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 0.2;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 5;               % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine1(1:N) = 0.0;
for i=k:N-1
    Sine1(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

% Append function 1
N1 = N;
AppendFunction(1:N1) = Sine1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sine signal 2
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 0.2;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 20;              % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine2(1:N) = 0.0;
for i=k:N-1
    Sine2(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

% Append function 2
N2 = N + N1;
AppendFunction(N1+1:N2) = Sine2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sine signal 3
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 0.2;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 80;              % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine3(1:N) = 0.0;
for i=k:N-1
    Sine3(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

% Append function 3
N3 = N + N2;
AppendFunction(N2+1:N3) = Sine3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Underdamped impulse at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 0.4;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k   = 100;           % Impulse position (0:N-1)
a   = 1.0;           % Amplitude
tau = 0.02;          % Damping time in seconds
fd  = 50;            % Damping frequency
pd  = 0.0;           % Damping phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
UnderImpulse(1:N) = 0.0;
for i=k:N-1
    UnderImpulse(i+1) = a*exp(-Ts*(i-k)/tau)*sin(2.0*pi*fd*(i-k)*Ts + pd);
end;

% Append function 4
N4 = N + N3;
AppendFunction(N3+1:N4) = UnderImpulse;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quantization routine
b = 8;                 % Quantization bits
R = 2.0*max(abs(max(AppendFunction)),abs(min(AppendFunction)));
AppendFunctionq = R*floor(AppendFunction*2^b/R+0.5)/2^b;
% Standard matlab output plot
yf = AppendFunction;
yq = AppendFunctionq;
figure(1);
stem(yf,'.');
hold on;
stem(yq,'.r');

% Appending basic signals