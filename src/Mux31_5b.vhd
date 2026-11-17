-- INF1500 Labo 4 - Mux31_5b
-- Rouleau Adouani
-- Mux 3 vers 1 sur 5 bits
-- SEL 00 = E0  01 = E1  10 = E2  11 = 0

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux31_5b is
    Port ( E0  : in  STD_LOGIC_VECTOR (4 downto 0);
           E1  : in  STD_LOGIC_VECTOR (4 downto 0);
           E2  : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           S   : out STD_LOGIC_VECTOR (4 downto 0));
end Mux31_5b;

architecture flot_donnees of Mux31_5b is
begin
    with SEL select
        S <= E0              when "00",
             E1              when "01",
             E2              when "10",
             (others => '0') when others;  -- 11 donne 00000
end flot_donnees;
