library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port
    (
        a       :   in std_logic;
        b       :   in std_logic;
        c_in    :   in std_logic;
        sum     :   out std_logic;
        c_out   :   out std_logic        
    );
end full_adder;

architecture behavioral of full_adder is
begin
    sum <= (not c_in and (a xor b)) or (c_in and (a xnor b));
    c_out <= (c_in and (a or b)) or (a and b);
end behavioral;