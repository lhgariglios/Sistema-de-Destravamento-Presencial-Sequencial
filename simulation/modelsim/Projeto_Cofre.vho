-- Copyright (C) 1991-2013 Altera Corporation
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/20/2022 15:43:06"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Projeto_Cofre IS
    PORT (
	Clock : IN std_logic;
	X : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	Pessoa1 : IN std_logic_vector(9 DOWNTO 0);
	Pessoa2 : IN std_logic_vector(9 DOWNTO 0);
	Pessoa3 : IN std_logic_vector(9 DOWNTO 0);
	Abrir : OUT std_logic;
	luz_1 : OUT std_logic;
	luz_2 : OUT std_logic;
	luz_3 : OUT std_logic
	);
END Projeto_Cofre;

-- Design Ports Information
-- Pessoa1[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[2]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[6]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[8]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa1[9]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[2]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[3]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[4]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[6]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[7]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[8]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa2[9]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[1]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[3]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[4]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[7]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[8]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pessoa3[9]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Abrir	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_1	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_2	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_3	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B3	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B2	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Projeto_Cofre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_Pessoa1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Pessoa2 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Pessoa3 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Abrir : std_logic;
SIGNAL ww_luz_1 : std_logic;
SIGNAL ww_luz_2 : std_logic;
SIGNAL ww_luz_3 : std_logic;
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|Selector9~3_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \X~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \X~clkctrl_outclk\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \control|Selector10~0_combout\ : std_logic;
SIGNAL \control|estado_atual.A~regout\ : std_logic;
SIGNAL \control|Selector14~0_combout\ : std_logic;
SIGNAL \control|estado_atual.C~regout\ : std_logic;
SIGNAL \control|estado_atual.C1~regout\ : std_logic;
SIGNAL \control|Selector11~0_combout\ : std_logic;
SIGNAL \control|Selector11~1_combout\ : std_logic;
SIGNAL \control|estado_atual.A2~regout\ : std_logic;
SIGNAL \control|Selector12~0_combout\ : std_logic;
SIGNAL \control|estado_atual.B~regout\ : std_logic;
SIGNAL \control|process_1~0_combout\ : std_logic;
SIGNAL \control|Selector13~0_combout\ : std_logic;
SIGNAL \control|estado_atual.B2~regout\ : std_logic;
SIGNAL \control|Selector9~4_combout\ : std_logic;
SIGNAL \control|Selector9~5_combout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S0~0_combout\ : std_logic;
SIGNAL \control|Selector17~4_combout\ : std_logic;
SIGNAL \control|estado_atual.D~regout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S0~regout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S1~0_combout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S1~regout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S2~regout\ : std_logic;
SIGNAL \cam_dados|inst7|Selector5~0_combout\ : std_logic;
SIGNAL \cam_dados|inst7|estado_atual.S3~regout\ : std_logic;
SIGNAL \control|Selector16~0_combout\ : std_logic;
SIGNAL \control|estado_atual.C2~regout\ : std_logic;
SIGNAL \control|Selector2~0_combout\ : std_logic;
SIGNAL \control|Selector9~0_combout\ : std_logic;
SIGNAL \control|Selector9~1_combout\ : std_logic;
SIGNAL \control|Selector9~2_combout\ : std_logic;
SIGNAL \control|Selector9~6_combout\ : std_logic;
SIGNAL \control|estado_atual.Inicio~regout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_estado_atual.Inicio~regout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_X <= X;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
ww_Pessoa1 <= Pessoa1;
ww_Pessoa2 <= Pessoa2;
ww_Pessoa3 <= Pessoa3;
Abrir <= ww_Abrir;
luz_1 <= ww_luz_1;
luz_2 <= ww_luz_2;
luz_3 <= ww_luz_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\X~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \X~combout\);
\control|ALT_INV_estado_atual.Inicio~regout\ <= NOT \control|estado_atual.Inicio~regout\;

-- Location: LCCOMB_X41_Y1_N22
\control|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~3_combout\ = (\B3~combout\ & (((\control|estado_atual.A2~regout\) # (!\control|estado_atual.Inicio~regout\)))) # (!\B3~combout\ & (!\B1~combout\ & ((\control|estado_atual.A2~regout\) # (!\control|estado_atual.Inicio~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~combout\,
	datab => \B1~combout\,
	datac => \control|estado_atual.Inicio~regout\,
	datad => \control|estado_atual.A2~regout\,
	combout => \control|Selector9~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X,
	combout => \X~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\X~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \X~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \X~clkctrl_outclk\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B3,
	combout => \B3~combout\);

-- Location: LCCOMB_X41_Y1_N28
\control|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector10~0_combout\ = (!\control|estado_atual.Inicio~regout\ & (!\B2~combout\ & (\B1~combout\ & !\B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.Inicio~regout\,
	datab => \B2~combout\,
	datac => \B1~combout\,
	datad => \B3~combout\,
	combout => \control|Selector10~0_combout\);

-- Location: LCFF_X41_Y1_N29
\control|estado_atual.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.A~regout\);

-- Location: LCCOMB_X41_Y1_N16
\control|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector14~0_combout\ = (\control|estado_atual.B2~regout\ & (\B2~combout\ & (\B1~combout\ & \B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.B2~regout\,
	datab => \B2~combout\,
	datac => \B1~combout\,
	datad => \B3~combout\,
	combout => \control|Selector14~0_combout\);

-- Location: LCFF_X41_Y1_N17
\control|estado_atual.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.C~regout\);

-- Location: LCFF_X41_Y1_N9
\control|estado_atual.C1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \control|estado_atual.C~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.C1~regout\);

-- Location: LCCOMB_X42_Y1_N2
\control|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector11~0_combout\ = (!\B2~combout\ & (\B1~combout\ & (!\B3~combout\ & \control|estado_atual.A2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \B1~combout\,
	datac => \B3~combout\,
	datad => \control|estado_atual.A2~regout\,
	combout => \control|Selector11~0_combout\);

-- Location: LCCOMB_X42_Y1_N30
\control|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector11~1_combout\ = (\control|estado_atual.A~regout\) # (\control|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|estado_atual.A~regout\,
	datad => \control|Selector11~0_combout\,
	combout => \control|Selector11~1_combout\);

-- Location: LCFF_X42_Y1_N31
\control|estado_atual.A2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.A2~regout\);

-- Location: LCCOMB_X42_Y1_N0
\control|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector12~0_combout\ = (\B2~combout\ & (\B1~combout\ & (!\B3~combout\ & \control|estado_atual.A2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~combout\,
	datab => \B1~combout\,
	datac => \B3~combout\,
	datad => \control|estado_atual.A2~regout\,
	combout => \control|Selector12~0_combout\);

-- Location: LCFF_X41_Y1_N27
\control|estado_atual.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \control|Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.B~regout\);

-- Location: LCCOMB_X42_Y1_N18
\control|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|process_1~0_combout\ = (\B1~combout\ & \B2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1~combout\,
	datad => \B2~combout\,
	combout => \control|process_1~0_combout\);

-- Location: LCCOMB_X41_Y1_N24
\control|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector13~0_combout\ = (\control|estado_atual.B~regout\) # ((!\B3~combout\ & (\control|estado_atual.B2~regout\ & \control|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~combout\,
	datab => \control|estado_atual.B~regout\,
	datac => \control|estado_atual.B2~regout\,
	datad => \control|process_1~0_combout\,
	combout => \control|Selector13~0_combout\);

-- Location: LCFF_X41_Y1_N25
\control|estado_atual.B2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.B2~regout\);

-- Location: LCCOMB_X41_Y1_N12
\control|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~4_combout\ = (\B2~combout\ & (((!\B1~combout\ & \control|estado_atual.B2~regout\)) # (!\control|estado_atual.Inicio~regout\))) # (!\B2~combout\ & (((\control|estado_atual.B2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \B2~combout\,
	datac => \control|estado_atual.B2~regout\,
	datad => \control|estado_atual.Inicio~regout\,
	combout => \control|Selector9~4_combout\);

-- Location: LCCOMB_X41_Y1_N8
\control|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~5_combout\ = (\control|Selector9~4_combout\) # ((\control|estado_atual.D~regout\ & (!\control|estado_atual.A~regout\ & \control|estado_atual.C1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.D~regout\,
	datab => \control|estado_atual.A~regout\,
	datac => \control|estado_atual.C1~regout\,
	datad => \control|Selector9~4_combout\,
	combout => \control|Selector9~5_combout\);

-- Location: LCCOMB_X41_Y1_N6
\cam_dados|inst7|estado_atual.S0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cam_dados|inst7|estado_atual.S0~0_combout\ = !\cam_dados|inst7|estado_atual.S3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_dados|inst7|estado_atual.S3~regout\,
	combout => \cam_dados|inst7|estado_atual.S0~0_combout\);

-- Location: LCCOMB_X41_Y1_N10
\control|Selector17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector17~4_combout\ = (\B3~combout\ & (\control|process_1~0_combout\ & ((\control|estado_atual.C2~regout\) # (\control|estado_atual.D~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~combout\,
	datab => \control|estado_atual.C2~regout\,
	datac => \control|estado_atual.D~regout\,
	datad => \control|process_1~0_combout\,
	combout => \control|Selector17~4_combout\);

-- Location: LCFF_X41_Y1_N11
\control|estado_atual.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.D~regout\);

-- Location: LCFF_X41_Y1_N7
\cam_dados|inst7|estado_atual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \X~clkctrl_outclk\,
	datain => \cam_dados|inst7|estado_atual.S0~0_combout\,
	aclr => \control|ALT_INV_estado_atual.Inicio~regout\,
	ena => \control|estado_atual.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cam_dados|inst7|estado_atual.S0~regout\);

-- Location: LCCOMB_X41_Y1_N20
\cam_dados|inst7|estado_atual.S1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cam_dados|inst7|estado_atual.S1~0_combout\ = !\cam_dados|inst7|estado_atual.S0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_dados|inst7|estado_atual.S0~regout\,
	combout => \cam_dados|inst7|estado_atual.S1~0_combout\);

-- Location: LCFF_X41_Y1_N21
\cam_dados|inst7|estado_atual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \X~clkctrl_outclk\,
	datain => \cam_dados|inst7|estado_atual.S1~0_combout\,
	aclr => \control|ALT_INV_estado_atual.Inicio~regout\,
	ena => \control|estado_atual.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cam_dados|inst7|estado_atual.S1~regout\);

-- Location: LCFF_X41_Y1_N19
\cam_dados|inst7|estado_atual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \X~clkctrl_outclk\,
	sdata => \cam_dados|inst7|estado_atual.S1~regout\,
	aclr => \control|ALT_INV_estado_atual.Inicio~regout\,
	sload => VCC,
	ena => \control|estado_atual.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cam_dados|inst7|estado_atual.S2~regout\);

-- Location: LCCOMB_X42_Y1_N24
\cam_dados|inst7|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cam_dados|inst7|Selector5~0_combout\ = (\control|estado_atual.D~regout\ & ((\cam_dados|inst7|estado_atual.S2~regout\))) # (!\control|estado_atual.D~regout\ & (\cam_dados|inst7|estado_atual.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.D~regout\,
	datac => \cam_dados|inst7|estado_atual.S3~regout\,
	datad => \cam_dados|inst7|estado_atual.S2~regout\,
	combout => \cam_dados|inst7|Selector5~0_combout\);

-- Location: LCFF_X42_Y1_N25
\cam_dados|inst7|estado_atual.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \X~clkctrl_outclk\,
	datain => \cam_dados|inst7|Selector5~0_combout\,
	aclr => \control|ALT_INV_estado_atual.Inicio~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cam_dados|inst7|estado_atual.S3~regout\);

-- Location: LCCOMB_X41_Y1_N0
\control|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector16~0_combout\ = (\control|estado_atual.C1~regout\ & \cam_dados|inst7|estado_atual.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.C1~regout\,
	datad => \cam_dados|inst7|estado_atual.S3~regout\,
	combout => \control|Selector16~0_combout\);

-- Location: LCFF_X41_Y1_N1
\control|estado_atual.C2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.C2~regout\);

-- Location: LCCOMB_X41_Y1_N18
\control|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector2~0_combout\ = (\control|estado_atual.D~regout\) # (\control|estado_atual.C2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.D~regout\,
	datad => \control|estado_atual.C2~regout\,
	combout => \control|Selector2~0_combout\);

-- Location: LCCOMB_X41_Y1_N4
\control|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~0_combout\ = (\control|Selector2~0_combout\ & (((!\B1~combout\) # (!\B2~combout\)) # (!\B3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~combout\,
	datab => \B2~combout\,
	datac => \B1~combout\,
	datad => \control|Selector2~0_combout\,
	combout => \control|Selector9~0_combout\);

-- Location: LCCOMB_X41_Y1_N14
\control|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~1_combout\ = ((!\control|estado_atual.D~regout\ & ((!\control|estado_atual.C~regout\) # (!\control|estado_atual.B~regout\)))) # (!\control|estado_atual.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.D~regout\,
	datab => \control|estado_atual.B~regout\,
	datac => \control|estado_atual.C~regout\,
	datad => \control|estado_atual.A~regout\,
	combout => \control|Selector9~1_combout\);

-- Location: LCCOMB_X41_Y1_N2
\control|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~2_combout\ = (\control|estado_atual.C1~regout\ & (\control|Selector9~1_combout\ & !\cam_dados|inst7|estado_atual.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.C1~regout\,
	datac => \control|Selector9~1_combout\,
	datad => \cam_dados|inst7|estado_atual.S3~regout\,
	combout => \control|Selector9~2_combout\);

-- Location: LCCOMB_X41_Y1_N30
\control|Selector9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector9~6_combout\ = (!\control|Selector9~3_combout\ & (!\control|Selector9~5_combout\ & (!\control|Selector9~0_combout\ & !\control|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector9~3_combout\,
	datab => \control|Selector9~5_combout\,
	datac => \control|Selector9~0_combout\,
	datad => \control|Selector9~2_combout\,
	combout => \control|Selector9~6_combout\);

-- Location: LCFF_X41_Y1_N31
\control|estado_atual.Inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \control|Selector9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|estado_atual.Inicio~regout\);

-- Location: LCCOMB_X42_Y1_N16
\control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = (!\control|estado_atual.A~regout\ & \control|estado_atual.Inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|estado_atual.A~regout\,
	datad => \control|estado_atual.Inicio~regout\,
	combout => \control|Selector0~0_combout\);

-- Location: LCCOMB_X41_Y1_N26
\control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = (\control|estado_atual.Inicio~regout\ & (!\control|estado_atual.A~regout\ & (!\control|estado_atual.B~regout\ & !\control|estado_atual.A2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.Inicio~regout\,
	datab => \control|estado_atual.A~regout\,
	datac => \control|estado_atual.B~regout\,
	datad => \control|estado_atual.A2~regout\,
	combout => \control|Selector1~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(1));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(2));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(4));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(5));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(6));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(7));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(8));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa1(9));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(0));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(1));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(2));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(3));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(5));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(6));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(7));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(8));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa2(9));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(0));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(2));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(3));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(6));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(7));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(8));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pessoa3[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Pessoa3(9));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Abrir~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Abrir);

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \control|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_1);

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_2);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \control|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_3);
END structure;


