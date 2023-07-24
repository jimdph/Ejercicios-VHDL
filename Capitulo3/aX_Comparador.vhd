-- Ejercicio 3.10
-- Comparador con salida 1 cuando X<Z

library library IEEE;
use IEEE.std_logic_1164.all;

entity aX_Comparador is
    port (
        x, z    : in std_logic_vector(2 downto 0);
        f       : out std_logic
    );
end entity aX_Comparador;

architecture concurrente of aX_Comparador is
    
begin
    f <= '1' when x < z else
         '0'; 
end architecture concurrente;