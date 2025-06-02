% WPD with FFT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Wavelet packet decomposition
% Time located signals

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse0w        Impulse128w      Sine180qw
%     Sine180_128w     Sine180_512w     Sine180_900w
%     SineTime4w       Chirp5_100w
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse0gen;
load Impulse128gen;
load Sine180qgen;
load Sine180_128gen;
load Sine180_512gen;
load Sine180_900gen;
load SineTime4gen;
load Chirp5_100gen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Signal decomposition by wavelet packet decomposition algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% User parameter
% Signal for analysis
X = SineTime4w;
% Mother wavelet
MW = 'db5';

% Decomposition level
D = 3;
% Wavelet packet decomposition algorithm
C = wpdec(X,D,MW);
% Wavelet bands
WB = 2^D;

% Reconstruction algorithm
for i=0:WB-1
    XR(i+1,:) = wprcoef(C,[D,i]);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Graphics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Decomposition figures
figure(1);
subplot(WB+1,1,1), plot(X,'r');
for i=1:WB
    subplot(WB+1,1,i+1), plot(XR(i,:));
end;

% Waterfall graphics
% Wavelet matrix formation
w(1,:) = X;
w(2:WB+1,:) = XR(1:WB,:);
% Time axis
for i=1:1024
    T(i) = (i-1)/1000;
end;
% Band axis
for i=1:WB+1
    B(i) = i-1;
end;
% Plot
figure(2);
waterfall(T,B,w);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% WPD plus FFT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% FFT
for i=1:WB+1
    wf(i,:) = abs(fft(w(i,:)));
end;

% Adjust
N2 = floor(size(wf(1,:),2)/2);
v(1:WB+1,:) = wf(1:WB+1,1:N2);

% Decomposition FFT
figure(3);
for i=1:WB+1
    subplot(WB+1,1,i), plot(v(i,:));
end;

% Waterfall FFT
% Frequency axis
for i=1:N2
    F(i) = 500*(i-1)/N2;
end;
figure(4);
waterfall(F,B,v);