library ieee;
use ieee.std_logic_1164.all;

entity sixteen_bit_adder is
port
(
    a   :   in std_logic_vector(15 downto 0);
    b   :   in std_logic_vector(15 downto 0);
    c_in:   in std_logic;
    sum :   out std_logic_vector(15 downto 0);
    c_out:  out std_logic
);
end sixteen_bit_adder;

architecture behavioral of sixteen_bit_adder is

    signal carry    : std_logic_vector (14 downto 0);
    
    begin
        fa0:  entity work.full_adder port map(a(0), b(0), c_in,     sum(0), carry(0));
        fa1:  entity work.full_adder port map(a(1), b(1), carry(0), sum(1), carry(1));
        fa2:  entity work.full_adder port map(a(2), b(2), carry(1), sum(2), carry(2));
        fa3:  entity work.full_adder port map(a(3), b(3), carry(2), sum(3), carry(3));
        fa4:  entity work.full_adder port map(a(4), b(4), carry(3), sum(4), carry(4));
        fa5:  entity work.full_adder port map(a(5), b(5), carry(4), sum(5), carry(5));
        fa6:  entity work.full_adder port map(a(6), b(6), carry(5), sum(6), carry(6));
        fa7:  entity work.full_adder port map(a(7), b(7), carry(6), sum(7), carry(7));
        fa8:  entity work.full_adder port map(a(8), b(8), carry(7), sum(8), carry(8));
        fa9:  entity work.full_adder port map(a(9), b(9), carry(8), sum(9), carry(9));
        fa10: entity work.full_adder port map(a(10),b(10),carry(9), sum(10),carry(10));
        fa11: entity work.full_adder port map(a(11),b(11),carry(10),sum(11),carry(11));
        fa12: entity work.full_adder port map(a(12),b(12),carry(11),sum(12),carry(12));
        fa13: entity work.full_adder port map(a(13),b(13),carry(12),sum(13),carry(13));
        fa14: entity work.full_adder port map(a(14),b(14),carry(13),sum(14),carry(14));
        fa15: entity work.full_adder port map(a(15),b(15),carry(14),sum(15),c_out);
    
end behavioral;