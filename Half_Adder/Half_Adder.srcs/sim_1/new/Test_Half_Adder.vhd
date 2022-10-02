library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_half_adder is
end;

architecture test of test_half_adder is

component Half_Adder
port
(
    a   :   in std_logic;
    b   :   in std_logic;
    sum :   out std_logic;
    carry:  out std_logic
);
end component;

signal a_value : std_logic := '0';
signal b_value : std_logic := '0';
signal sum_value, carry_value : std_logic;

begin
    
    dev_to_test: Half_Adder
        port map(a_value, b_value, sum_value, carry_value);
        
    a_stimulus: process
    begin
        wait for 10 ns;
        a_value <= not a_value;
    end process a_stimulus;
    
    b_stimulus: process
    begin
        wait for 20 ns;
        b_value <= not b_value;
    end process b_stimulus;
    
end test;