% DWT analysis
%
% Universidad Autonoma de Queretaro
% Electronica Avanzada III
% Rene de Jesus Romero Troncoso
%
% Mallat algorithm
% DWT to VHDL matrix generation

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1
% User parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Data length as an exact power of 2
N  = 8;
% Mother wavelet
MW = 'db4';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2
% Generate LPF and HPF of the selectec mother wavelet
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Data length
L(1) = 2^N;
% Matrix dimensions down to level 6
for i=2:7
    L(i) = floor(L(i-1)/2);
end;
% LPF and HPF for decomposition and reconstruction
[LO_D,HI_D,LO_R,HI_R] = wfilters(MW);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3
% Matrix generation down to level 6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% DWT

% Initialize matrix
% Approximation
WA1(1:L(2),1:L(1)) = 0;
WA2(1:L(3),1:L(2)) = 0;
WA3(1:L(4),1:L(3)) = 0;
WA4(1:L(5),1:L(4)) = 0;
WA5(1:L(6),1:L(5)) = 0;
WA6(1:L(7),1:L(6)) = 0;
% Detail
WD1(1:L(2),1:L(1)) = 0;
WD2(1:L(3),1:L(2)) = 0;
WD3(1:L(4),1:L(3)) = 0;
WD4(1:L(5),1:L(4)) = 0;
WD5(1:L(6),1:L(5)) = 0;
WD6(1:L(7),1:L(6)) = 0;

% Filter length
S = size(LO_D,2);

% Fill matrix with coefficient data
% Level 1
for i=1:L(2)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(1)
            r = r-L(1);
        end;
        WA1(i,r) = LO_D(k);
        WD1(i,r) = HI_D(k);
    end;
end;
% Level 2
for i=1:L(3)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(2)
            r = r-L(2);
        end;
        WA2(i,r) = LO_D(k);
        WD2(i,r) = HI_D(k);
    end;
end;
% Level 3
for i=1:L(4)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(3)
            r = r-L(3);
        end;
        WA3(i,r) = LO_D(k);
        WD3(i,r) = HI_D(k);
    end;
end;
% Level 4
for i=1:L(5)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(4)
            r = r-L(4);
        end;
        WA4(i,r) = LO_D(k);
        WD4(i,r) = HI_D(k);
    end;
end;
% Level 5
for i=1:L(6)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(5)
            r = r-L(5);
        end;
        WA5(i,r) = LO_D(k);
        WD5(i,r) = HI_D(k);
    end;
end;
% Level 6
for i=1:L(7)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(6)
            r = r-L(6);
        end;
        WA6(i,r) = LO_D(k);
        WD6(i,r) = HI_D(k);
    end;
end;

% DWT matrix generation
% Level 1
DWTD1 = WD1;
DWTA1 = WA1;
% Level 2
DWTD2 = WD2*DWTA1;
DWTA2 = WA2*DWTA1;
% Level 3
DWTD3 = WD3*DWTA2;
DWTA3 = WA3*DWTA2;
% Level 4
DWTD4 = WD4*DWTA3;
DWTA4 = WA4*DWTA3;
% Level 5
DWTD5 = WD5*DWTA4;
DWTA5 = WA5*DWTA4;
% Level 6
DWTD6 = WD6*DWTA5;
DWTA6 = WA6*DWTA5;

% IDWT

% Initialize matrix
% Approximation
IA1(1:L(2),1:L(1)) = 0;
IA2(1:L(3),1:L(2)) = 0;
IA3(1:L(4),1:L(3)) = 0;
IA4(1:L(5),1:L(4)) = 0;
IA5(1:L(6),1:L(5)) = 0;
IA6(1:L(7),1:L(6)) = 0;
% Detail
ID1(1:L(2),1:L(1)) = 0;
ID2(1:L(3),1:L(2)) = 0;
ID3(1:L(4),1:L(3)) = 0;
ID4(1:L(5),1:L(4)) = 0;
ID5(1:L(6),1:L(5)) = 0;
ID6(1:L(7),1:L(6)) = 0;

% Fill matrix with coefficient data
% Level 1
for i=1:L(2)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(1)
            r = r-L(1);
        end;
        IA1(i,r) = LO_R(k);
        ID1(i,r) = HI_R(k);
    end;
end;
% Level 2
for i=1:L(3)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(2)
            r = r-L(2);
        end;
        IA2(i,r) = LO_R(k);
        ID2(i,r) = HI_R(k);
    end;
end;
% Level 3
for i=1:L(4)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(3)
            r = r-L(3);
        end;
        IA3(i,r) = LO_R(k);
        ID3(i,r) = HI_R(k);
    end;
end;
% Level 4
for i=1:L(5)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(4)
            r = r-L(4);
        end;
        IA4(i,r) = LO_R(k);
        ID4(i,r) = HI_R(k);
    end;
end;
% Level 5
for i=1:L(6)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(5)
            r = r-L(5);
        end;
        IA5(i,r) = LO_R(k);
        ID5(i,r) = HI_R(k);
    end;
end;
% Level 6
for i=1:L(7)
    j = 2*(i-1);
    for k=1:S
        r = j+k;
        if r>L(6)
            r = r-L(6);
        end;
        IA6(i,r) = LO_R(k);
        ID6(i,r) = HI_R(k);
    end;
end;

% IDWT matrix generation
% Level 1
IWTD1 = ID1;
IWTA1 = IA1;
% Level 2
IWTD2 = ID2*IWTA1;
IWTA2 = IA2*IWTA1;
% Level 3
IWTD3 = ID3*IWTA2;
IWTA3 = IA3*IWTA2;
% Level 4
IWTD4 = ID4*IWTA3;
IWTA4 = IA4*IWTA3;
% Level 5
IWTD5 = ID5*IWTA4;
IWTA5 = IA5*IWTA4;
% Level 6
IWTD6 = ID6*IWTA5;
IWTA6 = IA6*IWTA5;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Step 4
% % Automatic VHDL file generation of selected level
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % User parameters
% 
% % Select approximation/detail DWT and IDWT
% %     DWT Approximation DWTA1...6
% %         Detail        DWTD1...6
% %    IDWT Approximation IWTA1...6
% %         Detail        IWTD1...6
% WX = DWTA4;   % Direct DWT
% IX = IWTA4.'; % Inverse in tranposed form
% % Data resolution in bits
% B = 18;
% 
% % Computation
% % Matrix size
% L = size(WX,1);
% C = size(WX,2);
% % Linear array size
% Z = L*C;
% % MAC programmable counter bits
% V = floor(log2(Z)+0.5);
% % Index binarization
% for i=1:Z
%     Auxiliar = i-1;
%     for j=V:-1:1
%         IDX(i,j) = rem(Auxiliar,2);
%         Auxiliar = floor(Auxiliar/2);
%     end;
% end;
% 
% % DWT
% % Format computation
% CM = max(abs(WX));       % Maximum absolute column coefficient value
% LM = max(CM);            % Maximum absolute coefficient value
% T  = 1.0 - 2.0^(1-B);    % Least value represented with B bits
% % Integer part
% e  = 1 + ceil(log(LM)/log(2.0*T));
% % Fractionary part
% f  = B - e;
% % Quantization factor
% Fq = 2^f;
% % Coefficient quantization by rounding
% Wq = floor(WX*Fq + 0.5);
% % Coefficient scaling
% Ws = Wq/Fq;
% % Coefficient binarization in 2's complement
% for i=1:L
%     for j=1:C
%         % Positive-integer adjustment for negative numbers
%         Auxiliar = Wq(i,j);
%         if (Auxiliar < 0)
%             Auxiliar = 2^B + Auxiliar;
%         end;
%         % Binarization
%         m = j+(i-1)*C;
%         for k=B:-1:1
%             ABI(m,k) = rem(Auxiliar,2);
%             Auxiliar = floor(Auxiliar/2);
%         end;
%     end;
% end;
% % Open VHDL file
% fid = fopen('ROM_DWT.vhd','wt');
% % Description header
% fprintf(fid,'-- DWT matrix coefficients\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- FI - UAQ\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- Electronica Avanzada III\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- Rene Romero Troncoso\n');
% fprintf(fid,'--\n');
% fprintf(fid,'\n');
% fprintf(fid,'library IEEE;\n');
% fprintf(fid,'use IEEE.std_logic_1164.all;\n');
% fprintf(fid,'\n');
% fprintf(fid,'entity ROM_DWT is\n');
% fprintf(fid,'   port(\n');
% % Coefficient index declaration
% fprintf(fid,'      I : in  std_logic_vector(%d downto 0);\n',V-1);
% % Filter coefficient declaration
% fprintf(fid,'      A : out std_logic_vector(%d downto 0)\n',B-1);
% fprintf(fid,'      );\n');
% fprintf(fid,'   end ROM_DWT;\n');
% fprintf(fid,'\n');
% fprintf(fid,'architecture LUTable of ROM_DWT is\n');
% fprintf(fid,'begin\n');
% fprintf(fid,'   process(I)\n');
% fprintf(fid,'   begin\n');
% fprintf(fid,'      case I is\n');
% fprintf(fid,'         -- Coefficient format %d.%d\n',e,f);
% % Automatic table generation
% for i=1:Z
%     fprintf(fid,'         when "');
%     % Index binarization
%     for j=1:V
%         fprintf(fid,'%d',IDX(i,j));
%     end;
%     fprintf(fid,'" => A <= "');
%     % Coefficient binarization
%     for j=1:B
%         fprintf(fid,'%d',ABI(i,j));
%     end;
%     % Decimal values
%     u = 1+floor((i-1)/C);
%     w = i-(u-1)*C;
%     fprintf(fid,'"; -- Line %d   Column %d   Coefficient %1.8f\n',u,w,Ws(u,w));
% end;
% % End VHDL file
% fprintf(fid,'         when others => null;\n');
% fprintf(fid,'      end case;\n');
% fprintf(fid,'   end process;\n');
% fprintf(fid,'end LUTable;\n');
% % Close file
% fclose(fid);
% 
% % IDWT
% % Format computation
% CM = max(abs(IX));       % Maximum absolute column coefficient value
% LM = max(CM);            % Maximum absolute coefficient value
% T  = 1.0 - 2.0^(1-B);    % Least value represented with B bits
% % Integer part
% e  = 1 + ceil(log(LM)/log(2.0*T));
% % Fractionary part
% f  = B - e;
% % Quantization factor
% Fq = 2^f;
% % Coefficient quantization by rounding
% Iq = floor(IX*Fq + 0.5);
% % Coefficient scaling
% Is = Iq/Fq;
% % Coefficient binarization in 2's complement
% for i=1:C
%     for j=1:L
%         % Positive-integer adjustment for negative numbers
%         Auxiliar = Iq(i,j);
%         if (Auxiliar < 0)
%             Auxiliar = 2^B + Auxiliar;
%         end;
%         % Binarization
%         m = j+(i-1)*L;
%         for k=B:-1:1
%             AII(m,k) = rem(Auxiliar,2);
%             Auxiliar = floor(Auxiliar/2);
%         end;
%     end;
% end;
% % Open VHDL file
% fid = fopen('ROM_IDWT.vhd','wt');
% % Description header
% fprintf(fid,'-- IDWT matrix coefficients\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- FI - UAQ\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- Electronica Avanzada III\n');
% fprintf(fid,'--\n');
% fprintf(fid,'-- Rene Romero Troncoso\n');
% fprintf(fid,'--\n');
% fprintf(fid,'\n');
% fprintf(fid,'library IEEE;\n');
% fprintf(fid,'use IEEE.std_logic_1164.all;\n');
% fprintf(fid,'\n');
% fprintf(fid,'entity ROM_IDWT is\n');
% fprintf(fid,'   port(\n');
% % Coefficient index declaration
% fprintf(fid,'      I : in  std_logic_vector(%d downto 0);\n',V-1);
% % Filter coefficient declaration
% fprintf(fid,'      A : out std_logic_vector(%d downto 0)\n',B-1);
% fprintf(fid,'      );\n');
% fprintf(fid,'   end ROM_IDWT;\n');
% fprintf(fid,'\n');
% fprintf(fid,'architecture LUTable of ROM_IDWT is\n');
% fprintf(fid,'begin\n');
% fprintf(fid,'   process(I)\n');
% fprintf(fid,'   begin\n');
% fprintf(fid,'      case I is\n');
% fprintf(fid,'         -- Coefficient format %d.%d\n',e,f);
% % Automatic table generation
% for i=1:Z
%     fprintf(fid,'         when "');
%     % Index binarization
%     for j=1:V
%         fprintf(fid,'%d',IDX(i,j));
%     end;
%     fprintf(fid,'" => A <= "');
%     % Coefficient binarization
%     for j=1:B
%         fprintf(fid,'%d',AII(i,j));
%     end;
%     % Decimal values
%     u = 1+floor((i-1)/L);
%     w = i-(u-1)*L;
%     fprintf(fid,'"; -- Line %d   Column %d   Coefficient %1.8f\n',u,w,Is(u,w));
% end;
% % End VHDL file
% fprintf(fid,'         when others => null;\n');
% fprintf(fid,'      end case;\n');
% fprintf(fid,'   end process;\n');
% fprintf(fid,'end LUTable;\n');
% % Close file
% fclose(fid);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%
% n = [0:255];
% x = sin(2*pi*(10/10000)*n);
% 
% X4 = DWTA4*x';
% subplot(5,1,5), plot(IWTA4(:,1));
% subplot(5,1,4), plot(DWTA4(1,:));
% subplot(5,1,3), plot(X4);
% X = IWTA4.'*X4;
% subplot(5,1,2), plot(X)
% subplot(5,1,1), plot(x)
% clc
% 
% 
% 
% 
% 
