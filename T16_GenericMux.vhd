library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T16_GenericMux is
generic(Datawidth : integer);
port(
	--Inputs
	sig1 : in unsigned(Datawidth-1 downto 0);
	sig2 : in unsigned(Datawidth-1 downto 0);
	sig3 : in unsigned(Datawidth-1 downto 0);
	sig4 : in unsigned(Datawidth-1 downto 0);
	
	sel  : in unsigned(1 downto 0);
	--Output
	output : out unsigned(Datawidth-1 downto 0));
end entity;
	
architecture rtl of T16_GenericMux is	
begin
	process(sel, sig1, sig2, sig3, sig4) is
	begin
		
			case sel is
				when "00" =>
					output <= sig1;
				when "01" =>
					output <= sig2;
				when "10" =>
					output <= sig3;
				when "11" =>
					output <= sig4;
				when others =>
					output <= (others => 'X');
			end case;
	end process;
end architecture;