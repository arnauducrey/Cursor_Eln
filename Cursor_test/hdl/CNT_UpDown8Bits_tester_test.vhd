--
-- VHDL Architecture Cursor_test.CNT_UpDown8Bits_tester.test
--
-- Created:
--          by - Arnaud.UNKNOWN (DESKTOP-4F3HILT)
--          at - 15:16:59 13.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF CNT_UpDown8Bits_tester IS
  constant clockFrequency: real := 66.0E6;
  constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
  signal clock_int: std_uLogic := '0';
BEGIN
rst <= '1', '0' after 4*clockPeriod;

  clock_int <= not clock_int after clockPeriod/2;
  clk <= transport clock_int after 9*clockPeriod/10;
  
  
  
Enable <= '1';
upDown <= '1',
		'0' after 20 us;
Remise0 <= '0';
END ARCHITECTURE test;

