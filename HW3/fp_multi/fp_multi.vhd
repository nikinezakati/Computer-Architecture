----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:13 05/23/2021 
-- Design Name: 
-- Module Name:    fp_multi - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fp_multi is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           res : out  STD_LOGIC_VECTOR (15 downto 0));
end fp_multi;

architecture Behavioral of fp_multi is

begin

process(a, b)
 variable sign : STD_LOGIC := '0';
 variable fraction: STD_LOGIC_VECTOR(7 downto 0) ;
 variable exponent: STD_LOGIC_VECTOR(6 downto 0) ;
 variable res_reg: STD_LOGIC_VECTOR(15 downto 0) ;
begin

--sign bit--
 if (a(15)='1') and  (b(15)='0') then
	sign := '1';
 elsif (a(15)='0') and (b(15)='1') then
	sign := '1';
 end if;	
	
--exponent--
 exponent := (a(14 downto 8)+b(14 downto 8));
 
 --fraction--
 
 fraction := a(7 downto 0)* b(7 downto 0);
 
 res_reg := sign & exponent & fraction;
 res <= res_reg;
 
 end process;

end Behavioral;

