--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:41:28 06/06/2021
-- Design Name:   
-- Module Name:   Z:/Desktop/CA/HW3/ALU/simulate.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY simulate IS
END simulate;
 
ARCHITECTURE behavior OF simulate IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         selector : IN  std_logic_vector(3 downto 0);
         res : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := "00110001";
   signal b : std_logic_vector(7 downto 0) := "01010000";
   signal selector : std_logic_vector(3 downto 0) := "0001";

 	--Outputs
   signal res : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
	signal clk: std_logic := '1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          a => a,
          b => b,
          selector => selector,
          res => res
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
		a<="01111110";
      wait for clk_period*5;
		a<="01111110";
      -- insert stimulus here 

      wait;
   end process;
	
	stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		b<="01111110";
      wait for clk_period*10;
		b<="01111110";
      -- insert stimulus here 

      wait for clk_period*10;
   end process;


END;
