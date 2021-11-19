// Code your design here
`timescale 1ns/ 1ps

//module FSM_move(
//    input clk,
//    input [2:0] Sp,
//    input [3:0] K,
//    output reg [2:0] Sc
//    );
//    always @(posedge clk) begin
//        if (K == 4'b0) begin
//            Sc[0] <= 1'b0;  
//        end
//        else if (K == 4'b0001) begin
//            if (Sp[2:1] == 2'b00) begin
//                Sc <= 3'b001;
//            end
//            else begin
//                Sc <= 3'b000;
//            end
//        end
//        else if (K == 4'b0010) begin
//            if (Sp[2:1] == 2'b01) begin
//                Sc <= 3'b011;
//            end
//            else begin
//                Sc <= 3'b010;
//            end
//        end
//        else if (K == 4'b0100) begin
//            if (Sp[2:1] == 2'b10) begin
//                Sc <= 3'b101;
//            end
//            else begin
//                Sc <= 3'b100;
//            end
//        end
//        else if (K == 4'b1000) begin
//            if (Sp[2:1] == 2'b11) begin
//                Sc <= 3'b111;
//            end
//            else begin
//                Sc <= 3'b110;
//            end
//        end
//    end
//endmodule

module clk_div (clk, clk_d); 
  parameter div_value = 1; 
  input clk; 
  output clk_d; 
  reg clk_d; 
  reg count; 
  initial 
    begin 
      clk_d = 0; 
      count = 0; 
    end 
  always @(posedge clk) 
    begin 
      if (count == div_value) 
        count <= 0; 
      else 
        count <= count + 1; 
    end 
always @(posedge clk) 
  begin 
    if (count == div_value) 
      clk_d <= ~clk_d; 
  end 
endmodule 

// Code your design here
module h_counter(clk,h_count,trig_v);
  input clk;
  output [9:0] h_count;
  output trig_v;
  reg [9:0] h_count;
  reg trig_v;
  initial 
    begin 
      h_count <= 0;
      trig_v <= 0;
    end
  always @(posedge clk)
    begin
      if (h_count < 799)
        begin
          h_count <= h_count + 1;
          trig_v <= 0;
        end
      else
        begin
          trig_v <= 1;
          h_count <= 0;
        end
    end
endmodule

module v_counter(clk,enable_v,v_count);
  input clk, enable_v;
  output [9:0] v_count;
  reg [9:0] v_count;
  initial  
    begin 
      v_count <= 0;	
    end
  always @(posedge clk)
    begin
      if (enable_v > 0 && v_count < 524)
        begin
          v_count <= v_count + 1;
        end
      else if (enable_v > 0 && v_count == 524)
        begin
          v_count <= 0;
        end
    end
endmodule

module vga_sync (h_count,v_count,h_sync, v_sync, video_on, x_loc, y_loc);
  input [9:0] h_count;
  input [9:0] v_count;
  output h_sync;
  output v_sync;
  output video_on;
  output [9:0] x_loc;
  output [9:0] y_loc;
  wire h_sync, v_sync, video_on; 
  //horizontal
  localparam HD = 640;
  localparam HF = 16;
  localparam HB = 48;
  localparam HR = 96;
  
  // vertical
  localparam VD = 480;
  localparam VF = 10;
  localparam VB = 33;	
  localparam VR = 2;
  
  assign x_loc = h_count;
  assign y_loc = v_count;
  assign video_on = (h_count < HD & v_count < VD);
  assign h_sync = h_count < HD + HF | h_count > HD + HF + HR;
  assign v_sync = v_count < VD + VF | v_count >= VD + VF + VR;
endmodule //  vga_sync

module startscreen(pixel_x, pixel_y, flag);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  
  reg [0:29] startscrn [29:0];
  
  wire [5:0] x = pixel_x[9:4] - 5;
  wire [5:0] y = pixel_y[9:4];
  assign flag = startscrn[y][x];
  
  initial begin
    startscrn[0]  = 30'b110110110110110011011011011011; //0
    startscrn[1]  = 30'b100000000000000000000000000001; //1
    startscrn[2]  = 30'b000000000000000000000000000000; //2
    startscrn[3]  = 30'b100000000000000000000000000001; //3
    startscrn[4]  = 30'b100000000000000000000000000001; //4
    startscrn[5]  = 30'b000000000000000000000000000000; //5
    startscrn[6]  = 30'b100000000000000000000000000001; //6
    startscrn[7]  = 30'b100000000000000000000000000001; //7
    startscrn[8]  = 30'b000000111011101110110011100000; //8
    startscrn[9]  = 30'b100000100001001010101001000001; //9
    startscrn[10] = 30'b100000111001001010101001000001; //10
    startscrn[11] = 30'b000000001001001110110001000000; //11
    startscrn[12] = 30'b100000001001001010101001000001; //12
    startscrn[13] = 30'b100000111001001010101001000001; //13
    startscrn[14] = 30'b000000000000000000000000000000; //14
    startscrn[15] = 30'b000000111011101000101110100000; //15
    startscrn[16] = 30'b100000100010101101101000100001; //16
    startscrn[17] = 30'b100000100010101010101110100001; //17
    startscrn[18] = 30'b000000101011101000101000100000; //18
    startscrn[19] = 30'b100000101010101000101000000001; //19
    startscrn[20] = 30'b100000111010101000101110100001; //20
    startscrn[21] = 30'b000000000000000000000000000000; //21
    startscrn[22] = 30'b100000000000000000000000000001; //22
    startscrn[23] = 30'b100000000000000000000000000001; //23
    startscrn[24] = 30'b000000000000000000000000000000; //24
    startscrn[25] = 30'b100000000000000000000000000001; //25
    startscrn[26] = 30'b100000000000000000000000000001; //26
    startscrn[27] = 30'b000000000000000000000000000000; //27
    startscrn[28] = 30'b100000000000000000000000000001; //28
    startscrn[29] = 30'b110110110110110011011011011011; //29
  end
endmodule

module p1screen(pixel_x, pixel_y, flag);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  
  reg [0:29] p1won [29:0];
  
  wire [5:0] x = pixel_x[9:4] - 5;
  wire [5:0] y = pixel_y[9:4];
  assign flag = p1won[y][x];
  
  initial begin
    p1won[0]  = 30'b110110110110110011011011011011; //0
    p1won[1]  = 30'b100000000000000000000000000001; //1
    p1won[2]  = 30'b000000000000000000000000000000; //2
    p1won[3]  = 30'b100000000000000000000000000001; //3
    p1won[4]  = 30'b100000000000000000000000000001; //4
    p1won[5]  = 30'b000000000000000000000000000000; //5
    p1won[6]  = 30'b100000000000000000000000000001; //6
    p1won[7]  = 30'b100000000000000000000000000001; //7
    p1won[8]  = 30'b000000000000000000000000000000; //8
    p1won[9]  = 30'b100000000000000000000000000001; //9
    p1won[10] = 30'b101110100011101010111011000101; //10
    p1won[11] = 30'b001010100010101010100010101100; //11
    p1won[12] = 30'b101010100010101010111010100101; //12
    p1won[13] = 30'b101110100011100100100011000101; //13
    p1won[14] = 30'b001000100010100100100010100100; //14
    p1won[15] = 30'b001000111010100100111010100100; //15
    p1won[16] = 30'b100000000000000000000000000001; //16
    p1won[17] = 30'b100000010001011101001010000001; //17
    p1won[18] = 30'b000000010001011101001010000000; //18
    p1won[19] = 30'b100000010001010101101010000001; //19
    p1won[20] = 30'b100000010101010101011010000001; //20
    p1won[21] = 30'b000000011011010101001000000000; //21
    p1won[22] = 30'b100000010001011101001010000001; //22
    p1won[23] = 30'b100000000000000000000000000001; //23
    p1won[24] = 30'b000000000000000000000000000000; //24
    p1won[25] = 30'b100000000000000000000000000001; //25
    p1won[26] = 30'b100000000000000000000000000001; //26
    p1won[27] = 30'b000000000000000000000000000000; //27
    p1won[28] = 30'b100000000000000000000000000001; //28
    p1won[29] = 30'b110110110110110011011011011011; //29
  end
  
endmodule

module p2screen(pixel_x, pixel_y, flag);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  
  reg [0:29] p2won [29:0];
  
  wire [5:0] x = pixel_x[9:4] - 5;
  wire [5:0] y = pixel_y[9:4];
  assign flag = p2won[y][x];
  
  initial begin
    p2won[0]  = 30'b110110110110110011011011011011; //0
    p2won[1]  = 30'b100000000000000000000000000001; //1
    p2won[2]  = 30'b000000000000000000000000000000; //2
    p2won[3]  = 30'b100000000000000000000000000001; //3
    p2won[4]  = 30'b100000000000000000000000000001; //4
    p2won[5]  = 30'b000000000000000000000000000000; //5
    p2won[6]  = 30'b100000000000000000000000000001; //6
    p2won[7]  = 30'b100000000000000000000000000001; //7
    p2won[8]  = 30'b000000000000000000000000000000; //8
    p2won[9]  = 30'b100000000000000000000000000001; //9
    p2won[10] = 30'b101110100011101010111011001101; //10
    p2won[11] = 30'b001010100010101010100010100010; //11
    p2won[12] = 30'b101010100010101010111010101101; //12
    p2won[13] = 30'b101110100011100100100011001001; //13
    p2won[14] = 30'b001000100010100100100010101000; //14
    p2won[15] = 30'b001000111010100100111010101110; //15
    p2won[16] = 30'b100000000000000000000000000001; //16
    p2won[17] = 30'b100000010001011101001010000001; //17
    p2won[18] = 30'b000000010001011101001010000000; //18
    p2won[19] = 30'b100000010001010101101010000001; //19
    p2won[20] = 30'b100000010101010101011010000001; //20
    p2won[21] = 30'b000000011011010101001000000000; //21
    p2won[22] = 30'b100000010001011101001010000001; //22
    p2won[23] = 30'b100000000000000000000000000001; //23
    p2won[24] = 30'b000000000000000000000000000000; //24
    p2won[25] = 30'b100000000000000000000000000001; //25
    p2won[26] = 30'b100000000000000000000000000001; //26
    p2won[27] = 30'b000000000000000000000000000000; //27
    p2won[28] = 30'b100000000000000000000000000001; //28
    p2won[29] = 30'b110110110110110011011011011011; //29
  end
endmodule



module crown(pixel_x, pixel_y, flag, JAM);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  output JAM;
  
  reg [0:15] crown_arr [15:0];
  reg [0:15] JAM_arr [15:0];
  
//  assign flag = ((310 < pixel_x && 328 > pixel_x) && (230 < pixel_y && 248 > pixel_y)) ? (crown_arr[pixel_y - 231][pixel_x - 311]) : 0;
  assign flag = (((312 <= pixel_x) && (pixel_x< 312 + 16)) && ((232 <= pixel_y) && (pixel_y < 232 + 16))) ? (crown_arr[pixel_y - 232][pixel_x - 312]):0;
  assign JAM = (((312 <= pixel_x) && (pixel_x< 312 + 16)) && ((232 <= pixel_y) && (pixel_y < 232 + 16))) ? (JAM_arr[pixel_y - 232][pixel_x - 312]):0;
  initial begin
      JAM_arr[0]  = 16'b0000000000000000;   
      JAM_arr[1]  = 16'b0000000000000000;   
      JAM_arr[2]  = 16'b0000000000000000;   
      JAM_arr[3]  = 16'b0000000000000000;   
      JAM_arr[4]  = 16'b0000000000000000;   
      JAM_arr[5]  = 16'b0000000110000000;   
      JAM_arr[6]  = 16'b0000000110000000;   
      JAM_arr[7]  = 16'b0000001111000000;   
      JAM_arr[8]  = 16'b0000001111000000;   
      JAM_arr[9]  = 16'b0000001111000000;   
      JAM_arr[10] = 16'b0000001111000000;   
      JAM_arr[11] = 16'b0000001111000000;   
      JAM_arr[12] = 16'b0000000110000000;   
      JAM_arr[13] = 16'b0000000000000000;   
      JAM_arr[14] = 16'b0000000000000000;   
      JAM_arr[15] = 16'b0000000000000000;   
  end
  
  initial begin
      crown_arr[0]  = 16'b1100000110000011;   
      crown_arr[1]  = 16'b1100000110000011;   
      crown_arr[2]  = 16'b1110000110000111;   
      crown_arr[3]  = 16'b1110001111000111;   
      crown_arr[4]  = 16'b1110001111000111;   
      crown_arr[5]  = 16'b1111011001101111;   
      crown_arr[6]  = 16'b1111111001111111;   
      crown_arr[7]  = 16'b1111110000111111;   
      crown_arr[8]  = 16'b1110010000100111;   
      crown_arr[9]  = 16'b1100010000100011;   
      crown_arr[10] = 16'b1111110000111111;   
      crown_arr[11] = 16'b1111110000111111;   
      crown_arr[12] = 16'b0100011001100010;   
      crown_arr[13] = 16'b0110001111000110;   
      crown_arr[14] = 16'b0111111111111110;   
      crown_arr[15] = 16'b0011111111111100;   
  end
endmodule

module coin(pixel_x, pixel_y, flag);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  
  reg [0:29] coin_arr [29:0];
  
  assign flag = coin_arr[pixel_y][pixel_x];
  initial begin                                      
      coin_arr[0]  = 16'b0000011111100000;   
      coin_arr[1]  = 16'b0001111111111000;   
      coin_arr[2]  = 16'b0011111111111100;   
      coin_arr[3]  = 16'b0111111111111110;   
      coin_arr[4]  = 16'b0111111111111110;   
      coin_arr[5]  = 16'b1111111111111111;   
      coin_arr[6]  = 16'b1111111111111111;   
      coin_arr[7]  = 16'b1111111111111111;   
      coin_arr[8]  = 16'b1111111111111111;   
      coin_arr[9]  = 16'b1111111111111111;   
      coin_arr[10] = 16'b1111111111111111;   
      coin_arr[11] = 16'b0111111111111110;   
      coin_arr[12] = 16'b0111111111111110;   
      coin_arr[13] = 16'b0011111111111100;   
      coin_arr[14] = 16'b0001111111111000;   
      coin_arr[15] = 16'b0000011111100000;   
  end                                                
endmodule
 
module maze(pixel_x, pixel_y, flag);
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output flag;
  
  reg [0:29] m [29:0];
  
  wire [5:0] x = pixel_x[9:4] - 5;
  wire [5:0] y = pixel_y[9:4];
  assign flag = m[y][x];
  
  initial begin
    m[0]  = 30'b0;
    m[1]  = 30'b011111111111111111111111111110;
    m[2]  = 30'b010000000100000000000000000010;
    m[3]  = 30'b010000000100000000010000000010;
    m[4]  = 30'b010000011111100000011111100010;
    m[5]  = 30'b011110000000100001110000000010;
    m[6]  = 30'b010000000000000000010000000010;
    m[7]  = 30'b010000000100000000010000100010;
    m[8]  = 30'b010000000100010000000000100010;
    m[9]  = 30'b010000000100010010000000100010;
    m[10] = 30'b011110000100010010000100100010;
    m[11] = 30'b010000011100010010000100100010;
    m[12] = 30'b010000000100011111111100100010;
    m[13] = 30'b010000000100000000100000100010;
    m[14] = 30'b010000000100000000100000000010;
    m[15] = 30'b010001111111100000100000000010;
    m[16] = 30'b010001000001000000100000000010;
    m[17] = 30'b010001000001000000100000000010;
    m[18] = 30'b010011000000001000100000100010;
    m[19] = 30'b010000000100001000000000100010;
    m[20] = 30'b010000000100001000000000100010;
    m[21] = 30'b010000000100001000011111100010;
    m[22] = 30'b010001000111111100010000111110;
    m[23] = 30'b010001000100000000010000000010;
    m[24] = 30'b010001111100000000000000000010;
    m[25] = 30'b010000000000010000000010000010;
    m[26] = 30'b010000000000010000000010000010;
    m[27] = 30'b010000000000010000000010000010;
    m[28] = 30'b011111111111111111111111111110;
    m[29] = 30'b0;
  end
endmodule

module Fire1(clk, pixel_x, pixel_y, xT_pos, yT_pos, direction, state, flag, reset);
  input clk;
  input [9:0] xT_pos;
  input [9:0] yT_pos;
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  input [1:0] direction;
  input state;
  input reset;
  reg [9:0] x_pos = 80 + 48;
  reg [9:0] y_pos = 400;
  reg animate;
  output wire flag;
  reg curr_state;
  reg [1:0] curr_direction;
  
  assign flag = ((((x_pos <= pixel_x) && (pixel_x< x_pos + 4)) && ((y_pos <= pixel_y) && (pixel_y < y_pos + 4))) ? (1) : (0)) && curr_state;
  initial begin
      curr_state <= 0;
  end

  always @(posedge clk) begin
    animate <= (pixel_y == 480 && pixel_x == 0); 
  end
  
  always @(posedge animate) begin
       if (state == 1 && curr_state == 0) begin
            x_pos = xT_pos + 6;
            y_pos = yT_pos + 6;
            curr_state <= 1;
            curr_direction <= direction;
       end
       else if (reset == 1) curr_state = 0;
       if (curr_state==1) begin
           if (curr_direction == 2'b00) begin
              y_pos <= y_pos - 3;
           end
           else if (curr_direction == 2'b01) begin
              y_pos <= y_pos + 3;
           end
           else if (curr_direction == 2'b10) begin
              x_pos <= x_pos - 3;
           end
           else if (curr_direction == 2'b11) begin
              x_pos <= x_pos + 3;
           end
       end
   end
endmodule

module FSM_move(clk, keys, state);
  input clk;
  input [3:0] keys;
  output [2:0] state;
  reg [2:0] state = 0;
  reg [2:0] next;

  parameter up      = 3'b000;
  parameter up_     = 3'b001;
  parameter down    = 3'b010;
  parameter down_   = 3'b011;
  parameter left    = 3'b100;
  parameter left_   = 3'b101;
  parameter right   = 3'b110;
  parameter right_  = 3'b111;

  always @(posedge clk)
    begin
        state <= next;
    end
  always @(keys or state)
      begin
        if (state == up)
            begin
              if (keys == 1) next = up_;
              if (keys == 2) next = down;
              if (keys == 4) next = left;
              if (keys == 8) next = right;
            end
        if (state == down)
            begin
              if (keys == 1) next = up;
              if (keys == 2) next = down_;
              if (keys == 4) next = left;
              if (keys == 8) next = right;
            end
        if (state == left)
            begin
              if (keys == 1) next = up;
              if (keys == 2) next = down;
              if (keys == 4) next = left_;
              if (keys == 8) next = right;
            end
        if (state == right)
            begin
              if (keys == 1) next = up;
              if (keys == 2) next = down;
              if (keys == 4) next = left;
              if (keys == 8) next = right_;
            end
        if (state == up_)       begin if (keys == 0) next = up;   end
        if (state == down_)     begin if (keys == 0) next = down; end
        if (state == left_)     begin if (keys == 0) next = left; end
        if (state == right_)    begin if(keys == 0) next = right; end
      end
endmodule


module tank1(clk, pixel_x, pixel_y, tank_flag, fire_flag, keys, fire, reset, maze_pix);
  input clk;
  input fire;
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output wire tank_flag;
  output wire fire_flag;
  input [3:0] keys;
  input reset;
  input maze_pix;
  reg [0:15] tank_arr [63:0];
  reg [9:0] x_pos;
  reg [9:0] y_pos;
  reg [6:0] spritedir = 0;
//  reg check_state;
  reg animate;
  reg [1:0] state;
  reg [3:0] collision = 0;
  reg fire_reset = 0;
  
//  FSM_move move(check_state, keys, state);
  Fire1 t1(clk, pixel_x, pixel_y, x_pos, y_pos, state, fire, fire_flag, fire_reset);
  always @(posedge clk) begin
    if (maze_pix == 1) begin
        if (pixel_y == y_pos && ((x_pos + 1 <= pixel_x) && (pixel_x<= x_pos + 14))) collision[0] = 1;
        if (pixel_y == y_pos+15 && ((x_pos + 1 <= pixel_x) && (pixel_x< x_pos + 14))) collision[1] = 1;
        if (pixel_x == x_pos && ((y_pos + 1 <= pixel_y) && (pixel_y < y_pos + 14))) collision[2] = 1;
        if (pixel_x == x_pos+15 && ((y_pos + 1 <= pixel_y) && (pixel_y < y_pos + 14))) collision[3] = 1;
        if (fire_flag == 1) fire_reset = 1;
    end
    if (pixel_y == 481 && pixel_x == 0) begin
//        if (pixel_y == y_pos && ((x_pos <= pixel_x) && (pixel_x< x_pos + 15))) collision[0] = 0;
//        if (pixel_y == y_pos+15 && ((x_pos <= pixel_x) && (pixel_x< x_pos + 15))) collision[1] = 0;
//        if (pixel_x == x_pos && ((y_pos <= pixel_y) && (pixel_y < y_pos + 15))) collision[2] = 0;
//        if (pixel_x == x_pos+15 && ((y_pos <= pixel_y) && (pixel_y < y_pos + 15))) collision[3] = 0;
//        if (fire_flag == 1) fire_reset = 0;
        collision = 0;
        fire_reset = reset;
    end
    animate <= (pixel_y == 480 && pixel_x == 0); 
  end
  
  always @(posedge animate) begin
    if (reset == 1) begin
        x_pos = 80 + 48; 
        y_pos = 400;    
        spritedir = 0; 
    end
    else if (keys == 4'b0001 && collision[0] == 0) begin
        spritedir <= 0;
        y_pos <= y_pos - 1;
        state <= 0;
    end
    else if (keys == 4'b0010 && collision[1] == 0) begin
        spritedir <= 16;
        y_pos <= y_pos + 1;
        state <= 1;
    end
    else if (keys == 4'b0100 && collision[2] == 0) begin
        spritedir <= 48;
        x_pos <= x_pos - 1;
        state <= 2;
    end
    else if (keys == 4'b1000 && collision[3] == 0) begin
        spritedir <= 32;
        x_pos <= x_pos + 1;
        state <= 3;
    end
  end
  
//  always @(posedge animate) begin
//    if (state == 3'b000) begin
//        spritedir <= 0;
//    end
//    else if (state == 3'b001) begin
//        spritedir <= 0;
//        y_pos <= y_pos - 1;
//    end
//    else if (state == 3'b010) begin
//        spritedir <= 16;
//    end
//    else if (state == 3'b011) begin
//        spritedir <= 16;
//        y_pos <= y_pos + 1;
//    end
//    else if (state == 3'b100) begin
//        spritedir <= 48;
//    end
//    else if (state == 3'b101) begin
//        spritedir <= 48;
//        x_pos <= x_pos - 1;
//    end
//    else if (state == 3'b110) begin
//        spritedir <= 32;
//    end
//    else if (state == 3'b111) begin
//        spritedir <= 32;
//        x_pos <= x_pos + 1;
//    end
//  end
  assign tank_flag = (((x_pos <= pixel_x) && (pixel_x< x_pos + 16)) && ((y_pos <= pixel_y) && (pixel_y < y_pos + 16))) ? (tank_arr[(pixel_y - y_pos)+spritedir][(pixel_x - x_pos)]):(0);

  initial begin
    tank_arr[0]  = 16'b0000001111000000;
    tank_arr[1]  = 16'b0000001111000000;
    tank_arr[2]  = 16'b0000000110000000;
    tank_arr[3]  = 16'b0000000110000000;
    tank_arr[4]  = 16'b1110000110000111;
    tank_arr[5]  = 16'b1110000110000111;
    tank_arr[6]  = 16'b1010001111000101;
    tank_arr[7]  = 16'b1010011111100101;
    tank_arr[8]  = 16'b1111111001111111;
    tank_arr[9]  = 16'b1111111001111111;
    tank_arr[10] = 16'b1111111001111111;
    tank_arr[11] = 16'b1111111111111111;
    tank_arr[12] = 16'b1010011111100101;
    tank_arr[13] = 16'b1010001111000101;
    tank_arr[14] = 16'b1110001111000111;
    tank_arr[15] = 16'b1110000000000111;
    
    tank_arr[16]  = 16'b1110000000000111;
    tank_arr[17]  = 16'b1110001111000111;
    tank_arr[18]  = 16'b1010001111000101;
    tank_arr[19]  = 16'b1010011111100101;
    tank_arr[20]  = 16'b1111111111111111;
    tank_arr[21]  = 16'b1111111001111111;
    tank_arr[22]  = 16'b1111111001111111;
    tank_arr[23]  = 16'b1111111001111111;
    tank_arr[24]  = 16'b1010011111100101;
    tank_arr[25]  = 16'b1010001111000101;
    tank_arr[26] = 16'b1110000110000111;
    tank_arr[27] = 16'b1110000110000111;
    tank_arr[28] = 16'b0000000110000000;       
    tank_arr[29] = 16'b0000000110000000;       
    tank_arr[30] = 16'b0000001111000000;      
    tank_arr[31] = 16'b0000001111000000;      
    
    tank_arr[32]  = 16'b1111111111110000; 
    tank_arr[33]  = 16'b1100111100110000; 
    tank_arr[34]  = 16'b1111111111110000; 
    tank_arr[35]  = 16'b0000111100000000;          
    tank_arr[36]  = 16'b0000111100000000;          
    tank_arr[37]  = 16'b0001111110000000;        
    tank_arr[38]  = 16'b0111111111000011;    
    tank_arr[39]  = 16'b0111100011111111;    
    tank_arr[40]  = 16'b0111100011111111;    
    tank_arr[41]  = 16'b0111111111000011;    
    tank_arr[42] = 16'b0001111110000000;        
    tank_arr[43] = 16'b0000111100000000;          
    tank_arr[44] = 16'b0000111100000000;          
    tank_arr[45] = 16'b1111111111110000; 
    tank_arr[46] = 16'b1100111100110000; 
    tank_arr[47] = 16'b1111111111110000; 
    
    tank_arr[48]  = 16'b0000111111111111;    
    tank_arr[49]  = 16'b0000110011110011;    
    tank_arr[50]  = 16'b0000111111111111;    
    tank_arr[51]  = 16'b0000000011110000;        
    tank_arr[52]  = 16'b0000000011110000;        
    tank_arr[53]  = 16'b0000000111111000;       
    tank_arr[54]  = 16'b1100001111111110;
    tank_arr[55]  = 16'b1111111100011110;
    tank_arr[56]  = 16'b1111111100011110;
    tank_arr[57]  = 16'b1100001111111110;
    tank_arr[58]  = 16'b0000000111111000;       
    tank_arr[59]  = 16'b0000000011110000;        
    tank_arr[60]  = 16'b0000000011110000;        
    tank_arr[61]  = 16'b0000111111111111;    
    tank_arr[62]  = 16'b0000110011110011;    
    tank_arr[63]  = 16'b0000111111111111;    
  end
endmodule

module tank2(clk, pixel_x, pixel_y, tank_flag, fire_flag, keys, fire, reset, maze_pix);
  input clk;
  input fire;
  input [9:0] pixel_x;
  input [9:0] pixel_y;
  output wire tank_flag;
  output wire fire_flag;
  input [3:0] keys;
  input reset;
  input maze_pix;
  reg [0:15] tank_arr [63:0];
  reg [9:0] x_pos;
  reg [9:0] y_pos;
  reg [6:0] spritedir = 16;
  reg animate;
  reg [1:0] state;
  reg [3:0] collision = 0;
  reg fire_reset = 0;
  
  Fire1 t2(clk, pixel_x, pixel_y, x_pos, y_pos, state, fire, fire_flag, fire_reset);
  always @(posedge clk) begin
    if (maze_pix == 1) begin
        if (pixel_y == y_pos && ((x_pos + 1 <= pixel_x) && (pixel_x<= x_pos + 14))) collision[0] = 1;
        if (pixel_y == y_pos+15 && ((x_pos + 1 <= pixel_x) && (pixel_x< x_pos + 14))) collision[1] = 1;
        if (pixel_x == x_pos && ((y_pos + 1 <= pixel_y) && (pixel_y < y_pos + 14))) collision[2] = 1;
        if (pixel_x == x_pos+15 && ((y_pos + 1 <= pixel_y) && (pixel_y < y_pos + 14))) collision[3] = 1;
        if (fire_flag == 1) fire_reset = 1;
    end
    if (pixel_y == 481 && pixel_x == 0) begin
        collision = 0;
        fire_reset = reset;
    end
    animate <= (pixel_y == 480 && pixel_x == 0); 
  end
  
  always @(posedge animate) begin
    if (reset == 1) begin
        x_pos = 80 + 400;  
        y_pos = 48;
        spritedir = 16;        
    end
    else if (keys == 4'b0001 && collision[0] == 0) begin
        spritedir <= 0;
        y_pos <= y_pos - 1;
        state <= 0;
    end
    else if (keys == 4'b0010 && collision[1] == 0) begin
        spritedir <= 16;
        y_pos <= y_pos + 1;
        state <= 1;
    end
    else if (keys == 4'b0100 && collision[2] == 0) begin
        spritedir <= 48;
        x_pos <= x_pos - 1;
        state <= 2;
    end
    else if (keys == 4'b1000 && collision[3] == 0) begin
        spritedir <= 32;
        x_pos <= x_pos + 1;
        state <= 3;
    end
  end
  assign tank_flag = (((x_pos <= pixel_x) && (pixel_x< x_pos + 16)) && ((y_pos <= pixel_y) && (pixel_y < y_pos + 16))) ? (tank_arr[(pixel_y - y_pos)+spritedir][(pixel_x - x_pos)]):(0);

  initial begin 
    tank_arr[0]  = 16'b0000001111000000;
    tank_arr[1]  = 16'b0000001111000000;
    tank_arr[2]  = 16'b0000000110000000;
    tank_arr[3]  = 16'b0000000110000000;
    tank_arr[4]  = 16'b1110000110000111;
    tank_arr[5]  = 16'b1110000110000111;
    tank_arr[6]  = 16'b1010001111000101;
    tank_arr[7]  = 16'b1010011111100101;
    tank_arr[8]  = 16'b1111111001111111;
    tank_arr[9]  = 16'b1111111001111111;
    tank_arr[10] = 16'b1111111001111111;
    tank_arr[11] = 16'b1111111111111111;
    tank_arr[12] = 16'b1010011111100101;
    tank_arr[13] = 16'b1010001111000101;
    tank_arr[14] = 16'b1110001111000111;
    tank_arr[15] = 16'b1110000000000111;
    
    tank_arr[16]  = 16'b1110000000000111;
    tank_arr[17]  = 16'b1110001111000111;
    tank_arr[18]  = 16'b1010001111000101;
    tank_arr[19]  = 16'b1010011111100101;
    tank_arr[20]  = 16'b1111111111111111;
    tank_arr[21]  = 16'b1111111001111111;
    tank_arr[22]  = 16'b1111111001111111;
    tank_arr[23]  = 16'b1111111001111111;
    tank_arr[24]  = 16'b1010011111100101;
    tank_arr[25]  = 16'b1010001111000101;
    tank_arr[26] = 16'b1110000110000111;
    tank_arr[27] = 16'b1110000110000111;
    tank_arr[28] = 16'b0000000110000000;       
    tank_arr[29] = 16'b0000000110000000;       
    tank_arr[30] = 16'b0000001111000000;      
    tank_arr[31] = 16'b0000001111000000;      
    
    tank_arr[32]  = 16'b1111111111110000; 
    tank_arr[33]  = 16'b1100111100110000; 
    tank_arr[34]  = 16'b1111111111110000; 
    tank_arr[35]  = 16'b0000111100000000;          
    tank_arr[36]  = 16'b0000111100000000;          
    tank_arr[37]  = 16'b0001111110000000;        
    tank_arr[38]  = 16'b0111111111000011;    
    tank_arr[39]  = 16'b0111100011111111;    
    tank_arr[40]  = 16'b0111100011111111;    
    tank_arr[41]  = 16'b0111111111000011;    
    tank_arr[42] = 16'b0001111110000000;        
    tank_arr[43] = 16'b0000111100000000;          
    tank_arr[44] = 16'b0000111100000000;          
    tank_arr[45] = 16'b1111111111110000; 
    tank_arr[46] = 16'b1100111100110000; 
    tank_arr[47] = 16'b1111111111110000; 
    
    tank_arr[48]  = 16'b0000111111111111;    
    tank_arr[49]  = 16'b0000110011110011;    
    tank_arr[50]  = 16'b0000111111111111;    
    tank_arr[51]  = 16'b0000000011110000;        
    tank_arr[52]  = 16'b0000000011110000;        
    tank_arr[53]  = 16'b0000000111111000;       
    tank_arr[54]  = 16'b1100001111111110;
    tank_arr[55]  = 16'b1111111100011110;
    tank_arr[56]  = 16'b1111111100011110;
    tank_arr[57]  = 16'b1100001111111110;
    tank_arr[58] = 16'b0000000111111000;       
    tank_arr[59] = 16'b0000000011110000;        
    tank_arr[60] = 16'b0000000011110000;        
    tank_arr[61] = 16'b0000111111111111;    
    tank_arr[62] = 16'b0000110011110011;    
    tank_arr[63] = 16'b0000111111111111;    
  end
endmodule

module FSM_screen (clk, SGP, state, next);
  input clk;
  input [2:0] SGP;
  output [2:0] state, next;
  reg [2:0] state = 2'b0;
  reg [2:0] next = 2'b0;
  
  parameter start = 3'b0;
  parameter game = 3'b1;
  parameter p1 = 3'b10;
  parameter p2 = 3'b11;
  parameter start_space = 3'b100;
  
  always @(posedge clk)
    begin
    state <= next;
  end
  always @(SGP or state)
      begin
        case (SGP[2])
          1'b0: if (state == start_space) next = start;
          1'b1: if (state == start) next = game;
          else if (state == p1 || state == p2) next = start_space;
       endcase
        case (SGP[1:0])
          2'b10: if (state == game) next = p1;
          2'b11: if (state == game) next = p2;
        endcase
      end
endmodule

module pixel_gen( 
  input clk_d, // pixel clock 
  input [9:0] pixel_x, 
  input [9:0] pixel_y, 
  input video_on, 
  output reg [3:0] red=0, 
  output reg [3:0] green=0, 
  output reg [3:0] blue=0,
  input [3:0] keys_1,
  input [3:0] keys_2,
  input fire_1,
  input fire_2,
  input startgame,
  input restart
);
  parameter start = 0;
  parameter game = 1;
  parameter p1 = 2;
  parameter p2 = 3;
  reg animate;
  reg p1wincheck;
  reg p2wincheck;
  reg reset = 1;
  reg [10:0] counter;
  
  reg [1:0] state = start;
  wire s1_pix;
  startscreen s1(pixel_x, pixel_y, s1_pix);
  wire p1_pix;
  p1screen p1x(pixel_x, pixel_y, p1_pix);
  wire p2_pix;
  p2screen p2x(pixel_x, pixel_y, p2_pix);
  wire maze_pix;
  maze m1(pixel_x, pixel_y, maze_pix);
  
  wire crown_pix;
  wire JAM;
  crown c1(pixel_x, pixel_y, crown_pix, JAM);
  
  
  
  wire tank_pix_1;
  wire fire_pix_1;
  wire tank_pix_2;
  wire fire_pix_2;
  tank1 t1(clk_d, pixel_x, pixel_y, tank_pix_1, fire_pix_1, keys_1, fire_1, reset, maze_pix || crown_pix || tank_pix_2);
  tank2 t2(clk_d, pixel_x, pixel_y, tank_pix_2, fire_pix_2, keys_2, fire_2, reset, maze_pix || crown_pix || tank_pix_1);
 
  //assign y_pos_1 = (pixel_x == 640&&pixel_y==480)? ((keys == 1)? (y_pos_1 + 1) : y_pos) : y_pos;
  //fire1 t2(clk_d, pixel_x, pixel_y, tank_pix_2, keys_2);
  always @(posedge clk_d) begin
    if ((tank_pix_2 == 1 && fire_pix_1 == 1) || (tank_pix_1 == 1 && crown_pix == 1 && counter >= 600)) p1wincheck = 1;
    if (tank_pix_1 == 1 && fire_pix_2 == 1 || (tank_pix_2 == 1 && crown_pix == 1 && counter >= 600)) p2wincheck = 1;
    if (pixel_y == 481 && pixel_x == 0) begin
        p1wincheck = 0;
        p2wincheck = 0;
    end
    animate <= (pixel_y == 480 && pixel_x == 0); 
  end
  always @(posedge animate) begin
    if (counter < 750) counter = counter + 1;
    else counter = 0;
    if (state == start && startgame == 1) begin
        state = game;
        reset = 0;
        counter = 0;
    end
    else if ((state == p1 || state == p2) && restart == 1) begin
        state = start; 
        reset = 1;
    end
    else if (p1wincheck == 1 && state == game) state = p1; 
    else if (p2wincheck == 1 && state == game) state = p2; 
  end
  
  always @(posedge clk_d)
    begin
      if ((pixel_x <=80) || (pixel_x >=559)) begin 
        red <= 4'h0; 
        green <= 4'h0; 
        blue <= 4'h0; 
      end
      else if (pixel_x == 0) begin
        red <= 4'h1; 
        green <= 4'h1; 
        blue <= 4'h1; 
      end
      else begin
          if (state == start) begin
            if (s1_pix) begin
                red <= 4'h4; 
                green <= 4'h8; 
                blue <= 4'hc;
            end
            else begin
                red <= 4'hd;
                green <=4'hd;
                blue <= 4'he;
            end
          end   
          else if (state == game) begin     
              if (maze_pix == 1) begin 
                red <= 4'hd;
                green <= 4'hd; 
                blue <= 4'he; 
              end 
              else if (tank_pix_1 == 1 || fire_pix_1 == 1) begin
                red <= 4'hd; 
                green <= 4'h2; 
                blue <= 4'h2;
              end
              else if (tank_pix_2 == 1 || fire_pix_2 == 1) begin
                red <= 4'hf; 
                green <= 4'h7; 
                blue <= 4'h0;
              end
              else if (crown_pix == 1) begin
                red <= 4'he; 
                green <= 4'hc; 
                blue <= 4'h0;
              end
              else if (JAM == 1 && counter >= 600) begin
                red <= 4'he; 
                green <= 4'h0; 
                blue <= 4'h0;
              end
              else
                begin
                red <= 4'h0;
                green <=4'h3;
                blue <= 4'h5;
              end
          end
          else if (state == p1) begin
            if (p1_pix == 1) begin
                red <= 4'hd; 
                green <= 4'h2; 
                blue <= 4'h2;
            end
            else begin
                red <= 4'hd;
                green <=4'hd;
                blue <= 4'he;
            end
          end
          else if (state == p2) begin
            if (p2_pix == 1) begin
                red <= 4'hf; 
                green <= 4'h7; 
                blue <= 4'h0;
            end
            else begin
                red <= 4'hd;
                green <=4'hd;
                blue <= 4'he;
            end
          end
      end
    end
endmodule

module vga_controller (clk, clk_d, kclk, kdata, h_sync, v_sync, red, green, blue, fire_1, fire_2);
  input clk;
  input kclk;
  input kdata;
  wire [9:0] h_count;
  wire [9:0] v_count;
  wire trig_v;
  output wire clk_d;
  output h_sync;
  output wire v_sync;
  wire video_on;
  wire [9:0] x_loc;
  wire [9:0] y_loc;
  output wire [3:0] red;
  output wire [3:0] green;
  output wire [3:0] blue;
  wire [3:0] keys_1;
  wire [3:0] keys_2;
  output fire_1;
  output fire_2;
  wire fire_1;
  wire fire_2;
  wire start;
  wire restart;
  clk_div t(clk, clk_d);
  PS2Receiver keyboard(clk, kclk, kdata, keys_1,keys_2,fire_1,fire_2, start, restart);
  h_counter r(clk_d,h_count,trig_v);
  v_counter g(clk_d,trig_v,v_count);
  vga_sync c(h_count,v_count,h_sync, v_sync, video_on, x_loc, y_loc);
  pixel_gen q(clk_d, x_loc, y_loc, video_on, red, green, blue, keys_2,keys_1,fire_1,fire_2, start, restart);
endmodule