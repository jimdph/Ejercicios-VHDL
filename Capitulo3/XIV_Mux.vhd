-- Ejercicio 3.14
-- Multiplexor con puerto de habilitación en bajo y
-- tres entradas para escoger, dos salidas, una normal
-- y otra negada

library library IEEE;
use IEEE.std_logic_1164.all;

entity XIV_Mux is
    port (
        a, b,c, en  : in std_logic;
        e           : in std_logic_vector(7 downto 0);
        y, ny       : out std_logic
    );
end entity XIV_Mux;

architecture multiplexores of XIV_Mux is
    signal aux : std_logic_vector(2 downto 0);
begin
    aux <= c & b & a;
    process(aux, e, en)
    begin
        if (en = '1') then
            y <= '0'; ny <= '1';
        else
            case aux is
                when "000" =>
                    y <= e(0); ny <= not e(0);
                when "001" =>
                    y <= e(1); ny <= not e(1);
                when "010" =>
                    y <= e(2); ny <= not e(2);
                when "011" =>
                    y <= e(3); ny <= not e(3);
                when "100" =>
                    y <= e(4); ny <= not e(4);
                when "101" =>
                    y <= e(5); ny <= not e(5);
                when "110" =>
                    y <= e(6); ny <= not e(6);
                when "111" =>
                    y <= e(7); ny <= not e(7);
                when others =>
                    y <= 'Z'; ny <= 'Z';
            end case;
        end if;
    end process;
end architecture multiplexores;