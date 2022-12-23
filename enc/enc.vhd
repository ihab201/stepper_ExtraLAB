library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
Entity enc is
port(
W: in std_logic_vector (7 downto 0);

Y: out std_logic_vector(2 downto 0);
GS: out std_logic);
end enc;
architecture behavioral of enc is
begin 
process(W)
begin
if W(7)='1' then Y<="111";
Elsif W(6)='1' then Y<="110";
Elsif W(5)='1' then Y<="101";
Elsif W(4)='1' then Y<="100";
Elsif W(3)='1' then Y<="011";
Elsif W(2)='1' then Y<="010";
Elsif W(1)='1' then Y<="001";
else Y<="000";
end if;
end process;
GS<='0' when W="00000000" else
    '1';
end behavioral;