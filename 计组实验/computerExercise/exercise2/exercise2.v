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
// CREATED		"Thu Oct 03 22:26:20 2024"

module exercise2(
	CLK1,
	RST1,
	T1,
	T2,
	T3,
	T4
);


input wire	CLK1;
input wire	RST1;
output wire	T1;
output wire	T2;
output wire	T3;
output wire	T4;

wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_7;
reg	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_9;
reg	DFF_inst5;
reg	SYNTHESIZED_WIRE_10;

assign	T1 = SYNTHESIZED_WIRE_7;
assign	T2 = SYNTHESIZED_WIRE_8;
assign	T3 = SYNTHESIZED_WIRE_9;
assign	T4 = SYNTHESIZED_WIRE_10;




always@(posedge SYNTHESIZED_WIRE_6 or negedge RST1)
begin
if (!RST1)
	begin
	SYNTHESIZED_WIRE_7 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge SYNTHESIZED_WIRE_6 or negedge RST1)
begin
if (!RST1)
	begin
	SYNTHESIZED_WIRE_8 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge SYNTHESIZED_WIRE_6 or negedge RST1)
begin
if (!RST1)
	begin
	SYNTHESIZED_WIRE_9 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_8;
	end
end


always@(posedge SYNTHESIZED_WIRE_6 or negedge RST1)
begin
if (!RST1)
	begin
	SYNTHESIZED_WIRE_10 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_9;
	end
end

assign	SYNTHESIZED_WIRE_6 = CLK1 | DFF_inst5;


always@(posedge SYNTHESIZED_WIRE_6 or negedge RST1)
begin
if (!RST1)
	begin
	DFF_inst5 <= 0;
	end
else
	begin
	DFF_inst5 <= SYNTHESIZED_WIRE_10;
	end
end

assign	SYNTHESIZED_WIRE_1 = ~(SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_10);


endmodule
