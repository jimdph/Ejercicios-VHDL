-- Ejercicio 2.17 
-- En este caso suponemos que tenemos un ventilador
-- con dos terminales que segun como se alimente
-- se define el giro

library IEEE;
use IEEE.std_logic_1164.all;

entity XVII_Ventilador is
    port (
        botonA, botonB  : in    std_logic;
        ventA, ventB    : out   std_logic
    );
end entity XVII_Ventilador;

architecture funcional of XVII_Ventilador is 
begin
    process(botonA, botonB)
    begin
        if (botonA = '1') then
            ventA <= '1';
            ventB <= '0';
        elsif (botonB = '1') then
            ventA <= '0';
            ventB <= '1';
        else
            ventA <= '0';
            ventB <= '0';
        end if;
    end process;
end architecture funcional;