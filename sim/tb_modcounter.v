`timescale 1ns / 1ps

module tb_modncounter;
  reg [3:0] load,n;
  reg [1:0] sel;
  reg clk,rst,l_en,c_en;
  wire [3:0] count;
  // DUT
  modncounter DUT(load,sel,clk,rst,l_en,c_en,count);
  // Clock
  initial clk = 1'b0;
  always #5 clk = ~clk;
  // Testbench
  initial begin
    n=10;
    load = 0;
    sel =0;
    rst = 0;
    l_en=0;
    c_en=0;
    #10
    rst=1'b1;
    sel=2'b00;
    #10
    c_en=1'b1;
    #20
    n=4;
    #40
    c_en=1'b0;
    n=10;
    #10
    l_en=1'b1;
    load=4'b1000;
    #10
    l_en=1'b0;
    c_en=1'b1;
    #10
    n=10;
    load = 0;
    sel =0;
    rst = 0;
    l_en=0;
    c_en=0;
    #10
    rst=1'b1;
    sel=2'b01;
    #10
    c_en=1'b1;
    #20
    n=4;
    #40
    c_en=1'b0;
    n=10;
    #10
    l_en=1'b1;
    load=4'b1000;
    #10
    l_en=1'b0;
    c_en=1'b1;
    #10
    n=10;
    load = 0;
    sel =0;
    rst = 0;
    l_en=0;
    c_en=0;
    #10
    rst=1'b1;
    sel=2'b10;
    #10
    c_en=1'b1;
    #20
    n=4;
    #40
    c_en=1'b0;
    n=10;
    #10
    l_en=1'b1;
    load=4'b1000;
    #10
    l_en=1'b0;
    c_en=1'b1;
    #200
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
endmodule
