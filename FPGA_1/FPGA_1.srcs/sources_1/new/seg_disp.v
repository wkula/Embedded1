`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2020 21:19:21
// Design Name: 
// Module Name: seg_disp
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


module seg_disp(
    input clk,
    input [15:0] i_num,
    output [6:0] o_seg,
    output o_dp,
    output [3:0] o_an
    );
    
    // 7seg numbers
    localparam seg_0 = 7'b1000000;
    localparam seg_1 = 7'b1111001;
    localparam seg_2 = 7'b0100100;
    localparam seg_3 = 7'b0110000;
    localparam seg_4 = 7'b0011001;
    localparam seg_5 = 7'b0010010;
    localparam seg_6 = 7'b0000010;
    localparam seg_7 = 7'b1111000;
    localparam seg_8 = 7'b0000000;
    localparam seg_9 = 7'b0010000;
    
    localparam delay_time = 21'd100000;
    
    reg [15:0]r_input_num = 16'b0;
    reg [3:0]r_an = 4'b0;
    reg [6:0]r_seg = 7'b0;
    reg [3:0]i = 4'b0;
    reg [6:0]r_disp_1 = seg_0;
    reg [6:0]r_disp_2 = seg_0;
    reg [6:0]r_disp_3 = seg_0;
    reg [6:0]r_disp_4 = seg_0;
    reg [3:0]temp_disp_val = 4'b0;
    reg [20:0]delay = 21'b0;
    
    always @(posedge clk)
    begin
        // To zrobiæ przerabianie r_input_num na bcd
        case (i)
            4'b0000:
            begin
                r_input_num <= i_num;
                i <= i + 1;
            end
            4'b0001:
            begin
                if (r_input_num > 16'd9999)
                begin
                    r_disp_1 <= seg_9;
                    r_disp_2 <= seg_9;
                    r_disp_3 <= seg_9;
                    r_disp_4 <= seg_9;
                    i <= 4'b0000;
                end
                else
                begin
                    temp_disp_val <= r_input_num % 10;
                    i <= i + 1;
                end
            end
            4'b0010:
            begin
                case(temp_disp_val)
                    4'd0: r_disp_1 <= seg_0;
                    4'd1: r_disp_1 <= seg_1;
                    4'd2: r_disp_1 <= seg_2;
                    4'd3: r_disp_1 <= seg_3;
                    4'd4: r_disp_1 <= seg_4;
                    4'd5: r_disp_1 <= seg_5;
                    4'd6: r_disp_1 <= seg_6;
                    4'd7: r_disp_1 <= seg_7;
                    4'd8: r_disp_1 <= seg_8;
                    4'd9: r_disp_1 <= seg_9;
                    default: r_disp_1 <= seg_0;
                endcase
                r_input_num <= r_input_num / 10;
                i <= i + 1;
            end
            4'b0011:
            begin
                temp_disp_val <= r_input_num % 10;
                i <= i + 1;
            end
            4'b0100:
            begin
                case(temp_disp_val)
                    4'd0: r_disp_2 <= seg_0;
                    4'd1: r_disp_2 <= seg_1;
                    4'd2: r_disp_2 <= seg_2;
                    4'd3: r_disp_2 <= seg_3;
                    4'd4: r_disp_2 <= seg_4;
                    4'd5: r_disp_2 <= seg_5;
                    4'd6: r_disp_2 <= seg_6;
                    4'd7: r_disp_2 <= seg_7;
                    4'd8: r_disp_2 <= seg_8;
                    4'd9: r_disp_2 <= seg_9;
                    default: r_disp_2 <= seg_0;
                endcase
                r_input_num <= r_input_num / 10;
                i <= i + 1;
            end
            4'b0101:
            begin
                temp_disp_val <= r_input_num % 10;
                i <= i + 1;
            end
            4'b0110:
            begin
                case(temp_disp_val)
                    4'd0: r_disp_3 <= seg_0;
                    4'd1: r_disp_3 <= seg_1;
                    4'd2: r_disp_3 <= seg_2;
                    4'd3: r_disp_3 <= seg_3;
                    4'd4: r_disp_3 <= seg_4;
                    4'd5: r_disp_3 <= seg_5;
                    4'd6: r_disp_3 <= seg_6;
                    4'd7: r_disp_3 <= seg_7;
                    4'd8: r_disp_3 <= seg_8;
                    4'd9: r_disp_3 <= seg_9;
                    default: r_disp_3 <= seg_0;
                endcase
                r_input_num <= r_input_num / 10;
                i <= i + 1;
            end
            4'b0111:
            begin
                temp_disp_val <= r_input_num % 10; // We dont have to do that in case on if at the beggining but if we do it will be easier to extend
                i <= i + 1;
            end
            4'b1000:
            begin
                case(temp_disp_val)
                    4'd0: r_disp_4 <= seg_0;
                    4'd1: r_disp_4 <= seg_1;
                    4'd2: r_disp_4 <= seg_2;
                    4'd3: r_disp_4 <= seg_3;
                    4'd4: r_disp_4 <= seg_4;
                    4'd5: r_disp_4 <= seg_5;
                    4'd6: r_disp_4 <= seg_6;
                    4'd7: r_disp_4 <= seg_7;
                    4'd8: r_disp_4 <= seg_8;
                    4'd9: r_disp_4 <= seg_9;
                    default: r_disp_4 <= seg_0;
                endcase
                r_input_num <= r_input_num / 10;
                i <= 4'b0000;
            end
            default: i <= 4'b0000;
        endcase
    end
    
    
    always @(posedge clk)
    begin
        case (r_an)
            4'b1110:
                begin
                    if (delay > delay_time)
                    begin
                        r_seg <= r_disp_2;
                        r_an <= 4'b1101;
                        delay <= 21'b0;
                    end
                    else
                    begin
                        delay <= delay + 1;
                    end
                end
            4'b1101:
                begin
                    if (delay > delay_time)
                    begin
                        r_seg <= r_disp_3;
                        r_an <= 4'b1011;
                        delay <= 21'b0;
                    end
                    else
                    begin
                        delay <= delay + 1;
                    end
                end
            4'b1011:
                begin
                    if (delay > delay_time)
                    begin
                        r_seg <= r_disp_4;
                        r_an <= 4'b0111;
                        delay <= 21'b0;
                    end
                    else
                    begin
                        delay <= delay + 1;
                    end
                end
            4'b0111:
                begin
                    if (delay > delay_time)
                    begin
                        r_seg <= r_disp_1;
                        r_an <= 4'b1110;
                        delay <= 21'b0;
                    end
                    else
                    begin
                        delay <= delay + 1;
                    end
                end
            default:
            begin
                r_an <= 4'b0111;
                delay <= delay_time-1;
            end
        endcase
    end
    
    assign o_seg = r_seg;
    assign o_an = r_an;
    assign o_dp = 1'b0;
    
endmodule
