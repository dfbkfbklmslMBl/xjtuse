// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Mon Dec 02 15:18:46 2024"

module task8(
	I0,
	I1,
	RD_B,
	I2,
	I3,
	RS_B,
	RJ_B,
	LDRI,
	LDR0,
	LDR1,
	LDR2,
	R0_B,
	R1_B,
	R2_B
);


input wire	I0;
input wire	I1;
input wire	RD_B;
input wire	I2;
input wire	I3;
input wire	RS_B;
input wire	RJ_B;
input wire	LDRI;
output wire	LDR0;
output wire	LDR1;
output wire	LDR2;
output wire	R0_B;
output wire	R1_B;
output wire	R2_B;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;





\74139M 	b2v_inst(
	.B(I1),
	.A(I0),
	.G(LDRI),
	
	.Y2N(SYNTHESIZED_WIRE_10),
	.Y0N(SYNTHESIZED_WIRE_8),
	.Y1N(SYNTHESIZED_WIRE_9));


\74139M 	b2v_inst1(
	.B(I1),
	.A(I0),
	.G(RD_B),
	
	.Y2N(SYNTHESIZED_WIRE_7),
	.Y0N(SYNTHESIZED_WIRE_3),
	.Y1N(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_1 =  ~RJ_B;

assign	R2_B = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


\74139M 	b2v_inst2(
	.B(I3),
	.A(I2),
	.G(RS_B),
	
	.Y2N(SYNTHESIZED_WIRE_6),
	.Y0N(SYNTHESIZED_WIRE_2),
	.Y1N(SYNTHESIZED_WIRE_4));

assign	R0_B = ~(SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3);

assign	R1_B = ~(SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5);

assign	SYNTHESIZED_WIRE_0 = ~(SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7);

assign	LDR0 =  ~SYNTHESIZED_WIRE_8;

assign	LDR1 =  ~SYNTHESIZED_WIRE_9;

assign	LDR2 =  ~SYNTHESIZED_WIRE_10;


endmodule
