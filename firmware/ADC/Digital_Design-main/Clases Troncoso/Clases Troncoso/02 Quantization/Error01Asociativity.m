% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.1
%     Asociativity errors from quantization
%                        L <> R
%     a+(a+(...+(a+(b)...) <> b+(a+(a+(...+(a+(a)...)

% Input values
a = 1.0e-9;
b = 1.0e8;

% Asociativity cycles on a
N = 1000000;

% Add a first then b
L = 0.0;
for i=1:N
    L = L + a;
end;
L = L + b;

% Add b first then a
R = b;
for i=1:N
    R = R + a;
end;

% Exact value = 100000000.01

% Error
L
R
Error = L - R

% Explain results