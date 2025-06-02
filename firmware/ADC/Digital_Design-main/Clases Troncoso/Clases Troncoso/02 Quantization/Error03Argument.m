% Quantization theory
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Exercise 2.3
%     Argument errors from quantization
%     Identity violation
%     sin(x) + sin(x + pi) <> 0

% Examples
for i=0:20
    s1 = sin(10.0^i);
    s2 = sin(10.0^i + pi);
    Error = s1 + s2
end;

% Discuss results