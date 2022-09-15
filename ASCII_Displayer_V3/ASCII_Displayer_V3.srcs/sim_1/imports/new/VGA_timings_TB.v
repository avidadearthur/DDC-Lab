`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  GroupT
// Engineer: Arthur Tavares
// 
// Create Date: 11/02/2021 12:13:42 PM
// Design Name: VGA timings Test Bench 
// Module Name: VGA_timings_TB
// Project Name: VGA timings Testbench
// Target Devices: -
// Tool Versions: -
// Description: Simulation file that validates the correctnes of VGA_timings.v design.
// 
// Dependencies: - 
// 
// Revision: -
// Revision 0.01 - File Created
// Additional Comments: -
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_timings_TB;
    
    // SIGNAL DECLARATION
    reg         r_iClk, r_iRst;
    wire [9:0]  w_oCountH, w_oCountV;
    wire        w_oHS, w_oVS;
    
    // 12 bits RGB signal (4 bits each
    wire [3:0]   oRed, oGreen, oBlue;
    
    // LOCAL PARAMETERS DECLARATION
    //
    // Parameters Glossary:
    //
    // H_ = Horizontal
    // V_ = Vertical
    // 
    // _FP = Front Porch
    // _PW = Pulse Width
    // _BP = Back Protch
    //
    // For this simulation one can use generics to scale-down all VGA parameters in
    // the testbench. For instance, a 20x15 area can be used instead of 800x525 in order
    // to make the simulation more efficient. Otherwise you need to smulate 420k clock
    // cycles to observe a full frame (remember: 800x525 = 420k pixels)
    //
    // For 20p Horizontal lenght:
    localparam WIDTH_inst = 15;
    localparam H_FP_inst = 2;
    localparam H_PW_inst = 1;
    localparam H_BP_inst = 2;
    // For 15p Horizontal lenght:
    localparam HEIGHT_inst = 10;
    localparam V_FP_inst = 2;
    localparam V_PW_inst = 1;
    localparam V_BP_inst = 2;
    
    // INSTANTIATION OF TIMINGS MODULE UNDER TEST

    VGA_timings
    #(
        .WIDTH( WIDTH_inst ), .H_FP( H_FP_inst ), .H_PW( H_PW_inst ), .H_BP( H_BP_inst ),
        .HEIGHT( HEIGHT_inst ), .V_FP( V_FP_inst ), .V_PW( V_PW_inst ), .V_BP( V_BP_inst )
    ) 
    VGA_timings_inst
    (
        .iClk(r_iClk), .iRst(r_iRst),
        .oCountH(w_oCountH), .oHS(w_oHS),
        .oCountV(w_oCountV), .oVS(w_oVS)
    );
    
    // INSTANTIATION OF PATTERNS MODULE UNDER TEST

   
    
    localparam T = 20;
    // generation of clock signal using an always block without any sensitivity
    // 50% duty cycle: Clock is high for half a clock period 
    // clock is low for the other half
    always
    begin
        r_iClk = 1;
        #(T/2);
        r_iClk = 0;
        #(T/2);
    end
    
    // stimulus generator
    initial
    begin
        // the convention is to start always by resetting the
        // circuit to its initial state
        r_iRst = 1; // assert reset 
        #50;        // wait
        r_iRst = 0; // de-assert reset
        
        // Let the counter run for 100 clock cycles
        #(3000*T);
        
        $stop; // stop simulation
    end
    
endmodule
