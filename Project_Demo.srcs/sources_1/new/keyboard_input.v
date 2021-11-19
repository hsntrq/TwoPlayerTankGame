`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:33:36 PM
// Design Name: 
// Module Name: PS2Receiver
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: PS2 Receiver module used to shift in keycodes from a keyboard plugged into the PS2 port
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
    input clk,
    input I,
    output reg O
    );
    parameter COUNT_MAX=255, COUNT_WIDTH=8;
    reg [COUNT_WIDTH-1:0] count;
    reg Iv=0;
    always@(posedge clk)
        if (I == Iv) begin
            if (count == COUNT_MAX)
                O <= I;
            else
                count <= count + 1'b1;
        end else begin
            count <= 'b0;
            Iv <= I;
        end
    
endmodule


module PS2Receiver(
    input clk,
    input kclk,
    input kdata,
    output reg [3:0] keys_1 = 0,
    output reg [3:0] keys_2 = 0,
    output reg fire_2 = 0,
    output reg fire_1 = 0,
    output reg start = 0,
    output reg restart = 0
     );
    reg [7:0]datacur=0;
    reg oflag;
    wire kclkf, kdataf;
    reg [15:0] LED=0;
    reg [7:0]dataprev=0;
    reg [3:0]cnt=0;
    reg flag=0;
    
debouncer #(
    .COUNT_MAX(19),
    .COUNT_WIDTH(5)
) db_clk(
    .clk(clk),
    .I(kclk),
    .O(kclkf)
);
debouncer #(
   .COUNT_MAX(19),
   .COUNT_WIDTH(5)
) db_data(
    .clk(clk),
    .I(kdata),
    .O(kdataf)
);
    
always@(negedge(kclkf))begin
    case(cnt)
    0:;//Start bit
    1:datacur[0]<=kdataf;
    2:datacur[1]<=kdataf;
    3:datacur[2]<=kdataf;
    4:datacur[3]<=kdataf;
    5:datacur[4]<=kdataf;
    6:datacur[5]<=kdataf;
    7:datacur[6]<=kdataf;
    8:datacur[7]<=kdataf;
    9:flag<=1'b1;
    10:flag<=1'b0;
    
    endcase
        if(cnt<=9) cnt<=cnt+1;
        else if(cnt==10) cnt<=0;
end

reg pflag;
always@(posedge clk) begin    
    if (flag == 1'b1 && pflag == 1'b0) begin
        LED <= {dataprev, datacur};
        oflag <= 1'b1;
        dataprev <= datacur;
    end else
        oflag <= 'b0;
    pflag <= flag;
    if(LED[15:8]==8'hf0) begin
        if ((LED[7:0] == 8'h75 && keys_1 == 1)|| (LED[7:0] == 8'h72 && keys_1 == 2) || (LED[7:0] == 8'h6B && keys_1 == 4) || (LED[7:0] == 8'h74 && keys_1 == 8))
            keys_1 <= 4'b0000;
        if ((LED[7:0] == 8'h1D && keys_2 == 1)|| (LED[7:0] == 8'h1B && keys_2 == 2) || (LED[7:0] == 8'h1C && keys_2 == 4) || (LED[7:0] == 8'h23 && keys_2 == 8))
            keys_2 <= 4'b0000;
        if (LED[7:0] == 8'h59)
            fire_1 <= 1'b0;
        if (LED[7:0] == 8'h12)
            fire_2 <= 1'b0;
        if (LED[7:0] == 8'h5A)
            start <= 1'b0;
        if (LED[7:0] == 8'h29)
            restart <= 1'b0;
        end
    else begin
        //Player 1 Controls
        if (LED[7:0] == 8'h75)     
            keys_1 <= 4'b0001;   
        else if (LED[7:0] == 8'h72)     
            keys_1 <= 4'b0010;
        else if (LED[7:0] == 8'h6B)     
            keys_1 <= 4'b0100;  
        else if (LED[7:0] == 8'h74)     
            keys_1 <= 4'b1000;
//        else if (LED[7:0] == 8'h4A)  // '/' key
//            keys_1 <= 4'b1000;
            
        //Player 2 Controls
        if (LED[7:0] == 8'h1D)     
            keys_2 <= 4'b0001;   
        else if (LED[7:0] == 8'h1B)     
            keys_2 <= 4'b0010;
        else if (LED[7:0] == 8'h1C)     
            keys_2 <= 4'b0100;  
        else if (LED[7:0] == 8'h23)     
            keys_2 <= 4'b1000;
//        else if (LED[7:0] == 8'h12) // 'LShift' key
//            keys_2 <= 4'b1001; 
            
         if (LED[7:0] == 8'h59)
            fire_1 <= 1'b1;
         if (LED[7:0] == 8'h12)
            fire_2 <= 1'b1;  
         if (LED[7:0] == 8'h5A)
            start <= 1'b1;
         if (LED[7:0] == 8'h29)
            restart <= 1'b1;  
        end
    end
endmodule