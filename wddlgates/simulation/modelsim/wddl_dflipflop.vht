-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/14/2013 15:17:57"
                                                            
-- Vhdl Test Bench template for design  :  wddl_dflipflop
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY wddl_dflipflop_vhd_tst IS
END wddl_dflipflop_vhd_tst;
ARCHITECTURE wddl_dflipflop_arch OF wddl_dflipflop_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d_i : STD_LOGIC;
SIGNAL prechrg_i : STD_LOGIC;
SIGNAL q_o : STD_LOGIC;
SIGNAL qbar_o : STD_LOGIC;
COMPONENT wddl_dflipflop
	PORT (
	clk : IN STD_LOGIC;
	d_i : IN STD_LOGIC;
	prechrg_i : IN STD_LOGIC;
	q_o : OUT STD_LOGIC;
	qbar_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : wddl_dflipflop
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d_i => d_i,
	prechrg_i => prechrg_i,
	q_o => q_o,
	qbar_o => qbar_o
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
END wddl_dflipflop_arch;
