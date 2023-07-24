-- Ejercicio 2.22
-- Mediante programación estructural se implementa un
-- componente para y = a b + c b + ac.

-- Componente AND de 2 entradas
library IEEE;
use IEEE.std_logic_1164.all;
entity and_2 is
    port (
        A, B    : in std_logic;
        F       : out std_logic
    );
end entity and_2;
architecture compt of and_2  is
begin
    F <= A and B;
end architecture compt;

-- Componente OR de 3 entradas
library IEEE;
use IEEE.std_logic_1164.all;
entity or_3 is
    port (
        A, B, C : in std_logic;
        F       : out std_logic
    );
end entity or_3;
architecture compt of or_3  is
begin
    F <= A or B or C;
end architecture compt;

-- Entidad principal
library IEEE;
use IEEE.std_logic_1164.all;

entity XXII_Motor is
    port (
        a, b, c : in    std_logic;
        y       : out   std_logic
    );
end entity XXII_Motor;

architecture estructural of XXII_Motor is
    component and_2 is
        port (
            A, B    : in std_logic;
            F       : out std_logic
        );
    end component;
    component or_3 is
        port (
            A, B, C : in std_logic;
            F       : out std_logic
        );
    end component;
    signal x: std_logic_vector(2 downto 0);
begin
    x1: and_2 port map (A => a, B => b, F => x(0));
    x2: and_2 port map (A => c, B => b, F => x(1));
    x3: and_2 port map (A => a, B => c, F => x(2));
    x4: or_3 port map (A => x(0), B => x(1), C => x(2), F => y);
end architecture estructural;