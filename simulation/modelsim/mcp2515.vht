-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/02/2020 09:20:15"
                                                            
-- Vhdl Test Bench template for design  :  mcp2515
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mcp2515_vhd_tst IS
END mcp2515_vhd_tst;
ARCHITECTURE mcp2515_arch OF mcp2515_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk50 : STD_LOGIC;
SIGNAL cs : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
SIGNAL sck : STD_LOGIC;
SIGNAL si : STD_LOGIC;
SIGNAL tx_empty : STD_LOGIC;
COMPONENT mcp2515
	PORT (
	clk50 : IN STD_LOGIC;
	cs : OUT STD_LOGIC;
	rst_n : IN STD_LOGIC;
	sck : OUT STD_LOGIC;
	si : OUT STD_LOGIC;
	tx_empty : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mcp2515
	PORT MAP (
-- list connections between master ports and signals
	clk50 => clk50,
	cs => cs,
	rst_n => rst_n,
	sck => sck,
	si => si,
	tx_empty => tx_empty
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END mcp2515_arch;
