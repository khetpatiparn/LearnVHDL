entity T02_HelloWorldTb is
end entity;

architecture sim of T02_HelloWorldTb is
begin
	process is
	begin
		report "Hello, World";
		wait for 10 ns;
	end process;

end architecture;