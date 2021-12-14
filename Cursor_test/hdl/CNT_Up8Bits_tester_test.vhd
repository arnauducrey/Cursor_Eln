--
-- VHDL Architecture Cursor_test.CNT_Up8Bits_tester.test
--
-- Created:
--          by - Arnaud.UNKNOWN (DESKTOP-4F3HILT)
--          at - 08:22:51 14.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF CNT_Up8Bits_tester IS
  constant clockFrequency: real := 66.0E6;
  constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
  signal clock_int: std_uLogic := '0';
BEGIN
rst <= '1', '0' after 4*clockPeriod;

  clock_int <= not clock_int after clockPeriod/2;
  clk <= transport clock_int after 9*clockPeriod/10;
  
  
  
Enable <= '1';
Remise0 <= '0',
			'1' after 10 us,
			'0' after 15 us;
END ARCHITECTURE test;