
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VHDL_1 is
    Port (
        vt  : in  STD_LOGIC_VECTOR(12 downto 0);
        en  : in  STD_LOGIC;
        seg : out STD_LOGIC_VECTOR(6 downto 0)
    );
end VHDL_1;

architecture Behavioral of VHDL_1 is
begin

    process(vt, en)
        variable cnt : integer range 0 to 13;
    begin
        cnt := 0;

        for i in vt'range loop
            if vt(i) = '1' then
                cnt := cnt + 1;
            end if;
        end loop;

        if en = '0' then
            seg <= "0000000";
        else
            case cnt is
                when 0  => seg <= "1111110";
                when 1  => seg <= "0110000";
                when 2  => seg <= "1101101";
                when 3  => seg <= "1111001";
                when 4  => seg <= "0110011";
                when 5  => seg <= "1011011";
                when 6  => seg <= "1011111";
                when 7  => seg <= "1110000";
                when 8  => seg <= "1111111";
                when 9  => seg <= "1111011";
                when 10 => seg <= "1110111";
                when 11 => seg <= "0011111";
                when 12 => seg <= "1001110";
                when 13 => seg <= "0111101";
                when others => seg <= "0000000";
            end case;
        end if;
    end process;

end Behavioral;
