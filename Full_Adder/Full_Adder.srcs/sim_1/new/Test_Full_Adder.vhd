library ieee;
use ieee.std_logic_1164.all;

entity test_full_adder is
end;

architecture test of test_full_adder is

    component full_adder
    port
    (
        a       :   in std_logic;
        b       :   in std_logic;
        c_in    :   in std_logic;
        sum     :   out std_logic;
        c_out   :   out std_logic
    );
    end component;
    
    signal a_value : std_logic := '0';
    signal b_value : std_logic := '0';
    signal c_in_value : std_logic := '0';
    signal sum_value, c_out_value : std_logic;

begin

    dev_to_test: full_adder
        port map(a_value, b_value, c_in_value, sum_value, c_out_value);
        
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
    
    c_in_stimulus: process
    begin
        wait for 40 ns;
        c_in_value <= not c_in_value;
    end process c_in_stimulus;

end test;