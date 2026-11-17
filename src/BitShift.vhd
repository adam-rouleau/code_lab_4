-- INF1500 Labo 4 - BitShift
-- Rouleau Adouani
-- Decalage logique de 1 vers la gauche sur 5 bits
-- Ex : 00110 donne 01100 pis le bit de gauche est perdu

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BitShift is
    Port ( E : in  STD_LOGIC_VECTOR (4 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end BitShift;

architecture flot_donnees of BitShift is
begin
    -- shift_left met un 0 a droite (pas de + - ou *)
    S <= std_logic_vector(shift_left(unsigned(E), 1));
end flot_donnees;
