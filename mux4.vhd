library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           q : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is
    signal sel : INTEGER range 0 to 3;
begin
    sel <= 0 WHEN a = '0' AND b = '0' ELSE
           1 WHEN a = '1' AND b = '0' ELSE
           2 WHEN a = '0' AND b = '1' ELSE
           3 WHEN a = '1' AND b = '1' ELSE
           0; -- Default value if none of the conditions are met

    WITH sel SELECT
        q <= i0 AFTER 10 ns WHEN 0,
             i1 AFTER 10 ns WHEN 1,
             i2 AFTER 10 ns WHEN 2,
             i3 AFTER 10 ns WHEN 3;
end Behavioral;
