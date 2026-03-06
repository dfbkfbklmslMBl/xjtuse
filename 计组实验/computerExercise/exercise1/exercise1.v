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
// CREATED		"Thu Oct 03 21:51:04 2024"

module exercise1(
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

reg	DFF_inst3;
reg	DFF_inst;
reg	DFF_inst1;
reg	DFF_inst2;

assign	T1 = DFF_inst;
assign	T2 = DFF_inst1;
assign	T3 = DFF_inst2;
assign	T4 = DFF_inst3;




always@(posedge CLK1 or negedge RST1)
begin
if (!RST1)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= DFF_inst3;
	end
end


always@(posedge CLK1 or negedge RST1)
begin
if (!RST1)
	begin
	DFF_inst1 <= 0;
	end
else
	begin
	DFF_inst1 <= DFF_inst;
	end
end


always@(posedge CLK1 or negedge RST1)
begin
if (!RST1)
	begin
	DFF_inst2 <= 0;
	end
else
	begin
	DFF_inst2 <= DFF_inst1;
	end
end


always@(posedge CLK1 or negedge RST1)
begin
if (!RST1)
	begin
	DFF_inst3 <= 0;
	end
else
	begin
	DFF_inst3 <= DFF_inst2;
	end
end


endmodule
