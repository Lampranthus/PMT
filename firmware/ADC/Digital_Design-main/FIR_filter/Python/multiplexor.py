def generate_vhdl_mux_64():
    vhdl_code = """
library ieee;
use ieee.std_logic_1164.all;

entity mux_64a1_n is
    generic(
        n : integer := 10
    );
    port(
"""
    
    for i in range(64):
        vhdl_code += f'        x{i} : in std_logic_vector(n-1 downto 0);\n'
    
    vhdl_code += """
        s : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(n-1 downto 0)
    );
end mux_64a1_n;

architecture combinacional of mux_64a1_n is
begin
    process (s"""
    
    for i in range(64):
        vhdl_code += f', x{i}'
    
    vhdl_code += ")\n    begin\n        case s is\n"
    
    for i in range(64):
        vhdl_code += f'            when "{i:06b}" => y <= x{63-i};\n'
    
    vhdl_code += """
            when others => y <= (others => '0');
        end case;
    end process;
end combinacional;
"""
    
    return vhdl_code

# Guardar el código generado en un archivo
with open("mux_64a1_n.vhdl", "w") as file:
    file.write(generate_vhdl_mux_64())

print("Código VHDL generado y guardado en mux_64a1_n.vhdl")
