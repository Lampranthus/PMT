library ieee;
use ieee.std_logic_1164.all;

entity and_test is
	port(
	A,B :	in std_logic;
	S	:	out std_logic
	);
end and_test;

architecture simple of and_test is
begin

	S <= A and B;
	
end simple;