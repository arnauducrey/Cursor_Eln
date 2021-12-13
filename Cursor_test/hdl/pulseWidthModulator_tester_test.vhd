--
-- VHDL Architecture Cursor_test.pulseWidthModulator_tester.test
--
-- Created:
--          by - robin.UNKNOWN (DESKTOP-93FHAQ3)
--          at - 12:50:41 10.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF pulseWidthModulator_tester IS

	constant clockFrequency: real := 66.0E6;
	constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
	signal clock_int: std_uLogic := '0';	
  
BEGIN

	reset <= '1', '0' after 4*clockPeriod;

	clock_int <= not clock_int after clockPeriod/2;
	clock <= transport clock_int after 9*clockPeriod/10;
	
	enable <= '0', '1' after 1 ms;
	
	restart <= '0', '1' after 2 ms, '0' after 3 ms, '1' after 4 ms, '0' after  4500 us;
	
	upDown <= '1', '0' after 3 ms;

END ARCHITECTURE test;

