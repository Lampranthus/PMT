% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.6
%     Polynomial-evaluation errors from quantization

% Bits
n = 18;

% Polynomial coefficients
A = [1.0 0.8 0.6 0.4 0.2];

% Quantization by coefficient truncation
B = floor(A*2^n)/2^n;

% Errors
for j=1:10
    x  = 1.0*j;
    P1 = polyval(A,x);
    P2 = polyval(B,x);
    Error = P1 - P2
end;

% Discuss results