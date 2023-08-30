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
    #(parameter N = 8)
    (
    input logic [N-1:0] x,
    input logic [$clog(N)-1:0] amt, //system verilog math function
    output logic [N-1:0] z
    );
    //N-1 bits of input, shift log2(N)bits of times, would output a N-1 bits.
    logic [N-1:0] s1, s0;
    
    

   
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2022 06:00:28 PM
// Design Name: 
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


module counter_testbench();
reg clock;
reg X;
wire[2:0] zout;
counter dut(
.x(X),
.clk(clock),
.z(zout)
);

initial begin
clock = 0;
forever #80 clock = ~clock;
end

initial begin
X = 1;
#800 X = 0;
#800 X = 1;
end
endmodule
