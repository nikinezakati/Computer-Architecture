--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:17 06/25/2021
-- Design Name:   
-- Module Name:   Z:/Desktop/CA/HW4/register_file/simulate.vhd
-- Project Name:  register_file
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
    COMPONENT RegisterFile
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         dataIn : IN  std_logic_vector(7 downto 0);
         enable : IN  std_logic;
         selectRead : IN  std_logic_vector(7 downto 0);
         selectWrite : IN  std_logic_vector(7 downto 0);
         dataOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal dataIn : std_logic_vector(7 downto 0) := "10001110";
   signal enable : std_logic := '0';
   signal selectRead : std_logic_vector(7 downto 0) := "10110010";
   signal selectWrite : std_logic_vector(7 downto 0) := "00111010";

 	--Outputs
   signal dataOut : std_logic_vector(7 downto 0) :="00000000";

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	signal clk: std_logic := '1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          clock => clock,
          reset => reset,
          dataIn => dataIn,
          enable => enable,
          selectRead => selectRead,
          selectWrite => selectWrite,
          dataOut => dataOut
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clk_period/2;
		clock <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
