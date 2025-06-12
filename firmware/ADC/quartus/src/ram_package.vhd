LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram_dual IS
   GENERIC (
      ram_width : INTEGER := 48;
      ram_depth : INTEGER := 65536
   );
   PORT (
      clock1 : IN   std_logic;
      clock2 : IN   std_logic;
      data   : IN   std_logic_vector(ram_width - 1 DOWNTO 0);
      write_address : IN  std_logic_vector(15 DOWNTO 0);
      read_address  : IN  std_logic_vector(15 DOWNTO 0);
      we     : IN   std_logic;
      q      : OUT  std_logic_vector(ram_width - 1 DOWNTO 0)
   );
END ram_dual;

ARCHITECTURE rtl OF ram_dual IS
   TYPE ram_type IS ARRAY (0 TO ram_depth - 1) OF std_logic_vector(ram_width - 1 DOWNTO 0);
   SIGNAL ram_block : ram_type;
BEGIN

   PROCESS (clock1)
   BEGIN
      IF rising_edge(clock1) THEN
         IF (we = '1') THEN
            ram_block(to_integer(unsigned(write_address))) <= data;
         END IF;
      END IF;
   END PROCESS;

   PROCESS (clock2)
   BEGIN
      IF rising_edge(clock2) THEN
         q <= ram_block(to_integer(unsigned(read_address)));
      END IF;
   END PROCESS;

END rtl;
