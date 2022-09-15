`timescale 1ns / 1ps

module LED_toggling_FSM (
  input   wire  iClk, iRst, iPush,
  output  wire  oLED
    );
    
  // 0. State definition
  localparam sInit    = 2'b00;
  localparam sIdle    = 2'b01;
  localparam sPush    = 2'b10;
  localparam sToggle  = 2'b11;
  
  reg[1:0] rFSM_current, wFSM_next;
  
  // 1. State register
  //  - with synchronous reset
  always @(posedge iClk)
  begin
    if (iRst == 1)
      rFSM_current <= sInit;
    else
      rFSM_current <= wFSM_next;
  end
  
  // 2. Next state logic
  //  - only defines the value of wFSM_next
  //  - in function of inputs and rFSM_current
  always @(*)
  begin
    case (rFSM_current)
    
      sInit:    wFSM_next <= sIdle;
      
      sIdle:    if (iPush == 0)
                  wFSM_next <= sIdle;
                else
                  wFSM_next <= sPush;
                
      sPush:    if (iPush == 1)
                  wFSM_next <= sPush;
                else
                  wFSM_next <= sToggle;
                
      sToggle:  wFSM_next <= sIdle;
      
      default:  wFSM_next <= sInit;
    endcase
  end
  
  // 3. Output logic
  // In this case, we need a register to keep track of the toggling
  
  // 3.1 Define the register
  reg  rToggle_current, wToggle_next;
  
  always @(posedge iClk)
  begin
    rToggle_current <= wToggle_next;
  end
  
  // 3.2 Define the value of wToggle_next
  //  - in function of rFSM_current
  //    * when sInit, we reset the register
  //    * when sToggle, we toggle the register
  //    * when others, we keep the value in the register
  always @(*)
  begin
    if (rFSM_current == sInit)
      wToggle_next = 0;
    else if (rFSM_current == sToggle)
      wToggle_next = ~rToggle_current;
    else
      wToggle_next = rToggle_current;
  end
  
  // the oLED connects to the toggle register
  assign oLED = rToggle_current;
  
endmodule

