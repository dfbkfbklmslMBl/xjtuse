module fifo_controller (
    input wire clk,
    input wire rst,
    input wire [7:0] data_in,
    input wire wr_en,
    input wire rd_en,
    output reg [7:0] data_out,
    output wire full,
    output wire empty,
    output reg [6:0] data_count
);

parameter DEPTH = 128;

// Pointers and counters
reg [6:0] wr_ptr = 0;
reg [6:0] rd_ptr = 0;

// Memory array
wire [7:0] ram_q;
reg [6:0] ram_addr_a;
reg ram_wren_a;
reg [7:0] ram_data_in;

// RAM instance
altsyncram #(
    .operation_mode("SINGLE_PORT"),
    .width_a(8),
    .numwords_a(DEPTH),
    .lpm_type("altsyncram"),
    .widthad_a(7),
    .outdata_reg_a("CLOCK0"),
    .read_during_write_mode_port_a("NEW_DATA_NO_NBE_READ")
) ram_instance (
    .address_a(ram_addr_a),
    .clock0(clk),
    .data_a(ram_data_in),
    .wren_a(ram_wren_a),
    .q_a(ram_q)
);

always @(posedge clk) begin
    if (rst) begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        data_count <= 0;
        ram_wren_a <= 0;
    end else begin
        // Write operation
        if (wr_en && !full) begin
            ram_addr_a <= wr_ptr;
            ram_data_in <= data_in;
            ram_wren_a <= 1;
            wr_ptr <= wr_ptr + 1;
            data_count <= data_count + 1;
        end else begin
            ram_wren_a <= 0;
        end

        // Read operation
        if (rd_en && !empty) begin
            ram_addr_a <= rd_ptr;
            data_out <= ram_q;
            rd_ptr <= rd_ptr + 1;
            data_count <= data_count - 1;
        end
    end
end

// Status signals
assign full = (data_count == DEPTH);
assign empty = (data_count == 0);

endmodule