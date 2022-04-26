--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Mon Apr 25 22:45:47 2022
--Host        : Supintmac running 64-bit major release  (build 9200)
--Command     : generate_target AXI_GPIO_wrapper.bd
--Design      : AXI_GPIO_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_GPIO_wrapper is
end AXI_GPIO_wrapper;

architecture STRUCTURE of AXI_GPIO_wrapper is
  component AXI_GPIO is
  end component AXI_GPIO;
begin
AXI_GPIO_i: component AXI_GPIO
 ;
end STRUCTURE;
