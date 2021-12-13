--
-- VHDL Architecture Cursor_test.motor_driver_tester.test
--
-- Created:
--          by - robin.UNKNOWN (DESKTOP-93FHAQ3)
--          at - 15:07:18 13.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF motor_driver_tester IS

	constant clockFrequency: real := 66.0E6;
	constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
	signal clock_int: std_uLogic := '0';	
BEGIN
	reset <= '1', '0' after 4*clockPeriod;

	clock_int <= not clock_int after clockPeriod/2;
	clock <= transport clock_int after 9*clockPeriod/10;
	
	
	mode_fct <=  "111" ,
		"000" after 500 us,
		"001" after 1 ms,
		"010" after 1500 us,
		"111" after 2000 us,
		"100" after 2500 us,
		"101" after 3000 us,
		"110" after 3500 us,
		"111" after 4000 us;
END ARCHITECTURE test;

