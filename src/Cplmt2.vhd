----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:34:21 AM
-- Design Name: Complément à 2
-- Module Name: Cplmt2 - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: xc7a100tcsg324-1
-- Tool Versions: 
-- Description: Module qui applique une conversion décimale sur l'entrée
--                  Ressort les unités et dizaines codées en binaires 
--                  Sur les sorties S0 et S1
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

entity Cplmt2 is
    Port ( E : in STD_LOGIC_VECTOR (4 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end Cplmt2;

architecture Behavioral of Cplmt2 is

begin

S <= std_logic_vector(not unsigned(E) + 1);

end Behavioral;
