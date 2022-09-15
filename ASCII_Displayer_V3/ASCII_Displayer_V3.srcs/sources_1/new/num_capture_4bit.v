`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Group T
// Engineer: Arthur Tavares
// 
// Create Date: 11/24/2021 08:58:31 AM
// Design Name: num_capture_4bit
// Module Name: num_capture_4bit
// Project Name: num_capture_4bit
// Target Devices: -
// Tool Versions: -
// Description: This is the FSM module. it connects to Port B of the 
// ScreenBufferMem, in order to update which characters
// are displayed on the screen and at which position.
// 
// Dependencies: -
// 
// Revision:-
// Revision 0.01 - File Created
// Additional Comments: This file has been rewritten after the
// toggling LED project.
// 
//////////////////////////////////////////////////////////////////////////////////


module num_capture_4bit(

    // MODULE SUMMARY:
    //
    // The design has 5 inputs: iClk (25 MHz), 
    // iRst (connected to push button BTN3), iPush (connected to
    // push button BTN1), iPull (connected to push button BTN2) 
    // and iStop (connected to push button BTN3).
    
    // The module outputs a data stream (oData) that can access all the 
    // ASCII adresses in the memory file. And a memory address (oAddr) 
    // that maps one of the 600 possible cells on the screen.
    // 
    // Thus, for the final assignment we'll have as outputs:
    // oAddr - one of the 600 cells that can hold a character on the screen
    // oData - the number that corresponds to the first line of a character
    //         in the ASCII memory file.
    // oWe   - Write enable to write to ScreenBufferMem
    
    input   wire       iClk, iRst, iPush, iPull, iStop,
    output  wire[9:0]  oAddr,
    output  wire[11:0] oData,
    output  wire       oWe        
    );
    
    // 0. DEFINITION OF FSM STATES:
    //
    localparam sInit      = 4'b0000; // s0
    localparam sIdle      = 4'b0001; // s1
    localparam sPush      = 4'b0010; // s2
    localparam sChange    = 4'b0011; // s3
    localparam sUnChange  = 4'b0100; // s4
    localparam sAddr      = 4'b0101; // s5
    localparam sRstNum    = 4'b0110; // s6
    localparam sSet       = 4'b0111; // s7
    localparam sPull      = 4'b1000; // s8
    localparam sData      = 4'b1001; // s9
    
    // 1. FSM STATE REGISTERS:
    // with synchronous reset
    //
    reg[3:0] rFSM_current, wFSM_next;
    
    always @(posedge iClk)
    begin
        if (iRst == 1)
            rFSM_current <= sInit;
        else
            rFSM_current <= wFSM_next;
    end
    
    // 2. NEXT STATE LOGIC:
    //  defines the value of wFSM_next
    //  in function of inputs and rFSM_current
    //
    always @(*)
    begin
        case (rFSM_current)
    
            sInit:    wFSM_next <= sIdle;
      
            // Wait for action state
            sIdle:      if (iPush == 1)
                            wFSM_next <= sPush;
                      
                        else if (iPull == 1)
                            wFSM_next <= sPull;  
                      
                        else if (iStop == 1)
                            wFSM_next <= sSet;
               
                        else
                            wFSM_next <= sIdle;
            
            // Intermediate state for incrementing rAddr after sIdle
            sSet:       if (iStop == 0)
                            wFSM_next <= sAddr;
                        
                        else
                            wFSM_next <= sSet;
                          
            // Intermediate state for incrementing rNumber sIdle  
            sPush:      if (iPush == 0)
                            wFSM_next <= sChange;
                        
                        else
                            wFSM_next <= sPush;
            
            // Intermediate state for decrementing rNumber sIdle
            sPull:      if (iPull == 0)
                            wFSM_next <= sUnChange;
                        
                        else
                            wFSM_next <= sPull; 
            
            // rNumber +1 Change state after sPush    
            sChange:    wFSM_next <= sData;
            
            // rNumber -1 Change state after sPull
            sUnChange:  wFSM_next <= sData;
            
            // Data output state after (Un)Change state
            sData:      wFSM_next <= sIdle;
            
            // Address +1 Change state after sSet          
            sAddr:      wFSM_next <= sRstNum;
            
            // Sets rNumber back to 0 after sAddr
            sRstNum:    wFSM_next <= sIdle;
                             
            default:    wFSM_next <= sInit;
        endcase
  end
  
  // 3. OUTPUT LOGIC:
  //
  // CHARACTER COUNTER REGISTERS
  //
  // This register pair keeps track of the number of inputs on the iPush 
  // or iPull buttons. In contrast to the LED 
  // toggling example, this register is now 7-bits long such that it
  // can be used to calculate any of the 94 characters in the ASCII memory file.
  // 
  reg signed [6:0] rNumberCurr, rNumberNext;
  
  // ADDRESS COUNTER & WRITE ENABLE REGISTERs
  //
  reg[9:0] rAddr;
  reg rWe;
  
  // START OF SYNCHRONOUS OPPERATIONS 
  //
  always @(posedge iClk)
  begin
    // It would probably make more sense if it 
    // was rNumberNext <= rNumberCurr but I won't change it
    rNumberCurr <= rNumberNext;
  end
  
  always @(posedge iClk)
  begin
  
    // Reset the all registers @ sInit
    if (rFSM_current == sInit)
    begin
        rNumberNext <= 0;
        rAddr <= 0;
        rWe   <= 0;
    end
    
    // Increment rNumberNext @ sChange
    else if (rFSM_current == sChange)
        // Make sure the counter doesn't overflow
        // if so set it to 0
        if(rNumberNext == 62)
            rNumberNext <= -31;
        else
            rNumberNext <= rNumberNext + 1;
            
    // Decrement rNumberNext @ sUnchange
    // if so set it to 0
    else if (rFSM_current == sUnChange)
        if(rNumberNext == -31)
            rNumberNext <= 62;
        else
            rNumberNext <= rNumberNext - 1;
    
    // Incrment rAddr on charcter selection @ sAddr
    else if (rFSM_current == sAddr)
        rAddr <= rAddr + 1;
    
    // Make sure to reset rNumberCurr at new Addr position
    // after sAdrr   
    else if (rFSM_current == sRstNum)
        rNumberNext <= 0;
    
    // Register value for Output assignment
    else
        rNumberCurr <= rNumberNext;
  end
  //
  // END OF SYNCHRONOUS OPPERATIONS 
  
  // START OF ASYNCHRONOUS OPPERATIONS
  //
  // Init table position at '@' symbol to avoid
  // having to press too many times.
  localparam tablepos = 1024;
 
  // Convert the number from 0 - 94 to address line number in memory file
  assign oData =  (rFSM_current == sData)? tablepos + 32 * rNumberNext : 0;
  assign oAddr =  (rFSM_current == sData)? rAddr : 0;
  // Equivalent to sychronous assignment:
  // if (rFSM_current == sData) : rWe   <= 1;
  assign oWe   =  (rFSM_current == sData)? 1 : 0;
  //
  // END OF ASYNCHRONOUS OPPERATIONS
  
endmodule
