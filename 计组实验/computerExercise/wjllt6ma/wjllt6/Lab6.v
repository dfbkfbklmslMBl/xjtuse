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
// CREATED		"Mon Dec 09 16:32:28 2024"

module Lab6(
	RST0,
	SWA,
	SWB,
	P11_2,
	P12_3,
	STEP,
	CLK,
	IN,
	SW_B,
	RAM_B,
	LED_B,
	P10_1,
	P37_10,
	P36_9,
	BUS
);


input wire	RST0;
input wire	SWA;
input wire	SWB;
input wire	P11_2;
input wire	P12_3;
input wire	STEP;
input wire	CLK;
input wire	[7:0] IN;
output wire	SW_B;
output wire	RAM_B;
output wire	LED_B;
output wire	P10_1;
output wire	P37_10;
output wire	P36_9;
output wire	[7:0] BUS;

wire	299_B;
wire	[7:0] ADDR;
wire	[7:0] ALU;
wire	ALU_B;
wire	AR;
wire	[7:0] BUS_ALTERA_SYNTHESIZED;
wire	[7:0] DR1;
wire	[7:0] DR2;
wire	FC;
wire	FZ;
wire	[7:0] gdfx_temp0;
wire	gdfx_temp1;
wire	[7:0] I;
wire	KRD;
wire	KWE;
wire	LDAR;
wire	LDDR1;
wire	LDDR2;
wire	LDIR;
wire	LDPC;
wire	LDR1;
wire	[7:0] LED;
wire	LED_B_ALTERA_SYNTHESIZED;
wire	LOAD;
wire	[24:1] M;
wire	[4:1] P;
wire	[7:0] PC;
wire	PC_B;
wire	[7:0] R0;
wire	[7:0] R1;
wire	[7:0] R2;
wire	[7:0] RAM;
wire	RAM_B_ALTERA_SYNTHESIZED;
wire	RD_B;
wire	RJ_B;
wire	RP;
wire	RS_B;
wire	[6:1] sE;
wire	SW_B_ALTERA_SYNTHESIZED;
wire	T1;
wire	T2;
wire	T3;
wire	T4;
wire	[7:0] uA;
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
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;

assign	P37_10 = 1;
assign	P36_9 = 0;




LDR0_2	b2v_inst(
	.I0(I[0]),
	.I1(I[1]),
	.LDRI(LDR1),
	.RD_B(RD_B),
	.I2(I[2]),
	.I3(I[3]),
	.RS_B(RS_B),
	.RJ_B(RJ_B),
	.LDR0(SYNTHESIZED_WIRE_0),
	.LDR1(SYNTHESIZED_WIRE_1),
	.LDR2(SYNTHESIZED_WIRE_2),
	.R0_B(SYNTHESIZED_WIRE_3),
	.R1_B(SYNTHESIZED_WIRE_4),
	.R2_B(SYNTHESIZED_WIRE_5));


dsplay	b2v_inst1(
	.P_11(P11_2),
	.P_12(P12_3),
	.P(gdfx_temp1),
	.Q(P10_1));


lpm_bustri1	b2v_inst10(
	.enabledt(ALU_B),
	.data(ALU),
	.tridata(gdfx_temp0)
	);


decoder_A	b2v_inst11(
	.A(M[13]),
	.B(M[14]),
	.C(M[15]),
	.LDR1(LDR1),
	.LDDR1(LDDR1),
	.LDDR2(LDDR2),
	.LDIR(LDIR),
	.LOAD(LOAD),
	.LDAR(LDAR));


decoder_B	b2v_inst12(
	.A(M[10]),
	.B(M[11]),
	.C(M[12]),
	.RS_B(RS_B),
	.RD_B(RD_B),
	.RJ_B(RJ_B),
	
	.ALU_B(ALU_B),
	.PC_B(PC_B));


decoder_C	b2v_inst13(
	.A(M[7]),
	.B(M[8]),
	.C(M[9]),
	
	.LDPC(LDPC),
	.P({P[4],P[3],P[2],P[1]}));


REG0_2	b2v_inst14(
	.CLK(T2),
	.LD_R0(SYNTHESIZED_WIRE_0),
	.LD_R1(SYNTHESIZED_WIRE_1),
	.LD_R2(SYNTHESIZED_WIRE_2),
	.d(gdfx_temp0),
	.R0(R0),
	.R1(R1),
	.R2(R2));


rom1	b2v_inst15(
	.clock(T1),
	.address(uA[5:0]),
	.q(M));


lpm_bustri1	b2v_inst16(
	.enabledt(SYNTHESIZED_WIRE_3),
	.data(R0),
	.tridata(gdfx_temp0)
	);


lpm_bustri1	b2v_inst17(
	.enabledt(SYNTHESIZED_WIRE_4),
	.data(R1),
	.tridata(gdfx_temp0)
	);


lpm_bustri1	b2v_inst18(
	.enabledt(SYNTHESIZED_WIRE_5),
	.data(R2),
	.tridata(gdfx_temp0)
	);


latch8_norst	b2v_inst19(
	.gate(SYNTHESIZED_WIRE_6),
	.data(gdfx_temp0),
	.q(DR2));


lpm_bustri1	b2v_inst2(
	.enabledt(PC_B),
	.data(PC),
	.tridata(gdfx_temp0)
	);


latch8r	b2v_inst20(
	.gate(SYNTHESIZED_WIRE_7),
	.rst(RST0),
	.data(gdfx_temp0),
	.q(ADDR));


lpm_bustri1	b2v_inst21(
	.enabledt(SW_B_ALTERA_SYNTHESIZED),
	.data(IN),
	.tridata(gdfx_temp0)
	);

assign	SYNTHESIZED_WIRE_11 = T2 & LDDR1;

assign	SYNTHESIZED_WIRE_6 = T2 & LDDR2;


latch8r	b2v_inst24(
	.gate(SYNTHESIZED_WIRE_8),
	.rst(RST0),
	.data(gdfx_temp0),
	.q(I));


lpm_bustri1	b2v_inst25(
	.enabledt(RAM_B_ALTERA_SYNTHESIZED),
	.data(RAM),
	.tridata(gdfx_temp0)
	);

assign	SYNTHESIZED_WIRE_7 = LDAR & T2;

assign	SYNTHESIZED_WIRE_10 = T4 & LDPC;


latch8r	b2v_inst28(
	.gate(SYNTHESIZED_WIRE_9),
	.rst(RST0),
	.data(gdfx_temp0),
	.q(LED));


ALU181	b2v_inst29(
	.M(M[20]),
	.CN(M[19]),
	.A(DR1),
	.B(DR2),
	.S(M[24:21]),
	.CO(FC),
	.FZ(FZ),
	.F(ALU));


decoder2_4	b2v_inst3(
	.A(M[16]),
	.B(M[17]),
	.Y0(SW_B_ALTERA_SYNTHESIZED),
	.Y1(RAM_B_ALTERA_SYNTHESIZED),
	.Y2(LED_B_ALTERA_SYNTHESIZED)
	);


assign	SYNTHESIZED_WIRE_8 = LDIR & T2;

assign	SYNTHESIZED_WIRE_9 = LED_B_ALTERA_SYNTHESIZED & T2;




ram1	b2v_inst35(
	.wren(M[18]),
	.clock(T1),
	.address(ADDR),
	.data(gdfx_temp0),
	.q(RAM));


step	b2v_inst36(
	.CLK(CLK),
	.STEP(STEP),
	.T1(T1),
	.T2(T2),
	.T3(T3),
	.T4(T4));


counter	b2v_inst37(
	.LOAD(LOAD),
	.CLK(SYNTHESIZED_WIRE_10),
	.RST(RST0),
	.d(gdfx_temp0),
	.q(PC));


decoder2_4	b2v_inst4(
	.A(SWA),
	.B(SWB)
	
	
	
	);


latch8_norst	b2v_inst5(
	.gate(SYNTHESIZED_WIRE_11),
	.data(gdfx_temp0),
	.q(DR1));


uA_reg	b2v_inst6(
	.clk(T3),
	.CLR(RST0),
	.d(M[6:1]),
	.S(sE),
	.q(uA[5:0]));


uI_C	b2v_inst7(
	.FC(FC),
	.FZ(FZ),
	.T4(SYNTHESIZED_WIRE_12),
	.SWA(SWA),
	.SWB(SWB),
	.I(I[7:2]),
	.P(P),
	.SE(sE));

assign	SYNTHESIZED_WIRE_12 = T3 | T2;

assign	BUS_ALTERA_SYNTHESIZED = gdfx_temp0;
assign	SW_B = SW_B_ALTERA_SYNTHESIZED;
assign	RAM_B = RAM_B_ALTERA_SYNTHESIZED;
assign	LED_B = LED_B_ALTERA_SYNTHESIZED;
assign	BUS = BUS_ALTERA_SYNTHESIZED;
assign	gdfx_temp1[0:0][7:0] = IN;
assign	gdfx_temp1[1:1][7:0] = LED[7:0];
assign	gdfx_temp1[2:2][7:0] = ALU[7:0];
assign	gdfx_temp1[3:3][7:0] = R0[7:0];
assign	gdfx_temp1[4:4][7:0] = R1[7:0];
assign	gdfx_temp1[5:5][7:0] = R2[7:0];
assign	gdfx_temp1[6:6][7:0] = DR1[7:0];
assign	gdfx_temp1[7:7][7:0] = DR2[7:0];
assign	gdfx_temp1[8:8][7:0] = BUS_ALTERA_SYNTHESIZED[7:0];
assign	gdfx_temp1[9:9][7:0] = PC[7:0];
assign	gdfx_temp1[10:10][7:0] = ADDR[7:0];
assign	gdfx_temp1[11:11][7:0] = RAM[7:0];
assign	gdfx_temp1[12:12][7:0] = I[7:0];
assign	gdfx_temp1[13:13][7:0] = uA[7:0];
assign	uA[7:6] = 2'b00;

endmodule
