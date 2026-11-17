-- INF1500 Labo 4 - Cplmt2
-- Rouleau Adouani
-- Complement a 2 sur 5 bits : on inverse les bits pis on ajoute 1
-- Ex : 11011 donne 00101

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Cplmt2 is
    Port ( E : in  STD_LOGIC_VECTOR (4 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end Cplmt2;

architecture flot_donnees of Cplmt2 is
begin
    -- not E puis + 1 (le debordement est ignore sur 5 bits)
    S <= std_logic_vector(unsigned(not E) + 1);
end flot_donnees;
