-- Ejercicio 2.19
-- Se pide flujo de datos con lo que con una ecuacion
-- booleana, se comprueba el estado de los sensores
-- y mediante un 1 el robot lleva, con el 0, se queda

library IEEE;
use IEEE.std_logic_1164.all;

entity XIX_Robot is
    port (
        a, b, c, d  : in    std_logic;
        robot       : out   std_logic
    );
end entity XIX_Robot;

architecture f_datos of XIX_Robot is 
begin
    robot <= a and b and c and d;
end architecture f_datos;