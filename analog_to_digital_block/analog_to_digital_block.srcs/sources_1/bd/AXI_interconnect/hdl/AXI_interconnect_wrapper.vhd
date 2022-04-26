--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Mon Apr 25 22:46:19 2022
--Host        : Supintmac running 64-bit major release  (build 9200)
--Command     : generate_target AXI_interconnect_wrapper.bd
--Design      : AXI_interconnect_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_interconnect_wrapper is
end AXI_interconnect_wrapper;

architecture STRUCTURE of AXI_interconnect_wrapper is
  component AXI_interconnect is
  end component AXI_interconnect;
begin
AXI_interconnect_i: component AXI_interconnect
 ;
end STRUCTURE;
