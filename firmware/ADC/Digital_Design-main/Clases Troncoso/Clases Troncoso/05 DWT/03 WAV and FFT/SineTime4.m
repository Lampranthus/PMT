% Waveform generation for testing
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%

clear all;

% Sine signal 1
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 0.256;          % Running time for experimentation
% Tr = 1.024;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
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
SineTime4w(1:N1) = Sine1;

% Sine signal 2
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
% Tr = 1.024;          % Running time for experimentation
Tr = 0.256;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 30;              % Frequency
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
SineTime4w(N1+1:N2) = Sine2;

% Sine signal 3
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
% Tr = 1.024;          % Running time for experimentation
Tr = 0.256;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 90;              % Frequency
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
SineTime4w(N2+1:N3) = Sine3;

% Sine signal 4
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
% Tr = 1.024;          % Running time for experimentation
Tr = 0.256;          % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 0;               % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 270;             % Frequency
p = 0.0;             % Phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sine4(1:N) = 0.0;
for i=k:N-1
    Sine4(i+1) = a*sin(2.0*pi*f*(i-k)*Ts + p);
end;

% Append function 4
N4 = N + N3;
SineTime4w(N3+1:N4) = Sine4;

save SineTime4gen SineTime4w