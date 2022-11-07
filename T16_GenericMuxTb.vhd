library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T16_GenericMuxTb is
end entity;
	
architecture sim of T16_GenericMuxTb is

	constant DataWidth : integer := 8;
	
	signal sig1 : unsigned(DataWidth-1 downto 0) := x"AA";
	signal sig2 : unsigned(DataWidth-1 downto 0) := x"BB";
	signal sig3 : unsigned(DataWidth-1 downto 0) := x"CC";
	signal sig4 : unsigned(DataWidth-1 downto 0) := x"DD";
	signal sel  : unsigned(1 downto 0) := (others => '0');
	signal output : unsigned(DataWidth-1 downto 0);
begin

	--An instance of T16_GenericMux with architecture rtl
	i_MUX1 : entity work.T16_GenericMux(rtl) 
	generic map (DataWidth => DataWidth)
	port map(
		sel    => sel,
		sig1   => sig1,
		sig2   => sig2,
		sig3   => sig3,
		sig4   => sig4,
		output => output);
		
	--Testbench Process	
	process is
	begin
		wait for 10 ns;
		sel <= sel + 1;
		wait for 10 ns;
		sel <= sel + 1;
		wait for 10 ns;
		sel <= sel + 1;
		wait for 10 ns;
		sel <= sel + 1;
		wait for 10 ns;
		sel <= "UU";
	end process;
end architecture;