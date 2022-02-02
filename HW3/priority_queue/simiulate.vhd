--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:58:44 06/05/2021
-- Design Name:   
-- Module Name:   Z:/Desktop/CA/HW3/priority_queue/simiulate.vhd
-- Project Name:  priority_queue
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: priority_queue
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simiulate IS
END simiulate;
 
ARCHITECTURE behavior OF simiulate IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT priority_queue
    PORT(
         enqueue : IN  std_logic;
         dequeue : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         key : IN  std_logic_vector(15 downto 0);
         value : IN  std_logic_vector(7 downto 0);
         smallValue : OUT  std_logic_vector(7 downto 0);
         busy : OUT  std_logic;
         empty : OUT  std_logic;
         full : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal enqueue : std_logic := '0';
   signal dequeue : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal key : std_logic_vector(15 downto 0) := (others => '0');
   signal value : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal smallValue : std_logic_vector(7 downto 0);
   signal busy : std_logic;
   signal empty : std_logic;
   signal full : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: priority_queue PORT MAP (
          enqueue => enqueue,
          dequeue => dequeue,
          clk => clk,
          reset => reset,
          key => key,
          value => value,
          smallValue => smallValue,
          busy => busy,
          empty => empty,
          full => full
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc1: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		key<="0000000011111110";
      wait for clk_period*5;
		key<="0000000011111110";
      -- insert stimulus here 

      wait;
   end process;
	
	stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		value<="01111110";
      wait for clk_period*10;
		value<="01111110";
      -- insert stimulus here 

      wait for clk_period*10;
   end process;

END;
