library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity RegisterFile is
port(
    clock  : in std_logic;
    reset  : in std_logic;
    dataIn : in std_logic_vector(7 downto 0);
    enable : in std_logic;
    selectRead  : in std_logic_vector(7 downto 0);
    selectWrite : in std_logic_vector(7 downto 0);

    dataOut : out std_logic_vector(7 downto 0)
);
end RegisterFile;

architecture RegisterFileArchitecture of RegisterFile is
    type RegisterEntry is array (0 to 255) of std_logic_vector(7 downto 0);
    signal entry : RegisterEntry;
    signal readIndex  : integer;
    signal writeIndex : integer;
begin
    
    readIndex <= to_integer(unsigned(selectRead));
    writeIndex <= to_integer(unsigned(selectWrite));

    process(clock)
    begin
        if (rising_edge(clock)) then
           
            dataOut <= entry(readIndex);    

            if (reset = '1') then
                entry(writeIndex) <= "00000000";
            elsif (enable = '1') then
                entry(writeIndex) <= dataIn;
            end if; 
        end if;
    end process;
end RegisterFileArchitecture;