----------------------------------------------------------------------------------
-- Company: Polytechnique Montréal
-- Engineer: Adam Rouleau
-- 
-- Create Date: 11/09/2026 09:37:26 AM
-- Design Name: Multiplexeur 2 à 1 4 bits
-- Module Name: Mux21_4B - Behavioral
-- Project Name: INF1500 - Laboratoire 4
-- Target Devices: xc7a100tcsg324-1
-- Tool Versions: 
-- Description: Multiplexeur 2 vers 1
--              Permet le choix entre uniutés et dizaines
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

entity Mux21_4B is
    Port ( E0 : in STD_LOGIC_VECTOR (3 downto 0);
           E1 : in STD_LOGIC_VECTOR (3 downto 0);
           SEL : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Mux21_4B;

architecture Behavioral of Mux21_4B is

begin

with SEL select
    S <= E0 when '0',
         E1 when '1',
         "00000000" when others;

end Behavioral;
