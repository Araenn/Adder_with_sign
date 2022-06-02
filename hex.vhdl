entity hex is
port (
  an : out std_logic_vector (3 downto 0);
  btn : in std_logic_vector (3 downto 0);
  sw : in std_logic_vector (3 downto 0);
  dp : in std_logic;
  code_hex : out std_logic_vector (7 downto 0)
);
end hex;
  
architecture hex_to_seg of hex is
signal segsig : std_logic_vector (6 downto 0);
begin
  an <= not(btn);
  process (sw)
  begin
  case sw is
    when "0000" => segsig <= "1000000";
    when "0001" => segsig <= "1111001";
    when "0010" => segsig <= "0100100";
    when "0011" => segsig <= "0110000";
    when "0100" => segsig <= "0011001";
    when "0101" => segsig <= "0010010";
    when "0110" => segsig <= "0000010";
    when "0111" => segsig <= "1111000";
    when "1000" => segsig <= "0000000";
    when "1001" => segsig <= "0010000";
    when "1010" => segsig <= "0100000";
    when "1011" => segsig <= "0000011";
    when "1100" => segsig <= "1000110";
    when "1101" => segsig <= "0100001";
    when "1110" => segsig <= "0000110";
    when "1111" => segsig <= "0001110";
  end case;
  end process;
  code_hex <= dp & segsig;
end hex_to_seg;
