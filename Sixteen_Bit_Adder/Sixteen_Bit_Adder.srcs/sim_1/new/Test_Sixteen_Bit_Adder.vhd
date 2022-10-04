library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_sixteen_bit_adder is
end;

architecture test of test_sixteen_bit_adder is

    component sixteen_bit_adder
    port
    (
        a       :   in std_logic_vector(15 downto 0);
        b       :   in std_logic_vector(15 downto 0);
        c_in    :   in std_logic;
        sum     :   out std_logic_vector(15 downto 0);
        c_out   :   out std_logic
    );
    end component;
    
    signal a_value : std_logic_vector(15 downto 0) := B"1010101010101010";
    signal b_value : std_logic_vector(15 downto 0) := B"0101010101010101";
    signal c_in_value : std_logic := '1';
    signal sum_value : std_logic_vector(15 downto 0);
    signal c_out_value : std_logic;
    
    begin
    
    dev_to_test: sixteen_bit_adder
        port map(a_value, b_value, c_in_value, sum_value, c_out_value);
        
end test;