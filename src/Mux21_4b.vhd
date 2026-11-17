-- INF1500 Labo 4 - Mux21_4b
-- Rouleau Adouani
-- Mux 2 vers 1 sur 4 bits
-- SEL 0 = E0 (unites)  1 = E1 (dizaines)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux21_4b is
    Port ( E0  : in  STD_LOGIC_VECTOR (3 downto 0);
           E1  : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC;
           S   : out STD_LOGIC_VECTOR (3 downto 0));
end Mux21_4b;

architecture flot_donnees of Mux21_4b is
begin
    with SEL select
        S <= E0              when '0',
             E1              when '1',
             (others => '0') when others;  -- SEL pas defini
end flot_donnees;
