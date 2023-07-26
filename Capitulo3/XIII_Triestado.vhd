-- Ejercicio 3.13
-- Tenemos un circuito que a los puertos de
-- G activos en bajo controlan la salida Y

library library IEEE;
use IEEE.std_logic_1164.all;

entity XIII_Triestado is
    port (
        g   : in std_logic_vector(1 downto 0);
        a   : in std_logic_vector(7 downto 0);
        y   : out std_logic_vector(7 downto 0)
    );
end entity XIII_Triestado;

architecture decodificadores of XIII_Triestado is
begin
    process(a, g)
    begin
        if g = "00" then
            y <= a;
        else
            y <= "ZZZZZZZZ";
        end if;
    end process;
end architecture decodificadores;