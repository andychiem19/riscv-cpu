module regfile (
    input logic clk,
    input logic rst_n,

    // Reads
    input logic [4:0] address1,
    input logic [4:0] address2,
    output logic [31:0] read_data1,
    output logic [31:0] read_data2,

    // Writes
    input logic write_enable,
    input logic [31:0] write_data,
    input logic [4:0] address3
);

reg [31:0] registers [0:31];

//Write logic
always @(posedge clk) begin
    // reset logic
    if (rst_n == 1'b0) begin
        for (int i=0; i < 32; i++) begin
            registers[i] <= 32'b0;
        end
    end

    //0 is reserved for a zero constant according to RISC-V specs
    else if (write_enable == 1 && address3 != 0) begin
        registers[address3] <= write_data;
    end
end

//Read logic
always_comb begin : readLogic
    read_data1 = registers[address1];
    read_data2 = registers[address2];
end

endmodule