----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:36:38 AM
-- Design Name: Convertisseur binaire vers décimal
-- Module Name: Bin2Dec - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: xc7a100tcsg324-1
-- Tool Versions: 
-- Description: Convertisseur binaire vers décimal sur 4 bits
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

entity Bin2Dec is
    Port ( E : in STD_LOGIC_VECTOR (4 downto 0);
           S0 : out STD_LOGIC_VECTOR (3 downto 0);
           S1 : out STD_LOGIC_VECTOR (3 downto 0));
end Bin2Dec;

architecture Behavioral of Bin2Dec is

begin

-- Integer division, puisque 5 est décimal, il est discarded
S0 <= std_logic_vector(unsigned(E) / 10);
S1 <= std_logic_vector(unsigned(E) mod 10);

end Behavioral;
