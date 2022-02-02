--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:13:25 05/20/2021
-- Design Name:   
-- Module Name:   C:/Users/Amir/Desktop/dars_ha/memari/Amir/DFF_Asynchronous/DffAsyncTestBench.vhd
-- Project Name:  DFF_Asynchronous
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DffAsynchronous
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
 
ENTITY DffAsyncTestBench IS
END DffAsyncTestBench;
 
ARCHITECTURE behavior OF DffAsyncTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DffAsynchronous
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         r : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clk : std_logic := '0';
   signal r : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DffAsynchronous PORT MAP (
          d => d,
          clk => clk,
          r => r,
          q => q
        );

   -- Clock process definitions
    
stim_proc1: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
D<='0';
wait for clk_period*10;
D<='1';
-- insert stimulus here

 wait;
end process;
stim_proc2: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
D<='0';
wait for clk_period*10;
D<='1';
-- insert stimulus here
 wait;
end process;


END;
