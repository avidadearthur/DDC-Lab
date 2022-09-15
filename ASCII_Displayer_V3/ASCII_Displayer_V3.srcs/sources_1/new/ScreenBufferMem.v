`timescale 1ns / 1ps

module ScreenBufferMem #(
  parameter   WIDTH =  12,
  parameter   DEPTH =  600
  )
  (
  input   wire                        iRst,
  input   wire                        iClk,
  input   wire [$clog2(DEPTH)-1:0]    iAddrA, iAddrB,
  input   wire [WIDTH-1:0]            iDataB,
  input   wire                        iWeB,
  output  wire [WIDTH-1:0]            oDataA,oDataB
  );
  
  // define the memory
  reg [WIDTH-1:0] rMem  [DEPTH-1:0];
  
  // INITIAL CONTENT OF THE MEMORY
  // Select which file will be used when the FPGA starts
  initial
  begin
    $readmemb("instructions.mem", rMem); 
  end
  
  //  LOGIC FOR PORT A
  //  Supports only synchronous reading 
  reg [WIDTH-1:0] rDataA;
  
  always @(posedge iClk)
  begin
    rDataA <= rMem[iAddrA]; 
  end
  
  assign oDataA = rDataA;
  
  // LOGIC FOR PORT B (not being used)
  //  Supports synchronous reading and writing
  reg [WIDTH-1:0] rDataB;
  
  // COUNTER REGISTERS
  // Used in CLEAR SCREEN OPERATION
  // to move over screen addresses
  reg[9:0]  r_CntCurr;
  reg[9:0]  r_CntNext;
  
  always @(posedge iClk)
  begin
    r_CntCurr <= r_CntNext;
  end  
 
  always @(posedge iClk)
  begin
    if(iWeB)
    begin
      rMem[iAddrB] <= iDataB;
      
    end
    // START OF SYNCHRONOUS OPPERATIONS ON iRst == 1
    //
    else if (iRst)
    begin
        // Go from position 0 to 599 replacing all charcters
        // by zeroes: rMem[r_CntCurr] <= 0;.  
        rMem[r_CntCurr] <= 0;
        if (r_CntCurr < 599)
            r_CntNext <= r_CntCurr + 1;
        else
            r_CntNext <= 0; 
    end
    rDataB <= rMem[iAddrB]; 
  end
  
  assign oDataB = rDataB;
  
endmodule