----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:33 06/06/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           selector : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(a, b)
 variable sign : STD_LOGIC := '0';
 variable fraction: STD_LOGIC_VECTOR(7 downto 0) ;
 variable exponent: STD_LOGIC_VECTOR(6 downto 0) ;
 variable res_reg: STD_LOGIC_VECTOR(7 downto 0) := "00000000" ;
begin

--sign bit--
 if (selector(2 downto 0)="000") then
	res_reg := a and b;
 elsif (selector(2 downto 0)="001") then
	res_reg := a or b;
 elsif (selector(2 downto 0)="010") then
	res_reg := a xor b;
 elsif (selector(2 downto 0)="011") then
	if selector(3)='1' then
	res_reg := a;
	elsif selector(3)='0' then
	res_reg := not a;
	end if;	
 elsif (selector(2 downto 0)="100") then
	if selector(3)='1' then
	res_reg := a+b;
	elsif selector(3)='0' then
	res_reg := a-b;
	end if;	
 elsif (selector(2 downto 0)="101") then
	if selector(3)='1' then
	res_reg := a(6 downto 0) & a(7);
	elsif selector(3)='0' then
	res_reg := a(0) & a(7 downto 1) ;
	end if;	
 elsif (selector(2 downto 0)="110") then
	if selector(3)='1' then
	res_reg := '0' & a(7 downto 1);
	elsif selector(3)='0' then
	res_reg := a(6 downto 0) & '0';
	end if;	
 elsif (selector(2 downto 0)="111") then
	if selector(3)='1' then
	res_reg := a(7) & a(7 downto 1);
	elsif selector(3)='0' then
	res_reg := a(6 downto 0) & '0' ;
	end if;	
 end if;	
	

 res <= res_reg;
 
 end process;


end Behavioral;

