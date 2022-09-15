`timescale 1ns / 1ps

module LED_toggling_FSM_TB;

  reg   rClk, rRst, rPush;
  wire  wLED;
  
  LED_toggling_FSM    LED_toggling_FSM_INST
  ( .iClk(rClk), .iRst(rRst), .iPush(rPush), .oLED(wLED));
  
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
    rPush = 0;      // assert push
    #(2*T);         // wait
    rRst = 0;       // de-assert reset
    #(5*T);         // wait
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    #(5*T);         // wait
    rPush = 1;      // assert push
    #(5*T);         // wait
    rPush = 0;      // de-assert push
    #(5*T);         // wait
    
    // let the counter run for at least 1 frame
    #(100*T);
    
    $stop;        //stop simulation       
  end

endmodule
