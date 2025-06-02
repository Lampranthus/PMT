% Waveform library
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Library
%     Waveform generation for further processing

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section 1
%      Basic excitation waveforms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1.1 Impulse at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Impulse position (0:N-1)
a = 1.0;             % Amplitude
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Impulse(1:N) = 0.0;
Impulse(k+1) = a;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1.2 Step at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Step position (0:N-1)
a = 1.0;             % Amplitude
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Step(1:N)   = 0.0;
Step(k+1:N) = a;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1.3 Ramp at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Ramp position (0:N-1)
a = 1.0;             % Amplitude
% Computation
k = floor(k);
if (k<0)||(k>N-2)
    k = 0;
end;
Ramp(1:N)   = 0.0;
for i=k:N-1
    Ramp(i+1) = a*(i+1-k)/(N-k);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section 2
%      Basic periodic waveforms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.1 Sine at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Sine position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
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
% 2.2 Square at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k  = 100;            % Square position (0:N-1)
a1 = 1.0;            % Amplitude 1
a2 = -1.0;           % Amplitude 2    
f  = 10;             % Frequency
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Square(1:N) = 0.0;
for i=k:N-1
    Square(i+1) = sin(2.0*pi*f*(i-k)*Ts);
    if Square(i+1)>=0;
        Square(i+1) = a1;
    else
        Square(i+1) = a2;
    end;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.3 Sawtooth at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Sawtooth position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Sawtooth(1:N) = 0.0;
for i=k:N-1
    c = floor((i+1-k)*f*Ts)*floor(1.0/(f*Ts));
    Sawtooth(i+1) = a*(i+1-k-c)*f*Ts;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.4 Triangular at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Triangular position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Triangular(1:N) = 0.0;
for i=k:N-1
    c = a*floor((i-k)*f*Ts);
    d = sign(cos(2.0*pi*f*(i+1-k)*Ts));
    g = sign(sin(2.0*pi*f*(i+1-k)*Ts));
    if d<=0
        e = -a/2.0;
    else
        if g<=0
            e = -a;
        else
            e = 0.0;
        end;
    end;
    Triangular(i+1) = 4.0*(a*(i+1-k)*f*Ts - c + e)*d;
    % Error correction
    if abs(Triangular(i+1))>2.0
        Triangular(i+1) = Triangular(i+1)-4.0*a*sign(Triangular(i+1));
    end;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section 3
%      Expanded periodic waveforms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3.1 Impulse train at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Impulse position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Aux(1:N) = 0.0;
for i=k:N-1
    c = floor((i-k)*f*Ts + 1);
    Aux(i+1) = c;
end;
ImpulseTrain(1) = 0.0;
for i=1:N-1
    ImpulseTrain(i+1) = Aux(i+1) - Aux(i);
end;

% 3.2 Pulse train at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Pulse position (0:N-1)
a = 1.0;             % Amplitude
f = 10;              % Frequency
W = 20;              % Pulse width in samples
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
Aux(1:N) = 0.0;
for i=k:N-1
    c = floor((i-k)*f*Ts + 1);
    Aux(i+1) = c;
end;
Auy(1) = 0.0;
for i=1:N-1
    Auy(i+1) = Aux(i+1) - Aux(i);
end;
PulseTrain(1:N) = 0.0;
for i=0:N-1
    if Auy(i+1)~=0
        for j=i+1:i+W
            if j<=N
                PulseTrain(j) = a;
            end;
        end;
    end;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section 4
%      Non-periodic waveforms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.1 Overdamped impulse at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k   = 100;           % Impulse position (0:N-1)
a   = 1.0;           % Amplitude
tau = 0.1;           % Damping time in seconds
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
OverImpulse(1:N) = 0.0;
for i=k:N-1
    OverImpulse(i+1) = a*exp(-Ts*(i-k)/tau);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.2 Underdamped impulse at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k   = 100;           % Impulse position (0:N-1)
a   = 1.0;           % Amplitude
tau = 0.1;           % Damping time in seconds
fd  = 20;            % Damping frequency
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.3 Overdamped step at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k   = 100;           % Impulse position (0:N-1)
a   = 1.0;           % Amplitude
tau = 0.1;           % Damping time in seconds
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
OverStep(1:N) = 0.0;
for i=k:N-1
    OverStep(i+1) = a*(1.0 - exp(-Ts*(i-k)/tau));
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.4 Underdamped step at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k   = 100;           % Impulse position (0:N-1)
a   = 1.0;           % Amplitude
tau = 0.1;           % Damping time in seconds
fd  = 20;            % Damping frequency
pd  = 0.0;           % Damping phase
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
UnderStep(1:N) = 0.0;
for i=k:N-1
    UnderStep(i+1) = a*(1.0 - exp(-Ts*(i-k)/tau)*cos(2.0*pi*fd*(i-k)*Ts + pd));
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.5 Chirp
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
a  = 1.0;            % Amplitude
f1 = 10;             % Start frequency
f2 = 20;             % End frequency
% Computation
df = (f2-f1)/N;
for i=0:N-1
    Chirp(i+1) = a*sin(2.0*pi*(f1+(i)*df)*i*Ts);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.6 White noise
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
% 4.7 Random impulses at k
% General parameters for all waveforms
Fs = 1000;           % Sampling frequency in Hz
Tr = 1.0;            % Running time for experimentation
% Derived parameters
N  = floor(Fs*Tr);   % Sample length
Ts = 1/Fs;           % Sampling period
% User parameters
k = 100;             % Impulse position (0:N-1)
a = 1.0;             % Amplitude
r = 5;               % Number of random impulses
% Computation
k = floor(k);
if (k<0)||(k>N-1)
    k = 0;
end;
RandomImpulse(1:N) = 0.0;
for i=1:r
    j = floor(random('Uniform',k,N));
    s = sign(random('Normal',0,1.0));
    RandomImpulse(j) = s*a;
end;

% Standard matlab output plot
y = WhiteNoise;
figure(1);
stem(y,'.');
