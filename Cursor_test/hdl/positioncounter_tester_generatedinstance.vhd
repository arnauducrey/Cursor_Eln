-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF positionCounter_tester IS 

  constant clockFrequency: real := 66.0E6;
  constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
  signal clock_int: std_uLogic := '0';	
  signal encoder_int: std_uLogic := '0';
  
BEGIN

  reset <= '1', '0' after 4*clockPeriod;

  clock_int <= not clock_int after clockPeriod/2;
  clock <= transport clock_int after 9*clockPeriod/10;
  
  reset_pos <= '0', '1' after 10 us,
					'0' after 11  us;
  
  encoder_int <= not encoder_int after 1 us;
  encoderIn <= transport encoder_int;
  
  
  
  



END ARCHITECTURE  generatedInstance;
