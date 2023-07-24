-- Ejercicio 2.20
-- Se pide flujo de datos con lo que con una ecuacion
-- booleana, se comprueba el estado de los cuatro
-- botones, al pulsar los tres un 1 indica la apertura

library IEEE;
use IEEE.std_logic_1164.all;

entity XX_Caja is
    port (
        a, b, c, d  : in    std_logic;
        caja        : out   std_logic
    );
end entity XX_Caja;

architecture f_datos of XX_Caja is 
begin
    caja <= a and c and d and not b;
end architecture f_datos;