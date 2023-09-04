//2300 Quiz11
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2022 06:00:28 PM
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module right_shift_once #(parameter Y = 8)(input logic [Y-1] , input logic t, output)


module param_right_shifter
    #(parameter N =3)
    (
        input logic [2**N-1:0] x,
        input logic [N-1:0] amt, //system verilog math function
        output logic [2**N-1:0] z
    );
    //N-1 bits of input, shift log2(N)bits of times, would output a N-1 bits.
    logic [2**N-1:0] s1, s0;
    //
     
    
    
endmodule
    
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2022 06:00:28 PM
// Design Name
// Module Name: counter_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SIM_param_right_shifter(

    );
    
logic [7:0] num;
logic [2:0] shift;
logic [7:0] result;

param_right_shifter #(.N(3)) SUMULATION_RIGHT
    (
    .num(num),
    .shift(shift),
    .result(result)
    );
    
initial begin
num = 8'b1101_0010;
shift = 3'b001;
#10
num = 8'b1101_0010;
shift = 3'b010;
#10
num = 8'b1101_0010;
shift = 3'b011;
#10
num = 8'b1101_0010;
shift = 3'b100;
#10
num = 8'b1101_0010;
shift = 3'b101;

end    
    
endmodule
