-- adc.vhdl
entity ADC is
  Port ( clk   : in  std_logic;
         rst_n : in  std_logic;
         analog_in : in  std_logic_vector(15 downto 0); -- 16-bit analog input
         digital_out : out std_logic_vector(15 downto 0) ); -- 16-bit digital output
end ADC;

architecture Behavioral of ADC is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        digital_out <= (others => '0');
      else
        digital_out <= analog_in;
      end if;
    end if;
  end process;
end Behavioral;
