module memory #(
    parameter WORDS = 64
) (
    input logic clk,
    input logic [31:0] address,
    input logic [31:0] write_data,
    input logic write_enable,
    input logic rst_n,

    output logic [31:0] read_data
);

reg [31:0] mem [0:WORDS-1] //32-bit

always @(posedge clk) begin
    //reset logic
    if (rst_n == 1'b0) begin
        for (int i = 0; i < WORDS; i++) begin //increments through words and sets them to zero
            mem[i] <= 32'b0; 
        end
    end
    else if (write_enable) begin
        if (address[1:0] == 2'b00) begin
            mem[address[31:2]] <= write_data;
        end
    end
end

always_comb begin
    read_data = mem[address[31:2]];
end

endmodule
