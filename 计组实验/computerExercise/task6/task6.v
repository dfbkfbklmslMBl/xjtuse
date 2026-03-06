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
// CREATED		"Mon Dec 02 15:02:18 2024"

module task6(
	FC,
	FZ,
	T4,
	SWA,
	SWB,
	I,
	P,
	SE
);


input wire	FC;
input wire	FZ;
input wire	T4;
input wire	SWA;
input wire	SWB;
input wire	[7:2] I;
input wire	[4:1] P;
output wire	[6:1] SE;

wire	[6:1] SE_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;




assign	SYNTHESIZED_WIRE_12 = FZ | FC;

assign	SYNTHESIZED_WIRE_16 =  ~P[1];

assign	SYNTHESIZED_WIRE_6 = I[5] & T4 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_7 = I[3] & T4 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_9 = I[4] & T4 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_18 & T4 & SWA;

assign	SYNTHESIZED_WIRE_10 = I[2] & T4 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_18 & T4 & SWB;


assign	SYNTHESIZED_WIRE_17 =  ~P[2];

assign	SYNTHESIZED_WIRE_13 =  ~P[3];

assign	SYNTHESIZED_WIRE_18 =  ~P[4];

assign	SE_ALTERA_SYNTHESIZED[2] = ~(SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8);

assign	SE_ALTERA_SYNTHESIZED[1] = ~(SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11);

assign	SE_ALTERA_SYNTHESIZED[5] = ~(SYNTHESIZED_WIRE_12 & T4 & SYNTHESIZED_WIRE_13);

assign	SE_ALTERA_SYNTHESIZED[4] = ~(I[7] & T4 & SYNTHESIZED_WIRE_16);

assign	SE_ALTERA_SYNTHESIZED[3] = ~(I[6] & T4 & SYNTHESIZED_WIRE_16);

assign	SE = SE_ALTERA_SYNTHESIZED;
assign	SE_ALTERA_SYNTHESIZED[6] = 1;

endmodule
