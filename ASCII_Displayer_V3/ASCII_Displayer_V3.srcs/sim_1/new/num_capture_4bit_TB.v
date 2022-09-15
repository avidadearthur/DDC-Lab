`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2021 10:32:04 AM
// Design Name: 
// Module Name: num_capture_4bit_TB
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

`timescale 1ns / 1ps

module num_capture_4bit_TB;
  integer i;
  reg   rClk, rRst, rPush, rPull, rStop;
  wire [3:0]  wData;
  
  num_capture_4bit    num_capture_4bit_INST
  ( .iClk(rClk), .iRst(rRst), .iPush(rPush), .iPull(rPull), .iStop(rStop),
  .oData(wData), .oWe(wWe));
  
  // definition of clock period
  localparam  T = 20;  
  
  // generation of clock signal
  always 
  begin
    rClk = 1;
    #(T/2);
    rClk = 0;
    #(T/2);
  end
  
  // stimulus generator
  initial
  begin
    rRst = 1;       // assert reset
    rStop = 0;      // de-assert stop
    rPush = 0;      // de-assert push
    rPull = 0;      // de-assert push
    #(2*T);         // wait
    rRst = 0;       // de-assert reset
    #(5*T);         // wait
    
    // Test for positive overflow
    for (i = 0; i < 200; i = i + 1) begin
        #(5*T);
        rPush = 1;
        #(5*T);
        rPush = 0;
    end
    
    // Test for negative overflow
    for (i = 0; i < 200; i = i + 1) begin
        #(5*T);
        rPull = 1;
        #(5*T);
        rPull = 0;
    end 
    
    // #1st Push
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    
    // #2nd Push
    #(5*T);         // wait
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    
    
    // #Display
    #(5*T);         // wait
    rStop = 1;      // assert Stop
    #(5*T);         // wait
    rStop = 0;      // de-assert Stop
    
    // #1st Push
    #(5*T);         // wait
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    
    // #Display
    #(5*T);         // wait
    rStop = 1;      // assert Stop
    #(5*T);         // wait
    rStop = 0;      // de-assert Stop
    
    // #IStop 2x to display Space
    #(5*T);         // wait
    rStop = 1;      // assert Stop
    #(5*T);         // wait
    rStop = 0;      // de-assert Stop
    // #Display
    #(5*T);         // wait
    rStop = 1;      // assert Stop
    #(5*T);         // wait
    rStop = 0;      // de-assert Stop
    
    // Push 2x Pull 2x and display
    // #1st Push
    #(5*T);
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    
    // #2nd Push
    #(5*T);         // wait
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    
    // #1st Pull
    #(5*T);
    rPull = 1;      // assert push
    #(5*T);         // wait
    rPull = 0;      // de-assert push
    
    // #2nd Pull
    #(5*T);         // wait
    rPull = 1;      // assert push
    #(5*T);         // wait
    rPull = 0;      // de-assert push
    
    // #Display
    #(5*T);         // wait
    rStop = 1;      // assert Stop
    #(5*T);         // wait
    rStop = 0;      // de-assert Stop
    
    // Reset screen
    #(5*T);
    rRst = 1;       // assert reset
    #(2*T);         // wait
    rRst = 0;       // de-assert reset
    #(5*T);         // wait
    

     // let the counter run for at least 1 frame
    #(100*T);
    
    $stop;        //stop simulation       
  end

endmodule
