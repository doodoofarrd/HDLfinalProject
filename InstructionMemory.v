`timescale 1ns / 1ps
/*
Instruction Module

A 2-d register array with one read port
*/



module  InstructionMemory(
    input [7:0] inst_address,
    output [31:0] read_data
    );
    integer i ;     
    reg [31:0] ram [255:0];

    // Initialize Instructions in the memory for testing
    initial begin
      for (i = 1; i < 256; i = i + 1) begin
        ram[i] <= $urandom;    
      end
    end    
    
    // Assign statement to read ram based on inst_address
    assign read_data = ram[inst_address] ; 

  
endmodule
