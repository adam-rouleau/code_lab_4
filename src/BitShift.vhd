----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:34:59 AM
-- Design Name: Décalage binaire
-- Module Name: BitShift - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: xc7a100tcsg324-1
-- Tool Versions: 
-- Description: Module qui applique un décalage logique d'un bit vers la gauche
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

entity BitShift is
    Port ( E : in STD_LOGIC_VECTOR (4 downto 0);
           S : out STD_LOGIC_VECTOR (4 downto 0));
end BitShift;

architecture Behavioral of BitShift is

begin

S <= std_logic_vector(shift_left(unsigned(E), 1));

end Behavioral;
