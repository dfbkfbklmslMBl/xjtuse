module fif0_ (
    input wire clk,
    input wire rstn,
    input wire wr_en,
    input wire rd_en,
    input wire [7:0] data_in,
    output wire [7:0] data_out,
    output wire full,
    output wire empty
);

    reg [7:0] w_ptr, r_ptr;    // Write and read pointers
    reg [8:0] fifo_count;      // Counter to track the number of elements in the FIFO
    reg [7:0] data_out_reg;    // Register to hold the output data
    wire [7:0] ram_data_out;   // Output data from the RAM

    // Instantiate the myram module
    myram myram_inst (
        .address(rd_en && !empty ? r_ptr : w_ptr), // Use read pointer when reading, else write pointer
        .clock(clk),
        .data(data_in),
        .wren(wr_en && !full),
        .q(ram_data_out)
    );

    assign data_out = data_out_reg;
    assign full = (fifo_count == 256);
    assign empty = (fifo_count == 0);

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            w_ptr <= 0;
            r_ptr <= 0;
            fifo_count <= 0;
            data_out_reg <= 0;
        end else begin
            // Write operation
            if (wr_en && !full) begin
                w_ptr <=( w_ptr + 1)%256;
                fifo_count <= fifo_count + 1;
            end

            // Read operation
            if (rd_en && !empty) begin
                data_out_reg <= ram_data_out;
                r_ptr <= (r_ptr + 1)%256;
                fifo_count<=fifo_count-1;
                
            end
        end
    end

endmodule