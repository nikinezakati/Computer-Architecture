----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:02 06/05/2021 
-- Design Name: 
-- Module Name:    priority_queue - Behavioral 
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

entity priority_queue is
    Port ( enqueue : in  STD_LOGIC;
           dequeue : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           key : in  STD_LOGIC_VECTOR (15 downto 0);
           value : in  STD_LOGIC_VECTOR (7 downto 0);
           smallValue : out  STD_LOGIC_VECTOR (7 downto 0);
           busy : out  STD_LOGIC;
           empty : out  STD_LOGIC;
           full : out  STD_LOGIC);
end priority_queue;

architecture Behavioral of priority_queue is

constant rowSize: integer := 8; 

type pqElement is record
    dp: std_logic;
    key: std_logic_vector(15 downto 0);
    value: std_logic_vector(7 downto 0);
end record pqElement;
type rowTyp is array(0 to rowSize-1) of pqElement;
signal top, bot: rowTyp;

type state_type is (ready, inserting, deleting);
signal state: state_type;
begin
    process(clk) begin
        if rising_edge(clk) then
            if reset = '1' then
                for i in 0 to rowSize-1 loop
                    top(i).dp <= '0'; bot(i).dp <= '0';
                end loop;
                state <= ready;
            elsif state = ready and enqueue = '1' then
                if top(rowSize-1).dp /= '1' then
                    for i in 1 to rowSize-1 loop
                        top(i) <= top(i-1);
                    end loop;
                    top(0) <= ('1',key,value);
                    state <= inserting;
                end if;
            elsif state = ready and dequeue = '1' then
                if bot(0).dp /= '0' then
                    for i in 0 to rowSize-2 loop
                        bot(i) <= bot(i+1);
                    end loop;
                    bot(rowSize-1).dp <= '0';
                    state <= deleting;
                end if;
            elsif state = inserting or state = deleting then
                for i in 0 to rowSize-1 loop
                    if top(i).dp = '1' and
                        (top(i).key < bot(i).key
                         or bot(i).dp = '0') then
                        bot(i) <= top(i); top(i) <= bot(i);
                    end if;
               end loop;
                state <= ready;
            end if;
        end if;
    end process;
    smallValue <= bot(0).value when bot(0).dp = '1' else
                  (others => '0');
    empty <= not bot(0).dp;
    full <= top(rowSize-1).dp;
    busy <= '1' when state /= ready else '0';

end Behavioral;

