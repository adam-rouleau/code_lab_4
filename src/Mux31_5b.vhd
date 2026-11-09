----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:35:56 AM
-- Design Name: Multiplexeur 3 vers 1 5 bits
-- Module Name: Mux31_5B - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: xc7a100tcsg324-1
-- Tool Versions: 
-- Description: Multiplexeur 2 vers 1
--              Permet le choix entre 
--                  Les deux modules 
--                  L'entrée du circuit
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

entity Mux31_5B is
    Port ( E0 : in STD_LOGIC_VECTOR (4 downto 0);
           E1 : in STD_LOGIC_VECTOR (4 downto 0);
           E2 : in STD_LOGIC_VECTOR (4 downto 0);
           SEL : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end Mux31_5B;

architecture Behavioral of Mux31_5B is

begin

with SEL select
    S <= E0 when "00",
         E1 when "01",
         E2 when "10",
         "00000000" when "01",
         "00000000" when others;

end Behavioral;
