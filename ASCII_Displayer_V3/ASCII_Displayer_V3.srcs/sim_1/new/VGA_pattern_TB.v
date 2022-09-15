`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2021 06:42:42 PM
// Design Name: 
// Module Name: VGA_pattern_TB
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


module VGA_pattern_TB;

    reg   rClk, rRst, rColor;
    wire [3:0]   wRed, wGreen, wBlue;
    
    VGA_pattern VGA_pattern_INST
    (.iClk(rClk), .iRst(rRst), .iDataA2(51), .iColor(rColor), .iCountH(16), .iCountV(16),
    .oRed(wRed), .oGreen(wGreen), .oBlue(wBlue)
    );
    
    localparam T = 20;
    
    always 
    begin
        rClk = 1;
        #(T/2);
        rClk = 0;
        #(T/2);
    end
    
    initial
    begin
        rRst = 1;
        rColor = 0;
        #(2*T);
        rRst = 0;
        #(10*T);
        
        rColor = 1;
        #(100*T);
        
        $stop;
    end
endmodule
