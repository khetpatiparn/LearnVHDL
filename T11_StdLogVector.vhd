library ieee;
use ieee.std_logic_1164.all;

entity T11_StdLogVector is
end entity;

architecture sim of T11_StdLogVector is
	signal slv1 : std_logic_vector(7 downto 0);
	signal slv2 : std_logic_vector(7 downto 0) := (others => '0');
	signal slv3 : std_logic_vector(7 downto 0) := (others => '1');
	signal slv4 : std_logic_vector(7 downto 0) := x"AB";
	signal slv5 : std_logic_vector(0 to 7) := "10111001";
	signal slv6 : std_logic_vector(7 downto 0) := "00000001";
	
begin
	--Shift Register--
	process is
	begin
			wait for 10 ns;
			
			for i in 7 downto 1 loop
				slv6(i) <= slv6(i - 1);
			end loop;
			
			slv6(0) <= slv6(7);
			
	end process;

end architecture;