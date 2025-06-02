% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.5
%     Inverse errors from quantization
%     Inverse functions are not inverse

% Square root Vs. square
a = 3.0;
for i=1:50
    a = sqrt(a);
end;
for i=1:50
    a = a^2;
end;
Error = a - 3.0

% Logarithm Vs. exponential
b = 5.0e80;
for i=1:5
    b = log(b);
end;
for i=1:5
    b = exp(b);
end;
Error = b - 5.0e80

% Sine Vs. arc sine
p = 3;
for i=1:5
    p = sin(p);
end;
for i=1:5
    p = asin(p);
end;
Error = p - 3

% Discuss results