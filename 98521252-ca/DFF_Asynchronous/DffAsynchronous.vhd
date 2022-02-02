----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:12:25 05/20/2021 
-- Design Name: 
-- Module Name:    DffAsynchronous - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DffAsynchronous is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           q : out  STD_LOGIC);
end DffAsynchronous;

architecture Behavioral of DffAsynchronous is

begin
process (clk,r)
begin
if r='1' then
q<='0';
elsif (clk'event and clk='1') then
q<=D;
end if;
end process;

end Behavioral;

