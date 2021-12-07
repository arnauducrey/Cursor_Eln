--
-- VHDL Architecture Cursor_test.CursorMasterTester.test
--
-- Created:
--          by - Arnaud.UNKNOWN (DESKTOP-4F3HILT)
--          at - 09:18:41 07.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF CursorMasterTester IS
  constant clockFrequency: real := 66.0E6;
  constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
  signal clock_int: std_uLogic := '0';

BEGIN
rst <= '1', '0' after 4*clockPeriod;

  clock_int <= not clock_int after clockPeriod/2;
  clk <= transport clock_int after 9*clockPeriod/10;
  
--sensor1 <= '0';
--BusBoutton <= "0000";
sensor2 <= '0';
BusBoutton <= "1000" after 10 us,
			 "0000" after 20 us;
				
sensor1 <= '1' after 25 us,
			'0' after 30 us;


END ARCHITECTURE test;