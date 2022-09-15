`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  GroupT
// Engineer: Arthur Tavares
// 
// Create Date: 10/27/2021 11:35:35 AM
// Design Name: VGA timings
// Module Name: VGA_timings
// Project Name: VGA timings
// Target Devices: Pynq-Z2
// Tool Versions: -
// Description: VGA_timings is a sequential circuit that generates the 
// horizontal/vertical sync output signals (oHS and oVS). 
// It internally contains two counters that keep track of the current position
// in the display: the row and column for the current pixel. 
// The values of these two counters (oCountH and oCountV) 
// are an output of this module.
// 
// Dependencies: -
// 
// Revision: -
// Revision 0.01 - File Created
// Additional Comments: -
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_timings #(
    // Parameters Glossary:
    //
    // H_ = Horizontal
    // V_ = Vertical
    // 
    // _FP = Front Porch
    // _PW = Pulse Width
    // _BP = Back Protch
    //
    // Screen (Horizontal) pixel parameters
    // H total = 640 + 16 + 96 + 48 = 800
        parameter WIDTH = 640,
        parameter H_FP = 16,
        parameter H_PW = 96,
        parameter H_BP = 48,
    
    // Number of lines
    // V total = 480 + 10 + 2 + 33 = 525
        parameter HEIGHT = 480,
        parameter V_FP = 10,
        parameter V_PW = 2,
        parameter V_BP = 33
    )
    (
        input  wire iClk, iRst,
    // oHS = Output Horizontal Sync
    // oVS = Output Vertical Sync
        output wire oHS, oVS,
    // Counters that keep track of the current position
    // in the display: 
    // the row and column for the current pixel.
    //
    // 10 bits are sufficient
    // we can count up to 2^10 - 1 = 1023 
        output wire [9:0] oCountH, oCountV
    );
    
    // Horizontal & Vertical Counter implementation
    // 
    localparam N = 10;
    //
    // HORIZONTAL COUNTER IMPLAMENTATION
    //
    // The oCountH should be incremented from 0 to 656 with oHS set to 1,
    // then from pixel 656 to 752 oHS is set to 0 (SYNCh) and, finnaly from 752
    // up to 800 it is set to 1 again.
    localparam H_LIM = ( WIDTH + H_FP + H_PW + H_BP ) - 1;
    
    // Signal declaration
    reg  [N-1:0] H_r_CntCurr; // the actual counter
    wire [N-1:0] H_w_CntNext;  // the imput to the register 
    wire H_w_Rst;
    wire H_w_Cmp;
     
    // The counter register
    always @( posedge iClk )
        if ( H_w_Rst == 1 )
            H_r_CntCurr <= 0;
        else
            H_r_CntCurr <= H_w_CntNext;
    
    // The internal comparator
    assign H_w_Cmp = ( H_r_CntCurr == H_LIM );
    // The internal reset occur on external reset(iRst) OR
    // on the H_LIM comparison(H_w_Cmp)
    assign H_w_Rst = ( iRst | H_w_Cmp );
    // The increment circuit
    assign H_w_CntNext = H_r_CntCurr + 1;
    // Connect the increment at the output of the 
    // Horizontal counter
    assign oCountH = H_r_CntCurr;
    // GENERATE HORIZONTAL SYNC (oHS)
    // Change Output Horizontal Sync by comparing the counter value 
    // with the pulse width
    assign oHS = ( H_r_CntCurr >= ( WIDTH + H_FP ) && H_r_CntCurr < ( WIDTH + H_FP + H_PW )) ? 0 : 1;       

    // VERTICAL COUNTER IMPLAMENTATION
    //
    // The oCountV should be incremented from 0 to 490 with oVS set to 1,
    // then from pixel 490 to 492 oHS is set to 0 (SYNCh) and, finnaly from 492
    // up to 525 it is set to 1 again.
    // The important difference here is that the increments should only occur 
    // when a line has been completed ( oCountH == H_LIM )
    localparam V_LIM = ( HEIGHT + V_FP + V_PW + V_BP ) - 1;
    
    // Signal declaration
    reg  [N-1:0] V_r_CntCurr; // the actual counter
    wire [N-1:0] V_w_CntNext;  // the imput to the register 
    wire V_w_Rst;
    wire V_w_Cmp;
    
    // The counter register
    always @( posedge iClk )
        if ( V_w_Rst == 1 )
            V_r_CntCurr <= 0;
        else
            V_r_CntCurr <= V_w_CntNext;
            
    // The internal comparator that only flags the limit
    // when both counters have reached their maximum value.
    assign V_w_Cmp = ( V_r_CntCurr == V_LIM && oCountH == H_LIM );
    // The internal reset occur on external reset(iRst) OR
    // on the V_LIM comparison(V_w_Cmp)
    assign V_w_Rst = ( iRst | V_w_Cmp );
    // The increment circuit only increments the line count when the horizontal
    // counter reaches its limit
    assign V_w_CntNext = ( oCountH == H_LIM ) ? V_r_CntCurr + 1 : V_r_CntCurr;
    // Connect the increment at the output of the 
    // VErtical counter
    assign oCountV = V_r_CntCurr;
    // GENERATE VERTICAL SYNC (oVS)
    // Change Output Vertical Sync by comparing the counter value 
    // with the pulse width
    assign oVS = ( V_r_CntCurr >= ( HEIGHT + V_FP ) && V_r_CntCurr < ( HEIGHT + V_FP + V_PW )) ? 0 : 1;
        
endmodule
