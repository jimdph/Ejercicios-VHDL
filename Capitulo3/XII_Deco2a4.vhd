-- Ejercicio 3.12
-- Con un if-then-else se programa un decodificador de
-- 2 a 4 con una entrada de habilitación activada en
-- bajo

library library IEEE;
use IEEE.std_logic_1164.all;

entity XII_Deco2a4 is
    port (
        en, a, b    : in std_logic;
        y           : out std_logic_vector(0 to 3)
    );
end entity XII_Deco2a4;

architecture decodificadores of XII_Deco2a is
begin
    process(en, a, b)
    begin
        if (en = '1') then
            y <= "0000";
        elsif (a = '0' and b = '0') then
            y <= "0000";
            y(0) <= '1';
        elsif (a = '1' and b = '0') then
            y <= "0000";
            y(1) <= '1';
        elsif (a = '0' and b = '1') then
            y <= "0000";
            y(2) <= '1';
        else
            y <= "0000";
            y(3) <= '1';
        end if;
    end process;
end architecture decodificadores;