entity T06_SignalTb is
end entity;

architecture sim of T06_SignalTb is
	signal mySignal : integer := 0;
begin
	process is
		variable myVariable : integer := 0;
	begin
	
		report "***Process Begin***";
		
		mySignal <= mySignal + 1;
		myVariable := myVariable + 1;
		
		report "mySignal = " & integer'image(mySignal) &
		", myVariable = " & integer'image(myVariable);
		
		mySignal <= mySignal + 1;
		myVariable := myVariable + 1;
		
		report "mySignal = " & integer'image(mySignal) &
		", myVariable = " & integer'image(myVariable);

		wait for 10 ns;
		
		mySignal <= mySignal + 1;
		myVariable := myVariable + 1;
		
		report "mySignal = " & integer'image(mySignal) &
		", myVariable = " & integer'image(myVariable);
		
	end process;

end architecture;