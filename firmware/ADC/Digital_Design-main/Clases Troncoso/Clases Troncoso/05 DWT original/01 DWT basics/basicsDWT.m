% DWT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Mallat algorithm
% Time located signals

clear all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Signal decomposition by Mallat algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dwtmode('zpd')
% User parameter
% Signal for analysis

n = [0:255];

X = sin(2*pi*(100.0/10000)*n);
% Mother wavelet
MW = 'db2';
[LO_D,HI_D,LO_R,HI_R] = wfilters(MW);
% Decomposition level
D = 4;
% Mallat decomposition algorithm
[C L] = wavedec(X,D,LO_D,HI_D);
% Coefficient separation
N1 = 1;
N2 = L(1);
cA4 = C(N1:N2);
% Reconstruction coefficient initialization
Ne = sum(L) - L(6);
rA4(1:Ne) = 0;
% Reconstruction coefficient location
rA4(N1:N2) = cA4;
% Reconstruction algorithm
XA4 = waverec(rA4,L,LO_D,HI_D);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Graphics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Decomposition figures
figure(1);
subplot(2,1,1), plot(X,'r');
subplot(2,1,2), plot(XA4);

% Coefficients
figure(2);
plot(cA4);

% Extended structure
figure(3);
plot(rA4);
