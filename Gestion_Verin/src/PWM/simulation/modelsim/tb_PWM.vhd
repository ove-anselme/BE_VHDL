-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/09/2022 09:41:43"
                                                            
-- Vhdl Test Bench template for design  :  PWM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PWM_vhd_tst IS
END PWM_vhd_tst;
ARCHITECTURE PWM_arch OF PWM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pwm : STD_LOGIC;
SIGNAL pwm_duty : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00011001";
SIGNAL pwm_period : STD_LOGIC_VECTOR(7 DOWNTO 0) :="00110010";

COMPONENT PWM is
	PORT (
	clk : IN STD_LOGIC;
	pwm : BUFFER STD_LOGIC;
	pwm_duty : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwm_period : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PWM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pwm => pwm,
	pwm_duty => pwm_duty,
	pwm_period => pwm_period
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init; 
clock : PROCESS
BEGIN
	clk<= '0';
	wait for 5ns;
	clk<= '1';
	wait for 5ns;
END PROCESS clock;
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END PWM_arch;
