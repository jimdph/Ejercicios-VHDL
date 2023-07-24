-- Ejercicio 3.11
-- Con programación concurrente se simula un circuito
-- Dado que la imagen no está clara se elabora un
-- circuito semejante

library library IEEE;
use IEEE.std_logic_1164.all;

entity XI_Circuito is
    port (
        x, y, z : in std_logic;
        f1, f2  : out std_logic
    );
end entity XI_Circuito;

architecture concurrente of XI_Circuito is
    signal a : std_logic;
begin
    a <= y and z;
    f1 <= a or (x and y);
    f2 <= a or (not y and not x);
end architecture concurrente;