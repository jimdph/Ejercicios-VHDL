-- Ejercicio 2.18 
-- Se pide flujo de datos con lo que se usa when else
-- y una ecuacion booleana, c se enciende cuando
-- alguno de los dos esta por debajo de 25 y d y e se
-- enciende cuando ambos estan en 100

library IEEE;
use IEEE.std_logic_1164.all;

entity XVIII_Panel is
    port (
        a, b    : in    std_logic;
        c, d, e : out   std_logic
    );
end entity XVIII_Panel;

architecture f_datos of XVIII_Panel is 
begin
    c <= '1' when a = '0' or b = '0' else
         '0';
    d <= '1' when a = '1' and b = '1' else
         '0';
    e <= a and b;
end architecture f_datos;