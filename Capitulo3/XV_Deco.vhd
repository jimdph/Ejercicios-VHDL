-- Ejercicio 3.15
-- Decodificador binario de 2a4 con una señal de
-- habilitación

library library IEEE;
use IEEE.std_logic_1164.all;

entity XV_Deco is
    port (
        en      : in std_logic;
        entrada : in std_logic_vector(1 downto 0);
        salida  : out std_logic_vector(3 downto 0)
    );
end entity XV_Deco;

architecture multiplexores of XV_Deco is
    signal aux1 : std_logic;
    signal aux2 : std_logic;
begin
    aux1 <= entrada(0);
    aux2 <= entrada(1);
    process(aux1, aux2, en)
    begin
        if (en = '0') then
            salida <= "0000";
        else
            if (aux1 = '0' and aux2 = '0') then
                salida <= "0001";
            elsif (aux1 = '1' and aux2 = '0') then
                salida <= "0010";
            elsif (aux1 = '0' and aux2 = '1') then
                salida <= "0100";
            elsif (aux1 = '1' and aux2 = '1') then
                salida <= "1000";
            end if;
        end if;
    end process;
end architecture multiplexores;