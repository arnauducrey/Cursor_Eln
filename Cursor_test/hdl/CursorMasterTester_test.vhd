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
--BusBouton <= "0000";
sensor2 <= '0',
			'1' after 260 us;
BusBouton <= "0000",
			"1000" after 10 us,
			 "0000" after 20 us,
			 "0010" after 40 us,
			 "0000" after 45 us,
			 "0100" after 100 us,
			 "0000" after 105 us,
			 "1000" after 140 us,
			 "0000" after 145 us,
			 "0100" after 160 us,
			 "0000" after 165 us,
			 "0010" after 200 us,
			 "0000" after 205 us,
			 "1000" after 240 us,
			 "0000" after 250 us;
				
sensor1 <= 	'0',
			'1' after 25 us,
			'0' after 30 us,
			'1' after 150 us,
			'0' after 155 us;
			
--STOP_Acc_dec <= '0',
				--'1' after 60 us,
				--'0' after 65 us,
				--'1' after 80 us,
				--'0' after 90 us,
				--'1' after 110 us,
				--'0' after 115 us,
				--'1' after 130 us,
				--'0' after 135 us,
				--'1' after 170 us,
				--'0' after 175 us,
				--'1' after 190 us,
				--'0' after 195 us,
				--'1' after 210 us,
				--'0' after 215 us,
				--'1' after 230 us,
				--'0' after 235 us;

position <= to_unsigned (0,16),
			to_unsigned (2857, 16) after 60 us,
			to_unsigned (0,16) after 65 us,
			to_unsigned (28572,16) after 70 us,
			to_unsigned (2857, 16) after 80 us,
			to_unsigned (0,16) after 90 us,
			to_unsigned (2857, 16) after 110 us,
			to_unsigned (0,16) after 115 us,
			to_unsigned (2857,16) after 120 us,
			to_unsigned (2857, 16) after 130 us,
			to_unsigned (0,16) after 135 us,
			to_unsigned (2857, 16) after 170 us,
			to_unsigned (0,16) after 175 us,
			to_unsigned(17143,16) after 180 us,
			to_unsigned (2857, 16) after 190 us,
			to_unsigned (0,16) after 195 us,
			to_unsigned (2857, 16) after 210 us,
			to_unsigned (0,16) after 215 us,
			to_unsigned(2857,16) after 220 us,
			to_unsigned (2857, 16) after 230 us,
			to_unsigned (0,16) after 235 us;


END ARCHITECTURE test;