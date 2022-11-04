entity T03_LoopTb is
end entity;

architecture sim of T03_LoopTb is
begin
	process is
	begin
	
		report "Hello";
	
		loop
			report "I'm Khet!";
			wait for 10 ns;
			exit;
		end loop;
		
		report "Goodbye";
		wait;
		
	end process;

end architecture;