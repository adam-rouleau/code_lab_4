-- INF1500 Labo 4 - Circuit complet
-- Rouleau Adouani
-- Branche les modules comme la figure 1 de l'enonce
-- Afficheurs de droite a gauche : A (U D)  Cplmt2 (U D)  BitShift (U D)  00

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
    Port ( A         : in  STD_LOGIC_VECTOR (4 downto 0);
           CLK       : in  STD_LOGIC;
           SEVEN_SEG : out STD_LOGIC_VECTOR (7 downto 0);
           AN        : out STD_LOGIC_VECTOR (7 downto 0));
end Top;

architecture structurelle of Top is
    signal s_cplmt2   : STD_LOGIC_VECTOR (4 downto 0);
    signal s_shift    : STD_LOGIC_VECTOR (4 downto 0);
    signal s_mod_sel  : STD_LOGIC_VECTOR (1 downto 0);
    signal s_unit_sel : STD_LOGIC;
    signal s_choix    : STD_LOGIC_VECTOR (4 downto 0);
    signal s_unites   : STD_LOGIC_VECTOR (3 downto 0);
    signal s_dizaines : STD_LOGIC_VECTOR (3 downto 0);
    signal s_chiffre  : STD_LOGIC_VECTOR (3 downto 0);
begin
    u_cplmt2 : entity work.Cplmt2
        port map (E => A, S => s_cplmt2);

    u_shift : entity work.BitShift
        port map (E => A, S => s_shift);

    -- gestion des afficheurs (fourni)
    u_gest : entity work.GestAffichage
        port map (CLK => CLK, MOD_SEL => s_mod_sel, UNIT_SEL => s_unit_sel, AN => AN);

    -- choix entre A  Cplmt2 pis BitShift
    u_mux31 : entity work.Mux31_5b
        port map (E0 => A, E1 => s_cplmt2, E2 => s_shift, SEL => s_mod_sel, S => s_choix);

    u_dec : entity work.Bin2Dec
        port map (E => s_choix, S0 => s_unites, S1 => s_dizaines);

    -- choix entre unites pis dizaines
    u_mux21 : entity work.Mux21_4b
        port map (E0 => s_unites, E1 => s_dizaines, SEL => s_unit_sel, S => s_chiffre);

    u_7seg : entity work.Bin7Seg
        port map (E => s_chiffre, S => SEVEN_SEG);
end structurelle;
