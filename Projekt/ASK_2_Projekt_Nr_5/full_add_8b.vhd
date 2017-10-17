library ieee;
use ieee.std_logic_1164.all;

entity full_add_8b is
  port(A, B: in std_logic_vector(7 downto 0);
       Cin: in std_logic;
       S: out std_logic_vector(7 downto 0);
       Cout, Oout, Zout: out std_logic);
end full_add_8b;

library ieee;
use ieee.std_logic_1164.all;

entity full_add is
  port(A, B: in std_logic;
       Cin: in std_logic;
       S: out std_logic;
       Cout: out std_logic);
end full_add;

architecture full_add_arch of full_add is
begin
  S <= A xor B xor Cin;
  Cout <= (A and B) or (Cin and (A or B));
end;

architecture full_add_8b_arch of full_add_8b is

component full_add
  port(A, B: in std_logic;
       Cin: in std_logic;
       S: out std_logic;
       Cout: out std_logic);
end component;

signal Cr, LS: std_logic_vector(7 downto 0);

begin
  s0: full_add port map (A(0), B(0), Cin,   LS(0), Cr(0));
  s1: full_add port map (A(1), B(1), Cr(0), LS(1), Cr(1));
  s2: full_add port map (A(2), B(2), Cr(1), LS(2), Cr(2));
  s3: full_add port map (A(3), B(3), Cr(2), LS(3), Cr(3));
  s4: full_add port map (A(4), B(4), Cr(3), LS(4), Cr(4));
  s5: full_add port map (A(5), B(5), Cr(4), LS(5), Cr(5));
  s6: full_add port map (A(6), B(6), Cr(5), LS(6), Cr(6));
  s7: full_add port map (A(7), B(7), Cr(6), LS(7), Cr(7));
  Cout <= Cr(7);
  Oout <= Cr(7) xor Cr(6);
  Zout <= not (LS(0) or LS(1) or LS(2) or LS(3) or LS(4) or LS(5) or LS(6) or LS(7));
  S <= LS;
end full_add_8b_arch;

