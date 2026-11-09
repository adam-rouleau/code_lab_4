----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:37:59 AM
-- Design Name: Affichage 7 segment
-- Module Name: Bin7Seg - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: 
-- Tool Versions: 
-- Description: Map tous les cas de nombres binaires en leur affichage décimal
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 1.00 - Ajout du comportement principal
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bin7Seg is
    Port ( E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Bin7Seg;

architecture Behavioral of Bin7Seg is

begin

with E select
    S <= "11000000" when "0000", -- 0
         "11111001" when "0001", -- 1
         "10100100" when "0010", -- 2
         "10110000" when "0011", -- 3
         "10011001" when "0100", -- 4
         "10010010" when "0101", -- 5
         "10000010" when "0110", -- 6
         "11011000" when "0111", -- 7
         "10000000" when "1000", -- 8
         "10011000" when "1001", -- 9
         "10001000" when "1010", -- 10 (A)
         -- Je ne vois pas comment implémenter le B (ressemble à 8)
         "11000110" when "1100", -- 13 (C)
         -- Je ne vois pas comment implémenter le D (ressemble à 0)
         "10000110" when "1111", -- 15 (E)
         "00000000" when others;

end Behavioral;
