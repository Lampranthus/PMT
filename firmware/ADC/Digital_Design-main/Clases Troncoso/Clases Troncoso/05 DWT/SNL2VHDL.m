clear all;
close all;

load Impulse0gen;
load Impulse128gen;
load Sine180qgen;
load Sine180_128gen;
load Sine180_512gen;
load Sine180_900gen;
load SineTime4gen;
load Chirp5_100gen;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 4
% Automatic VHDL file generation of selected level
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% User parameters

% Select approximation/detail DWT and IDWT
%     DWT Approximation DWTA1...6
%         Detail        DWTD1...6
%    IDWT Approximation IWTA1...6
%         Detail        IWTD1...6
%WX = DWTA4;   % Direct DWT
Xn = Chirp5_100w;

WX(1,:) = Xn;
%IX = IWTA4; % Inverse in tranposed form
% Data resolution in bits
B = 18;

% Computation
% Matrix size
L = size(WX,1);
C = size(WX,2);
% Linear array size
Z = L*C;
% MAC programmable counter bits
V = floor(log2(Z)+0.5);
Va = floor(log2(C)+0.5);
% Index binarization
for i=1:Z
    Auxiliar = i-1;
    for j=V:-1:1
        IDX(i,j) = rem(Auxiliar,2);
        Auxiliar = floor(Auxiliar/2);
    end;
end;

% DWT
% Format computation
CM = max(abs(WX));       % Maximum absolute column coefficient value
LM = max(CM);            % Maximum absolute coefficient value
T  = 1.0 - 2.0^(1-B);    % Least value represented with B bits
% Integer part
e  = 1 + ceil(log(LM)/log(2.0*T));
% Fractionary part
f  = B - e;
% Quantization factor
Fq = 2^f;
% Coefficient quantization by rounding
Wq = floor(WX*Fq + 0.5);
% Coefficient scaling
Ws = Wq/Fq;
% Coefficient binarization in 2's complement
for i=1:L %L
    for j=1:C 
        % Positive-integer adjustment for negative numbers
        Auxiliar = Wq(i,j);
        if (Auxiliar < 0)
            Auxiliar = 2^B + Auxiliar;
        end;
        % Binarization
        m = j+(i-1)*C;
        for k=B:-1:1
            ABI(m,k) = rem(Auxiliar,2);
            Auxiliar = floor(Auxiliar/2);
        end;
    end;
end;

% Open VHDL file
fid = fopen('ROM_P.vhd','wt');
% Description header
fprintf(fid,'library IEEE;\n');
fprintf(fid,'use IEEE.std_logic_1164.all;\n');
fprintf(fid,'use ieee.numeric_std.all;\n');
fprintf(fid,'\n');
fprintf(fid,'entity ROM_P is\n');
fprintf(fid,'   port(\n');
% Coefficient index declaration
fprintf(fid,'      CLK : in std_logic;\n');
fprintf(fid,'      I   : in  std_logic_vector(%d downto 0);\n',Va-1);
% Filter coefficient declaration
fprintf(fid,'      A   : out std_logic_vector(%d downto 0)\n',B-1);
fprintf(fid,'      );\n');
fprintf(fid,'   end ROM_P;\n');
fprintf(fid,'\n');
fprintf(fid,'architecture ROM of ROM_P is\n');
fprintf(fid,'\n');
fprintf(fid,'subtype word_t is std_logic_vector(%d downto 0);\n',B-1);
fprintf(fid,'type memory_t is array(0 to %d) of word_t;\n',C-1);
fprintf(fid,'\n');
fprintf(fid,'signal rom : memory_t := (');
fprintf(fid,'         -- Coefficient format %d.%d\n',e,f);
% Automatic table generation
for i=1:C
    fprintf(fid,'   "');
    % Coefficient binarization
    for j=1:B
        fprintf(fid,'%d',ABI(i,j));
    end;
    % Decimal values
    u = 1+floor((i-1)/C);
    w = i-(u-1)*C;
    if (i == C)
        fprintf(fid,'" -- Line %d   Column %d   Coefficient %1.8f\n',u,w,Ws(u,w));
    else
        fprintf(fid,'", -- Line %d   Column %d   Coefficient %1.8f\n',u,w,Ws(u,w));
    end;    
    
end;
fprintf(fid,');\n');
% End VHDL file
fprintf(fid,'begin\n');
fprintf(fid,'	process(clk)\n');
fprintf(fid,'	begin\n');
fprintf(fid,'	if(rising_edge(CLK)) then\n');
fprintf(fid,'		A <= rom(to_integer(unsigned(I)));\n');
fprintf(fid,'	end if;\n');
fprintf(fid,'	end process;\n');
fprintf(fid,'end ROM;\n');
% Close file
fclose(fid);