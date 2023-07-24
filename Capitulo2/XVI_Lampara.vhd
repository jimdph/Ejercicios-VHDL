-- Ejercicio 2.16 
-- Al solicitar un diseño funcional somos explicitos 
-- mediante un if al decir que cuando se pulsa el
-- boton se activa la lampara

library IEEE;
use IEEE.std_logic_1164.all;

entity XVI_Lampara is
    port (
        boton   : in    std_logic;
        lampara : out   std_logic
    );
end entity XVI_Lampara;

architecture funcional of XVI_Lampara is 
begin
    process(boton)
    begin
        if (boton = '1') then
            lampara <= '1';
        else
            lampara <= '0';
        end if;
    end process;
end architecture funcional;