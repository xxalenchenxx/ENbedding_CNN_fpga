`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 21:52:19
// Design Name: 
// Module Name: NN_tb
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


module NN_tb();

reg sys_clk;
reg rst_n;
reg start_ConV1;
reg [15:0]ram_addr_rtb;
reg ram_en_rtb;
wire signed [7:0]ram_data_rtb;
wire end_ConV1;

real CLK_PER = 23.9;//100MHz

NN_bd_wrapper UUT
   (.end_ConV1(end_ConV1),
    .ram_addr_rtb(ram_addr_rtb),
    .ram_data_rtb(ram_data_rtb),
    .ram_en_rtb(ram_en_rtb),
    .rst_n(rst_n),
    .start_ConV1(start_ConV1),
    .sys_clk(sys_clk));
    
initial
begin
  start_ConV1=0;
  #50;
  start_ConV1=1;
  #50;
  start_ConV1=0;
  
end

parameter Data_Num=2; //22*22*12
parameter test_num=2;
reg [15:0]base_addr = 16'd0;

integer golden, golden_data, m ,k;
reg signed [7:0] golden_list[0:(Data_Num-1)];
initial begin
    golden = $fopen("./golden_data/FC3_gold.dat","r");
    for(m=0;m<Data_Num;m=m+1) begin
        golden_data = $fscanf(golden,"%d", golden_list[m]);
    end
end

initial begin
  sys_clk = 0;
  forever begin
    #(CLK_PER/2) sys_clk = (~sys_clk);
  end
end
integer end_optime,error_coef;
initial begin
  error_coef=0;  
  wait(end_ConV1);
  end_optime=$time;
  $display(" Check Coefficient ...");
  repeat(10)  @(posedge sys_clk);
  for(k=0; k < test_num; k=k+1) begin
      if(k % 484 == 0)
            $display("new filter");
    config_read_check(k + base_addr, golden_list[k]);
    
  end
  $display("Complete CNN operation time : %d  ns; ",end_optime);
  $display("total number of errors  : %d ; ",error_coef);
end

task config_read_check;
  input [15:0]        addr;
  input signed [31:0] exp_data;
  begin
      ram_en_rtb <= 0;
      @(posedge sys_clk);
      ram_en_rtb <= 1; ram_addr_rtb <= addr;
      repeat(3)@(posedge sys_clk);
      //while (!rvalid) @(posedge axis_clk);
      if( (ram_data_rtb) !== (exp_data)) begin
          $display("%d, ERROR: exp = %d, rdata = %d", addr , exp_data, ram_data_rtb);
          //$display("%d", ram_data_rtb);
          error_coef <= error_coef+1;
      end 
      else begin
          $display("%d, OK: exp = %d, rdata = %d", addr, exp_data, ram_data_rtb);
          //$display("%d", ram_data_rtb);
      end
  end
endtask

endmodule


