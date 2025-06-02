% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.4
%     Algorithm errors from quantization
%     General formula does not work properly
%     a*x^2 + b*x + c = 0

% Coefficients
a = 1.0;
b = 1.0e15;
c = 100.0;

% Radical
R = sqrt(b^2-4.0*a*c);

% Roots
x1 = (-b-R)/(2.0*a);
x2 = (-b+R)/(2.0*a);

% Error
E1 = a*x1^2 + b*x1 + c
E2 = a*x2^2 + b*x2 + c

% Discuss results