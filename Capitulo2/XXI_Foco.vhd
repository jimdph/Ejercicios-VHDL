-- Ejercicio 2.21
-- Mediante programación estructural se implementa un
-- conmutador de luz para una escalera que actúa como
-- un xor

-- Componente XOR
library IEEE;
use IEEE.std_logic_1164.all;

entity big_xor is
    port (
        A, B    : in std_logic;
        F       : out std_logic
    );
end entity big_xor;

architecture compt of big_xor is
begin
    F <= ((A and (not B)) or ( (not A) and B));
end architecture compt;

-- Entidad
library IEEE;
use IEEE.std_logic_1164.all;

entity XXI_Foco is
    port (
        a, b    : in    std_logic;
        c       : out   std_logic
    );
end entity XXI_Foco;

architecture estructural of XXI_Foco is
    component big_xor is
        port (
            A, B    : in std_logic;
            F       : out std_logic
        );
    end component;
begin
    x1: big_xor port map (A => a, B => b, F => c);
end architecture estructural;