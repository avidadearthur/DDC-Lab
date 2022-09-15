`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  GroupT
// Engineer: Arthur Tavares
// 
// Create Date: 11/05/2021 07:38:57 PM
// Design Name: VGA Pattern
// Module Name: VGA_pattern
// Project Name: VGA Pattern
// Target Devices: -
// Tool Versions: -
// Description: VGA Patterns is a combinatorial circuit that generates RGB
// signals for the VGA display. Based on the current position of the pixel
// (row + column) provided by the VGA timings module, it will decide which color
// pattern needs to be generated. For the active area region, this can be any
// 12-bit color. For the inactive area region (or blanking regions) this is
// required to be all zeroes
//
// Dependencies: -
// 
// Revision: -
// Revision 0.01 - File Created
// Additional Comments: -
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_pattern #(
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
        input wire          iClk, iRst,
        
    //  Connection ScreenBufferMem output oDataA and VGA_pattern
        input wire  [11:0]  iDataA,
        
    //  Connection that receives the pixel bit lines from AsciiCharsMem memory
        input wire  [15:0]  iDataA2,
        
    // Incoming counter signals that keep track of the current position in the display. 
    // (the row and column for the current pixel)
        input  wire [9:0]   iCountH, iCountV,
        
    // iHS = Input Horizontal Sync
    // oVS = Intput Vertical Sync
        input wire         iHS, iVS,
    
    //  iColor = Input signal to change the color of the characters    
        input wire         iColor,
        
    // oHS = Output Horizontal Sync
    // oVS = Output Vertical Sync
        output wire         oHS, oVS,
        
    // 12 bits RGB signal (4 bits each)
        output wire [3:0]   oRed, oGreen, oBlue,
         
    // Previous connection to "hello_world.mem"
    // In the final project it connects to ScreenBufferMem
        output wire [9:0]   oAddrA,
        
    // Connection tho ASCII characters memory
        output wire [11:0]   oAddrA2
    );
    // Assign input sync to output sync
    assign oHS = iHS;
    assign oVS = iVS;

    // The Horizontal Counter (iCountH) and the Vertical Counter (iCountV) have been 
    // programed to go respectively up to 640 and 480 cycles, which are the drawing area
    // limits of our monitor.
    //
    // Here, the original counter values are being modified to help us internally remap 
    // the original resolution of the monitor (640x480) to simulate a grid of 40x15 cells. 
    // Each cell will be 16x32 pixels and will be able to hold a character. 
    // (Note that 640 = 40 cells x 16 pixels and 480 = 15 cells x 32 pixels).
    //
    // Note that the divisions by integers here work discarting the floating points,
    // so BlockH will be 0 until iCountH has counted 16 pixels, then it will be 1 until
    // iCount has counted 32 pixels. BlockV, in turn, will be 0 until iCountV has counted
    // 32 lines and so on...
    wire [5:0] BlockH = iCountH / 16; // 0 --> 39 unit grids
    wire [5:0] BlockV = iCountV / 32; // 0 --> 14 unit grids
    
    // oAddrA is the connection to ScreenBufferMem through iAddrA and it will ask
    // this simplified Dual-Port RAM to output the bit-value content stored at the line
    // with decimal number corresponding to oAddrA (0 --> 599).
    assign oAddrA = BlockV * 40 + BlockH;
    // This bit-value output will leave ScreenBufferMem through oDataA and be fed back
    // to VGA_pattern at iDataA. But what does iDataA contain?
    // It contains the start of the base address of a character at AsciiCharsMem memory.
    //
    // What is happening here is that we are picking this address iDataA and giving to oAdrrA2
    // which is connected to the AsciiCharsMem memory.
    // And we will keep doing so with the next 31 pixel bit lines of data. That is done using
    // the same Horizontal Counter (iCountH) and the Vertical Counter (iCountV).
    // check drawable limits
    wire LIM = (iCountH <= WIDTH && iCountV <= HEIGHT) ? 1 : 0;
    
    // We use iCountV % 32 here because the modulo operation here offers us a 0 to 31
    // that keeps looping and always happens to be zero when a new pixel row on the screen is 
    // displayed.
    assign oAddrA2 = (LIM)? iDataA + (iCountV % 32) : 0;
        
    // When oAddrA2 sends the start of the base address of a character to iAddr at AsciiCharsMem memory
    // That module will return back the bit-value content of that line. Every bit corresponds to a pixel
    // and if it if 1 it should be collored and if it is 0 it should be left blank.
    // (pixel bit lines)
    //
    // The logic we use here is similar to the pixel bit line loop counter (0-->31) but since we are
    // coloring the pixels from left to right and the characters are 16 pixels wide we use the indexing
    // [15 - (iCountH % 16)]

    assign oRed   = (LIM) ? 0: 0;
    assign oGreen = (LIM && ~iColor) ? 15 * (iDataA2[ 15 - (iCountH % 16) ]) : 0;
    assign oBlue  = (LIM && iColor) ? 15 * (iDataA2[ 15 - (iCountH % 16) ]) : 0;

endmodule
