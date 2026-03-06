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
// CREATED		"Mon Dec 02 16:08:28 2024"

module task7(
	clk,
	CLR,
	d,
	S,
	q
);


input wire	clk;
input wire	CLR;
input wire	[6:1] d;
input wire	[6:1] S;
output wire	[6:1] q;

reg	[6:1] q_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_13 = 1;



assign	SYNTHESIZED_WIRE_12 =  ~CLR;


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[1])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!S[1])
	begin
	q_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[1] <= d[1];
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[2])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!S[2])
	begin
	q_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[2] <= d[2];
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[3])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!S[3])
	begin
	q_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[3] <= d[3];
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[6])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!S[6])
	begin
	q_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[6] <= d[6];
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[5])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!S[5])
	begin
	q_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[5] <= d[5];
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_12 or negedge S[4])
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	q_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!S[4])
	begin
	q_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
if (SYNTHESIZED_WIRE_13)
	begin
	q_ALTERA_SYNTHESIZED[4] <= d[4];
	end
end


assign	q = q_ALTERA_SYNTHESIZED;

endmodule
