library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Gestion du multiplexage des 8 afficheurs 7 segments.
-- Compteur 22 bits : un afficheur est actif pendant 2^19 periodes de CLK.
-- Numero d'afficheur d = cnt(21 downto 19)  (AN(0) = afficheur de droite)
--   UNIT_SEL = d(0)            : 0 = unites, 1 = dizaines
--   MOD_SEL  = d(2 downto 1)   : 00 = A, 01 = Cplmt2, 10 = BitShift, 11 = 0
-- Ordre d'affichage de droite a gauche : A (U,D) | Cplmt2 (U,D) | BitShift (U,D) | 00
entity GestAffichage is
    Port ( CLK      : in  STD_LOGIC;
           MOD_SEL  : out STD_LOGIC_VECTOR (1 downto 0);
           UNIT_SEL : out STD_LOGIC;
           AN       : out STD_LOGIC_VECTOR (7 downto 0));
end GestAffichage;

architecture Behavioral of GestAffichage is
    signal cnt : unsigned(21 downto 0) := (others => '0');
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            cnt <= cnt + 1;
        end if;
    end process;

    MOD_SEL  <= std_logic_vector(cnt(21 downto 20));
    UNIT_SEL <= cnt(19);

    -- anodes actives a '0'
    with cnt(21 downto 19) select
        AN <= "11111110" when "000",
              "11111101" when "001",
              "11111011" when "010",
              "11110111" when "011",
              "11101111" when "100",
              "11011111" when "101",
              "10111111" when "110",
              "01111111" when others;
end Behavioral;
