`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2020 15:47:10
// Design Name: 
// Module Name: Master
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


module Master #
    (
      parameter SPI_MODE = 0,           // CPOL = 0, CPHA = 0
      parameter CLKS_PER_HALF_BIT = 64,  // 6.25 MHz for 16
      parameter MAX_BYTES_PER_CS = 3,   // 3 bytes per chip select
      parameter CS_INACTIVE_CLKS = 10  // Adds delay between bytes
    )
    (
    input clk,
    input [15:0] sw,
    input btnC,
    input btnU,
    input btnD,
    input btnL,
    input btnR,
    output [15:0] led,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [2:0] JB, // 0 as CLK, 1 as MOSI, 2 as CS
    input MISO // MISO
    );
    
    localparam turn_on = 8'b00000001;
    localparam turn_off = 8'b00000010;
    localparam read_light_status = 8'b01000000;
    localparam read_light_intensity = 8'b10000000;
    localparam wait_for_read = 8'b00000000;
    
    
    reg [7:0] r_Master_TX_Byte = 0;
    reg r_Master_TX_DV = 1'b0;
    wire w_Master_TX_Ready;
    wire w_Master_RX_DV;
    wire [7:0] w_Master_RX_Byte;
    wire [MAX_BYTES_PER_CS-1:0] w_Master_RX_Count;
    reg [MAX_BYTES_PER_CS-1:0] r_Master_TX_Count = 2'b10;
    reg r_prev_btnR = 1'b0;
    reg r_prev_btnL = 1'b0;
    reg r_prev_btnU = 1'b0;
    reg r_prev_btnD = 1'b0;
    reg [7:0]r_h_num_to_disp = 8'b0;
    reg [7:0]r_l_num_to_disp = 8'b0;
    reg read_flag = 1'b0;
    reg [15:0]r_hold_cs = 16'b0;
    
    
    SPI_Master_With_Single_CS #
    (
        .SPI_MODE(SPI_MODE),
        .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT),
        .MAX_BYTES_PER_CS(MAX_BYTES_PER_CS),
        .CS_INACTIVE_CLKS(CS_INACTIVE_CLKS)
    ) SPI
    (
        // Control/Data Signals,
        .i_Rst_L(~btnC),     // FPGA Reset
        .i_Clk(clk),         // FPGA Clock
        
        // TX (MOSI) Signals
        .i_TX_Count(r_Master_TX_Count),   // Number of bytes per CS
        .i_TX_Byte(r_Master_TX_Byte),     // Byte to transmit on MOSI
        .i_TX_DV(r_Master_TX_DV),         // Data Valid Pulse with i_TX_Byte
        .o_TX_Ready(w_Master_TX_Ready),   // Transmit Ready for Byte
        
        // RX (MISO) Signals
        .o_RX_Count(w_Master_RX_Count), // Index of RX'd byte
        .o_RX_DV(w_Master_RX_DV),       // Data Valid pulse (1 clock cycle)
        .o_RX_Byte(w_Master_RX_Byte),   // Byte received on MISO
        
        // SPI Interface
        .o_SPI_Clk(JB[0]),
        .i_SPI_MISO(MISO),
        .o_SPI_MOSI(JB[1]),
        .o_SPI_CS_n(JB[2])
    );
        
    seg_disp num_disp
    (
        .clk(clk),
        .i_num({r_h_num_to_disp,r_l_num_to_disp}),
        .o_seg(seg),
        .o_dp(dp),
        .o_an(an)
    );
        
        
    always@(posedge clk)
    begin
        r_Master_TX_DV <= 1'b0;
        
        if (~r_prev_btnR & btnR & w_Master_TX_Ready & ~btnL & ~btnU & ~btnD & ~read_flag)
        begin
            r_Master_TX_Count <= 2'b01;
            r_Master_TX_Byte <= turn_on;
            r_Master_TX_DV <= 1'b1;
        end
        if (~r_prev_btnL & btnL & w_Master_TX_Ready & ~btnR & ~btnU & ~btnD & ~read_flag)
        begin
            r_Master_TX_Count <= 2'b01;
            r_Master_TX_Byte <= turn_off;
            r_Master_TX_DV <= 1'b1;
        end
//        if (~r_prev_btnU & btnU & w_Master_TX_Ready & ~btnR & ~btnL & ~btnD & ~read_flag)
//        begin
//            r_Master_TX_Count <= 2'b11;
//            r_Master_TX_Byte <= read_light_status;
//            r_Master_TX_DV <= 1'b1;
//            read_flag <= 1'b1;
//        end
//        if (~r_prev_btnD & btnD & ~btnR & ~btnL & ~btnU & ~read_flag & w_Master_TX_Ready)
//        begin
//            r_Master_TX_Count <= 2'b11;
//            r_Master_TX_Byte <= read_light_intensity;
//            r_Master_TX_DV <= 1'b1;
//            read_flag <= 1'b1;
//        end
//        if (read_flag & w_Master_TX_Ready)
//        begin
//            r_Master_TX_Byte <= wait_for_read;
////            r_Master_TX_Byte <= 8'b00000011;
//            r_Master_TX_DV <= 1'b1;
//        end
        if (~r_prev_btnU & btnU & w_Master_TX_Ready & ~btnR & ~btnL & ~btnD & ~read_flag)
        begin
            r_Master_TX_Count <= 2'b11;
            r_Master_TX_Byte <= read_light_status;
            r_Master_TX_DV <= 1'b1;
            read_flag <= 1'b1;
        end
        if (~r_prev_btnD & btnD & ~btnR & ~btnL & ~btnU & ~read_flag & w_Master_TX_Ready)
        begin
            r_Master_TX_Count <= 2'b01;
            r_Master_TX_Byte <= read_light_intensity;
            r_Master_TX_DV <= 1'b1;
            read_flag <= 1'b1;
        end
        if (read_flag & w_Master_TX_Ready)
        begin
            if (r_hold_cs > 16'd60000)
            begin
                r_Master_TX_Count <= 2'b10;
                r_Master_TX_Byte <= wait_for_read;
    //            r_Master_TX_Byte <= 8'b00000011;
                r_Master_TX_DV <= 1'b1;
            end
            else
            begin
                r_hold_cs <= r_hold_cs + 1;
            end
        end
        if (w_Master_RX_Count == 2'b10)
        begin
            read_flag <= 1'b0;
            r_hold_cs <= 16'b0;
        end
        r_prev_btnR <= btnR;
        r_prev_btnL <= btnL;
        r_prev_btnU <= btnU;
        r_prev_btnD <= btnD;
    end
    
    always @(posedge w_Master_RX_DV & read_flag)
    begin
        case(w_Master_RX_Count)
            default: //1st byte is set as 0
            begin
                // Master (FPGA) is sending request
            end
            3'd0:
            begin
                // 1st recived byte with data
                r_l_num_to_disp <= w_Master_RX_Byte;
            end
            3'd1:
            begin
                // 2nd recived byte with data
                r_h_num_to_disp <= w_Master_RX_Byte;
            end
        endcase
    end
    
    assign sw = led;
    
endmodule
