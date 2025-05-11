-- top.vhdl
entity Top_Level is
  Port ( clk        : in  std_logic;
         rst_n      : in  std_logic;
         analog_in  : in  std_logic_vector(15 downto 0);
         processed_out : out std_logic_vector(15 downto 0));
end Top_Level;

architecture Behavioral of Top_Level is
  component ADC is
    Port ( clk   : in  std_logic;
           rst_n : in  std_logic;
           analog_in : in  std_logic_vector(15 downto 0);
           digital_out : out std_logic_vector(15 downto 0) );
  end component;
  
  component DSP is
    Port ( clk        : in  std_logic;
           rst_n      : in  std_logic;
           data_in    : in  std_logic_vector(15 downto 0);
           data_out   : out std_logic_vector(15 downto 0) );
  end component;
  
  signal adc_data   : std_logic_vector(15 downto 0);
  signal dsp_data   : std_logic_vector(15 downto 0);
  
begin
  U1: ADC port map(clk, rst_n, analog_in, adc_data);
  U2: DSP port map(clk, rst_n, adc_data, dsp_data);
  processed_out <= dsp_data;
end Behavioral;
