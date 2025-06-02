clear all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% Load input signals
%     Impulse0w       Step0w         Sine05qw
%     Sine60qw        Sine120qw      Sine180qw
%     Harmonic60qw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load input signals
load Impulse0gen;
load Step0gen;
load Sine05qgen;
load Sine60qgen;
load Sine120qgen;
load Sine180qgen;
load Harmonic60qgen;
%Put the signal in Xn
Xn = Harmonic60qw;
%Period = N
N = length (Xn);
%Divide the signal in 2 the even and the odd part.
Xn_even(1:512) = zeros;
Xn_odd(1:512) = zeros;
s = 1;
b = 0;
%
WN = exp(-2*i*pi*1048576/N); %twiddle factor
for i = 1:1024
    if (b == 0)
        Xn_even(s) = Xn(i);
        b = 1;
    else
        Xn_odd(s) = Xn(i);
        b = 0;
        s = s+1;
    end;
end;
%
for n = 1:1024 
        X(n) = sum((Xn(n)*WN));
end;
