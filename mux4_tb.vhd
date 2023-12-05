library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity mux4_tb is
end;

architecture bench of mux4_tb is

  component mux4
      Port ( i0 : in STD_LOGIC;
             i1 : in STD_LOGIC;
             i2 : in STD_LOGIC;
             i3 : in STD_LOGIC;
             a : in STD_LOGIC;
             b : in STD_LOGIC;
             q : out STD_LOGIC);
  end component;

  signal i0: STD_LOGIC;
  signal i1: STD_LOGIC;
  signal i2: STD_LOGIC;
  signal i3: STD_LOGIC;
  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal q: STD_LOGIC;

begin

  uut: mux4 port map ( i0 => i0,
                       i1 => i1,
                       i2 => i2,
                       i3 => i3,
                       a  => a,
                       b  => b,
                       q  => q );

  stimulus: process
  begin
  
    -- Put initialisation code here
    -- Test case 1
    i0 <= '1';
    i1 <= '0';
    i2 <= '0';
    i3 <= '0';
    a <= '0';
    b <= '0';
    wait for 10 ns;
    -- Now, q should be the value of i0 since sel = 0

    -- Test case 2
    i0 <= '0';
    i1 <= '1';
    i2 <= '0';
    i3 <= '0';
    a <= '0';
    b <= '1';
    wait for 10 ns;
    -- Now, q should be the value of i1 since sel = 1

    -- Test case 3
    i0 <= '1';
    i1 <= '1';
    i2 <= '0';
    i3 <= '1';
    a <= '1';
    b <= '0';
    wait for 10 ns;
    -- Now, q should be the value of i2 since sel = 2

    -- Test case 4
    i0 <= '0';
    i1 <= '0';
    i2 <= '0';
    i3 <= '1';
    a <= '1';
    b <= '0';
    wait for 10 ns;
    -- Now, q should be the value of i3 since sel = 3

    -- Additional test case
    i0 <= '1';
    i1 <= '1';
    i2 <= '0';
    i3 <= '0';
    a <= '1';
    b <= '1';
    wait for 10 ns;
    -- Now, q should be the value of i3 since sel = 3


    -- Put test bench stimulus code here

    wait;
  end process;


end;
