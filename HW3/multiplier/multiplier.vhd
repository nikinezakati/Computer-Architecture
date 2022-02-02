----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:46 05/30/2021 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC_VECTOR (7 downto 0));
end multiplier;

architecture Behavioral of multiplier is


begin

process(a, b)
 
 variable mulcand: STD_LOGIC_VECTOR(3 downto 0) := a ;
 variable product: STD_LOGIC_VECTOR(3 downto 0) := "0000" ;
 variable mulp: STD_LOGIC_VECTOR(3 downto 0) := b ;
 variable promul: STD_LOGIC_VECTOR(7 downto 0) := product & mulp ;
 variable I : integer range 0 to 5;
 
begin

		L1: loop
		exit L1 when I = 4;
      if (mulcand(0)='1') then
        product := product + mulcand;
		  promul := product & mulp;
		  promul := '0' & promul(7 DOWNTO 1);
	 elsif (mulcand(0)='0') then
		promul := '0' & promul(7 DOWNTO 1);
	 end if;	
	 I := I + 1;
    end loop; 

 o <= promul;
 
 end process;

end Behavioral;




