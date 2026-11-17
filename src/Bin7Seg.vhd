-- INF1500 Labo 4 - Bin7Seg
-- Rouleau Adouani
-- Chiffre 0 a 9 vers afficheur 7 segments (actif bas)
-- bit 0 = segment A ... bit 6 = G  bit 7 = DP
-- Plus grand que 9 : tout eteint (11111111)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bin7Seg is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Bin7Seg;

architecture flot_donnees of Bin7Seg is
begin
    with E select
        S <= "11000000" when "0000",  -- 0
             "11111001" when "0001",  -- 1
             "10100100" when "0010",  -- 2
             "10110000" when "0011",  -- 3
             "10011001" when "0100",  -- 4
             "10010010" when "0101",  -- 5
             "10000010" when "0110",  -- 6
             "11111000" when "0111",  -- 7
             "10000000" when "1000",  -- 8
             "10010000" when "1001",  -- 9
             "11111111" when others;  -- 10 a 15 eteint
end flot_donnees;
