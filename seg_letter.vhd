library ieee;
use ieee.std_logic_1164.all;

entity seg_letter is
    port(
        en      :in  std_logic;
        sel     :in  std_logic_vector(2 downto 0);
        display :out std_logic_vector(7 downto 0)  -- a b c d e f g dp
    );
end entity seg_letter;

architecture bhv of seg_letter is
begin
    process(en, sel)
    begin
        if en = '0' then
            display <= "ZZZZZZZZ";
        else
            case sel is
                when "000" => display <= "11101110"; -- A
                when "001" => display <= "00111110"; -- b
                when "010" => display <= "10011100"; -- C
                when "011" => display <= "01111010"; -- d
                when "100" => display <= "10001110"; -- F
                when "101" => display <= "10111100"; -- G
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;