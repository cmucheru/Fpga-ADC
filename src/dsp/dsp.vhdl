-- dsp.vhdl
entity DSP is
  Port ( clk        : in  std_logic;
         rst_n      : in  std_logic;
         data_in    : in  std_logic_vector(15 downto 0);
         data_out   : out std_logic_vector(15 downto 0));
end DSP;

architecture Behavioral of DSP is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        data_out <= (others => '0');
      else
        -- Simple DSP process (example: copy input to output)
        data_out <= data_in;
      end if;
    end if;
  end process;
end Behavioral;
