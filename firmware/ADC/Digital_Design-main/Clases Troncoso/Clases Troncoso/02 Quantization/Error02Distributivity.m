% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.2
%     Distributivity errors from quantization
%              L <> R
%     (a+b)(c+d) <> ac + ad + bc + bd

% Input values
a = 1.0e8;
b = 1.0e-8;
c = 1.0e8;
d = 1.0e-8;

% Add first then multiply
L = (a+b)*(c+d);

% Multiply first then add
R = a*c + a*d + b*c + b*d;

% Error
L
R
Error = L - R

% Discuss results