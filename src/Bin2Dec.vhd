-- INF1500 Labo 4 - Bin2Dec
-- Rouleau Adouani
-- Conversion binaire vers decimal pour E de 0 a 31
-- S0 = unites  S1 = dizaines
-- Ex : 11001 (25) donne S0 = 0101 (5) pis S1 = 0010 (2)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Bin2Dec is
    Port ( E  : in  STD_LOGIC_VECTOR (4 downto 0);
           S0 : out STD_LOGIC_VECTOR (3 downto 0);
           S1 : out STD_LOGIC_VECTOR (3 downto 0));
end Bin2Dec;

architecture flot_donnees of Bin2Dec is
    signal n     : unsigned(4 downto 0);
    signal unite : unsigned(4 downto 0);
begin
    n <= unsigned(E);

    -- dizaines : on compare avec 30 20 pis 10 (max 31 donc 3 dizaines)
    S1 <= "0011" when n >= 30 else
          "0010" when n >= 20 else
          "0001" when n >= 10 else
          "0000";

    -- unites : on enleve les dizaines
    unite <= n - 30 when n >= 30 else
             n - 20 when n >= 20 else
             n - 10 when n >= 10 else
             n;

    S0 <= std_logic_vector(unite(3 downto 0));
end flot_donnees;
