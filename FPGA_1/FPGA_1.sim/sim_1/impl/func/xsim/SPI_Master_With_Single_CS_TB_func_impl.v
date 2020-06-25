// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jun 13 12:04:00 2020
// Host        : DESKTOP-RQKI1H5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               J:/Uczelnia/MGR/Embedded1/FPGA_1/FPGA_1.sim/sim_1/impl/func/xsim/SPI_Master_With_Single_CS_TB_func_impl.v
// Design      : Master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CLKS_PER_HALF_BIT = "4" *) (* CS_INACTIVE_CLKS = "10" *) (* ECO_CHECKSUM = "e6110655" *) 
(* MAIN_CLK_DELAY = "2" *) (* MAX_BYTES_PER_CS = "3" *) (* SPI_MODE = "0" *) 
(* read_light_intensity = "8'b10000000" *) (* read_light_status = "8'b01000000" *) (* turn_off = "8'b00000010" *) 
(* turn_on = "8'b00000001" *) (* wait_for_read = "8'b00000000" *) 
(* NotValidForBitStream *)
module Master
   (clk,
    sw,
    btnC,
    btnU,
    btnD,
    btnL,
    btnR,
    led,
    seg,
    dp,
    an,
    JB);
  input clk;
  input [15:0]sw;
  input btnC;
  input btnU;
  input btnD;
  input btnL;
  input btnR;
  output [15:0]led;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  output [3:0]JB;

  wire [3:0]JB;
  wire [3:0]JB_OBUF;
  wire SPI_n_10;
  wire SPI_n_3;
  wire SPI_n_8;
  wire SPI_n_9;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dp;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [6:0]r_Master_TX_Byte;
  wire \r_Master_TX_Byte[0]_i_2_n_0 ;
  wire \r_Master_TX_Byte[0]_i_3_n_0 ;
  wire \r_Master_TX_Byte[7]_i_3_n_0 ;
  wire \r_Master_TX_Byte[7]_i_5_n_0 ;
  wire \r_Master_TX_Byte_reg_n_0_[0] ;
  wire \r_Master_TX_Byte_reg_n_0_[1] ;
  wire \r_Master_TX_Byte_reg_n_0_[6] ;
  wire \r_Master_TX_Byte_reg_n_0_[7] ;
  wire \r_Master_TX_Count[1]_i_3_n_0 ;
  wire \r_Master_TX_Count_reg_n_0_[0] ;
  wire \r_Master_TX_Count_reg_n_0_[1] ;
  wire r_Master_TX_DV;
  wire r_Master_TX_DV13_out;
  wire r_prev_btnD;
  wire r_prev_btnL;
  wire r_prev_btnR;
  wire r_prev_btnU;
  wire read_light_intensity_flag;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire NLW_num_disp_lopt_4_UNCONNECTED;

  OBUF \JB_OBUF[0]_inst 
       (.I(JB_OBUF[0]),
        .O(JB[0]));
  OBUFT \JB_OBUF[1]_inst 
       (.I(1'b0),
        .O(JB[1]),
        .T(1'b1));
  OBUF \JB_OBUF[2]_inst 
       (.I(JB_OBUF[2]),
        .O(JB[2]));
  OBUF \JB_OBUF[3]_inst 
       (.I(JB_OBUF[3]),
        .O(JB[3]));
  SPI_Master_With_Single_CS SPI
       (.D({r_Master_TX_DV13_out,r_Master_TX_Byte[6],r_Master_TX_Byte[1:0]}),
        .E(SPI_n_3),
        .JB_OBUF({JB_OBUF[3:2],JB_OBUF[0]}),
        .Q({\r_Master_TX_Byte_reg_n_0_[7] ,\r_Master_TX_Byte_reg_n_0_[6] ,\r_Master_TX_Byte_reg_n_0_[1] ,\r_Master_TX_Byte_reg_n_0_[0] }),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\o_RX_Count_reg[1]_0 (SPI_n_9),
        .\r_Master_TX_Byte_reg[0] (\r_Master_TX_Byte[0]_i_2_n_0 ),
        .\r_Master_TX_Byte_reg[0]_0 (\r_Master_TX_Byte[0]_i_3_n_0 ),
        .\r_Master_TX_Byte_reg[7] (\r_Master_TX_Byte[7]_i_5_n_0 ),
        .\r_Master_TX_Count_reg[0] (\r_Master_TX_Byte[7]_i_3_n_0 ),
        .\r_Master_TX_Count_reg[0]_0 (\r_Master_TX_Count_reg_n_0_[0] ),
        .\r_Master_TX_Count_reg[1] (SPI_n_10),
        .\r_Master_TX_Count_reg[1]_0 (\r_Master_TX_Count_reg_n_0_[1] ),
        .\r_Master_TX_Count_reg[1]_1 (\r_Master_TX_Count[1]_i_3_n_0 ),
        .r_Master_TX_DV(r_Master_TX_DV),
        .r_Master_TX_DV_reg(SPI_n_8),
        .r_prev_btnL(r_prev_btnL),
        .r_prev_btnU(r_prev_btnU),
        .read_light_intensity_flag(read_light_intensity_flag));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(1'b0),
        .O(dp));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  seg_disp num_disp
       (.Q({seg_OBUF[6],seg_OBUF[0],seg_OBUF[4]}),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(NLW_num_disp_lopt_4_UNCONNECTED));
  LUT4 #(
    .INIT(16'h3222)) 
    \r_Master_TX_Byte[0]_i_2 
       (.I0(btnR_IBUF),
        .I1(read_light_intensity_flag),
        .I2(r_prev_btnL),
        .I3(btnL_IBUF),
        .O(\r_Master_TX_Byte[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFAAADD)) 
    \r_Master_TX_Byte[0]_i_3 
       (.I0(btnU_IBUF),
        .I1(r_prev_btnU),
        .I2(r_prev_btnD),
        .I3(btnL_IBUF),
        .I4(btnD_IBUF),
        .I5(read_light_intensity_flag),
        .O(\r_Master_TX_Byte[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \r_Master_TX_Byte[7]_i_3 
       (.I0(btnL_IBUF),
        .I1(btnU_IBUF),
        .I2(btnR_IBUF),
        .I3(r_prev_btnD),
        .I4(btnD_IBUF),
        .I5(\r_Master_TX_Count[1]_i_3_n_0 ),
        .O(\r_Master_TX_Byte[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Master_TX_Byte[7]_i_5 
       (.I0(r_prev_btnD),
        .I1(btnL_IBUF),
        .O(\r_Master_TX_Byte[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(SPI_n_3),
        .D(r_Master_TX_Byte[0]),
        .Q(\r_Master_TX_Byte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(SPI_n_3),
        .D(r_Master_TX_Byte[1]),
        .Q(\r_Master_TX_Byte_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(SPI_n_3),
        .D(r_Master_TX_Byte[6]),
        .Q(\r_Master_TX_Byte_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(SPI_n_3),
        .D(r_Master_TX_DV13_out),
        .Q(\r_Master_TX_Byte_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0003004400033344)) 
    \r_Master_TX_Count[1]_i_3 
       (.I0(r_prev_btnR),
        .I1(btnR_IBUF),
        .I2(r_prev_btnU),
        .I3(btnL_IBUF),
        .I4(btnU_IBUF),
        .I5(r_prev_btnL),
        .O(\r_Master_TX_Count[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_8),
        .Q(\r_Master_TX_Count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_Master_TX_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_10),
        .Q(\r_Master_TX_Count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_Master_TX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_3),
        .Q(r_Master_TX_DV),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_prev_btnD_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnD_IBUF),
        .Q(r_prev_btnD),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_prev_btnL_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnL_IBUF),
        .Q(r_prev_btnL),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_prev_btnR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnR_IBUF),
        .Q(r_prev_btnR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_prev_btnU_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnU_IBUF),
        .Q(r_prev_btnU),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    read_light_intensity_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_9),
        .Q(read_light_intensity_flag),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[0]_inst 
       (.I(lopt),
        .O(seg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[1]_inst 
       (.I(lopt_1),
        .O(seg[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[2]_inst 
       (.I(lopt_2),
        .O(seg[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[3]_inst 
       (.I(lopt_3),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(led_OBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(led_OBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(led_OBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(led_OBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(led_OBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(led_OBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(led_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(led_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(led_OBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(led_OBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(led_OBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(led_OBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(led_OBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(led_OBUF[9]));
endmodule

module SPI_Master
   (w_Master_RX_DV,
    JB_OBUF,
    E,
    read_light_intensity_flag_reg,
    o_TX_Ready_reg_0,
    D,
    r_Master_TX_DV_reg,
    r_TX_Count_1,
    \FSM_onehot_r_SM_CS_reg[0] ,
    \o_RX_Count_reg[1] ,
    \r_Master_TX_Count_reg[1] ,
    \FSM_onehot_r_SM_CS_reg[1] ,
    \FSM_onehot_r_SM_CS_reg[0]_0 ,
    \r_CS_Inactive_Count_reg[3] ,
    clk_IBUF_BUFG,
    btnC_IBUF,
    r_Master_TX_DV,
    \FSM_onehot_r_SM_CS_reg[2] ,
    Q,
    \FSM_onehot_r_SM_CS_reg[1]_0 ,
    r_CS_n_reg,
    r_CS_n_reg_0,
    \FSM_onehot_r_SM_CS_reg[2]_0 ,
    r_TX_Count,
    read_light_intensity_flag,
    \r_Master_TX_Count_reg[0] ,
    btnU_IBUF,
    btnD_IBUF,
    btnL_IBUF,
    r_prev_btnL,
    r_prev_btnU,
    \r_Master_TX_Byte_reg[7] ,
    btnR_IBUF,
    \r_Master_TX_Count_reg[0]_0 ,
    \r_Master_TX_Byte_reg[0] ,
    \r_Master_TX_Byte_reg[0]_0 ,
    w_Master_RX_Count,
    \r_Master_TX_Count_reg[1]_0 ,
    \r_Master_TX_Count_reg[1]_1 ,
    \FSM_onehot_r_SM_CS_reg[2]_1 ,
    \r_TX_Byte_reg[7]_0 );
  output w_Master_RX_DV;
  output [1:0]JB_OBUF;
  output [0:0]E;
  output [0:0]read_light_intensity_flag_reg;
  output o_TX_Ready_reg_0;
  output [3:0]D;
  output r_Master_TX_DV_reg;
  output r_TX_Count_1;
  output \FSM_onehot_r_SM_CS_reg[0] ;
  output \o_RX_Count_reg[1] ;
  output \r_Master_TX_Count_reg[1] ;
  output \FSM_onehot_r_SM_CS_reg[1] ;
  output \FSM_onehot_r_SM_CS_reg[0]_0 ;
  output \r_CS_Inactive_Count_reg[3] ;
  input clk_IBUF_BUFG;
  input btnC_IBUF;
  input r_Master_TX_DV;
  input \FSM_onehot_r_SM_CS_reg[2] ;
  input [3:0]Q;
  input \FSM_onehot_r_SM_CS_reg[1]_0 ;
  input r_CS_n_reg;
  input r_CS_n_reg_0;
  input \FSM_onehot_r_SM_CS_reg[2]_0 ;
  input [1:0]r_TX_Count;
  input read_light_intensity_flag;
  input \r_Master_TX_Count_reg[0] ;
  input btnU_IBUF;
  input btnD_IBUF;
  input btnL_IBUF;
  input r_prev_btnL;
  input r_prev_btnU;
  input \r_Master_TX_Byte_reg[7] ;
  input btnR_IBUF;
  input \r_Master_TX_Count_reg[0]_0 ;
  input \r_Master_TX_Byte_reg[0] ;
  input \r_Master_TX_Byte_reg[0]_0 ;
  input [1:0]w_Master_RX_Count;
  input \r_Master_TX_Count_reg[1]_0 ;
  input \r_Master_TX_Count_reg[1]_1 ;
  input \FSM_onehot_r_SM_CS_reg[2]_1 ;
  input [3:0]\r_TX_Byte_reg[7]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_SM_CS_reg[0] ;
  wire \FSM_onehot_r_SM_CS_reg[0]_0 ;
  wire \FSM_onehot_r_SM_CS_reg[1] ;
  wire \FSM_onehot_r_SM_CS_reg[1]_0 ;
  wire \FSM_onehot_r_SM_CS_reg[2] ;
  wire \FSM_onehot_r_SM_CS_reg[2]_0 ;
  wire \FSM_onehot_r_SM_CS_reg[2]_1 ;
  wire [1:0]JB_OBUF;
  wire [3:0]Q;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire btnU_IBUF;
  wire clk_IBUF_BUFG;
  wire \o_RX_Count_reg[1] ;
  wire o_RX_DV5_out;
  wire o_SPI_MOSI1_out;
  wire o_SPI_MOSI_i_2_n_0;
  wire o_SPI_MOSI_i_3_n_0;
  wire o_SPI_MOSI_i_4_n_0;
  wire o_TX_Ready8_out;
  wire o_TX_Ready_reg_0;
  wire [4:1]p_0_in;
  wire \r_CS_Inactive_Count[3]_i_3_n_0 ;
  wire \r_CS_Inactive_Count_reg[3] ;
  wire r_CS_n;
  wire r_CS_n_reg;
  wire r_CS_n_reg_0;
  wire r_Leading_Edge;
  wire r_Leading_Edge7_out;
  wire \r_Master_TX_Byte[6]_i_2_n_0 ;
  wire \r_Master_TX_Byte[7]_i_6_n_0 ;
  wire \r_Master_TX_Byte_reg[0] ;
  wire \r_Master_TX_Byte_reg[0]_0 ;
  wire \r_Master_TX_Byte_reg[7] ;
  wire \r_Master_TX_Count[1]_i_2_n_0 ;
  wire \r_Master_TX_Count_reg[0] ;
  wire \r_Master_TX_Count_reg[0]_0 ;
  wire \r_Master_TX_Count_reg[1] ;
  wire \r_Master_TX_Count_reg[1]_0 ;
  wire \r_Master_TX_Count_reg[1]_1 ;
  wire r_Master_TX_DV;
  wire r_Master_TX_DV_reg;
  wire \r_RX_Bit_Count[0]_i_1_n_0 ;
  wire \r_RX_Bit_Count[1]_i_1_n_0 ;
  wire \r_RX_Bit_Count[2]_i_1_n_0 ;
  wire \r_RX_Bit_Count_reg_n_0_[0] ;
  wire \r_RX_Bit_Count_reg_n_0_[1] ;
  wire \r_RX_Bit_Count_reg_n_0_[2] ;
  wire r_SPI_Clk;
  wire \r_SPI_Clk_Count[0]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[1]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[2]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[2]_i_2_n_0 ;
  wire \r_SPI_Clk_Count_reg_n_0_[0] ;
  wire \r_SPI_Clk_Count_reg_n_0_[1] ;
  wire \r_SPI_Clk_Count_reg_n_0_[2] ;
  wire \r_SPI_Clk_Edges[0]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[4]_i_1_n_0 ;
  wire \r_SPI_Clk_Edges[4]_i_3_n_0 ;
  wire [4:0]r_SPI_Clk_Edges_reg;
  wire r_SPI_Clk_i_1_n_0;
  wire \r_TX_Bit_Count[0]_i_1_n_0 ;
  wire \r_TX_Bit_Count[1]_i_1_n_0 ;
  wire \r_TX_Bit_Count[2]_i_1_n_0 ;
  wire \r_TX_Bit_Count_reg_n_0_[0] ;
  wire \r_TX_Bit_Count_reg_n_0_[1] ;
  wire \r_TX_Bit_Count_reg_n_0_[2] ;
  wire [7:7]r_TX_Byte;
  wire [3:0]\r_TX_Byte_reg[7]_0 ;
  wire \r_TX_Byte_reg_n_0_[0] ;
  wire \r_TX_Byte_reg_n_0_[1] ;
  wire \r_TX_Byte_reg_n_0_[6] ;
  wire [1:0]r_TX_Count;
  wire r_TX_Count_1;
  wire r_TX_DV;
  wire r_Trailing_Edge3_out;
  wire r_Trailing_Edge_reg_n_0;
  wire r_prev_btnL;
  wire r_prev_btnU;
  wire read_light_intensity_flag;
  wire [0:0]read_light_intensity_flag_reg;
  wire [1:0]w_Master_RX_Count;
  wire w_Master_RX_DV;
  wire w_Master_Ready;

  LUT5 #(
    .INIT(32'hF0FFF010)) 
    \FSM_onehot_r_SM_CS[0]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_r_SM_CS_reg[2] ),
        .I3(r_CS_n),
        .I4(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .O(\r_CS_Inactive_Count_reg[3] ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \FSM_onehot_r_SM_CS[1]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I2(Q[3]),
        .I3(\FSM_onehot_r_SM_CS_reg[2] ),
        .I4(r_CS_n),
        .I5(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .O(\FSM_onehot_r_SM_CS_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAFE00)) 
    \FSM_onehot_r_SM_CS[2]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I2(Q[3]),
        .I3(\FSM_onehot_r_SM_CS_reg[2] ),
        .I4(r_CS_n),
        .O(\FSM_onehot_r_SM_CS_reg[1] ));
  LUT6 #(
    .INIT(64'h80FF808080808080)) 
    \FSM_onehot_r_SM_CS[2]_i_3 
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I1(r_CS_n_reg),
        .I2(r_Master_TX_DV),
        .I3(r_CS_n_reg_0),
        .I4(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I5(w_Master_Ready),
        .O(r_CS_n));
  LUT5 #(
    .INIT(32'h00000004)) 
    o_RX_DV_i_1
       (.I0(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I1(r_Leading_Edge),
        .I2(w_Master_Ready),
        .I3(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I4(\r_RX_Bit_Count_reg_n_0_[0] ),
        .O(o_RX_DV5_out));
  FDCE #(
    .INIT(1'b0)) 
    o_RX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(o_RX_DV5_out),
        .Q(w_Master_RX_DV));
  FDCE #(
    .INIT(1'b0)) 
    o_SPI_Clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_SPI_Clk),
        .Q(JB_OBUF[0]));
  LUT3 #(
    .INIT(8'h32)) 
    o_SPI_MOSI_i_1
       (.I0(r_TX_DV),
        .I1(w_Master_Ready),
        .I2(r_Trailing_Edge_reg_n_0),
        .O(o_SPI_MOSI1_out));
  LUT4 #(
    .INIT(16'hFEEE)) 
    o_SPI_MOSI_i_2
       (.I0(o_SPI_MOSI_i_3_n_0),
        .I1(o_SPI_MOSI_i_4_n_0),
        .I2(r_TX_DV),
        .I3(r_TX_Byte),
        .O(o_SPI_MOSI_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000880880008000)) 
    o_SPI_MOSI_i_3
       (.I0(\r_TX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_TX_Bit_Count_reg_n_0_[2] ),
        .I2(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I3(r_TX_Byte),
        .I4(r_TX_DV),
        .I5(\r_TX_Byte_reg_n_0_[6] ),
        .O(o_SPI_MOSI_i_3_n_0));
  LUT6 #(
    .INIT(64'h0011001000000010)) 
    o_SPI_MOSI_i_4
       (.I0(r_TX_DV),
        .I1(\r_TX_Bit_Count_reg_n_0_[2] ),
        .I2(\r_TX_Byte_reg_n_0_[0] ),
        .I3(\r_TX_Bit_Count_reg_n_0_[1] ),
        .I4(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I5(\r_TX_Byte_reg_n_0_[1] ),
        .O(o_SPI_MOSI_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_SPI_MOSI_reg
       (.C(clk_IBUF_BUFG),
        .CE(o_SPI_MOSI1_out),
        .CLR(btnC_IBUF),
        .D(o_SPI_MOSI_i_2_n_0),
        .Q(JB_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_TX_Ready_i_1
       (.I0(r_SPI_Clk_Edges_reg[4]),
        .I1(r_SPI_Clk_Edges_reg[2]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .I3(r_SPI_Clk_Edges_reg[1]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .I5(r_Master_TX_DV),
        .O(o_TX_Ready8_out));
  FDCE #(
    .INIT(1'b0)) 
    o_TX_Ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(o_TX_Ready8_out),
        .Q(w_Master_Ready));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \r_CS_Inactive_Count[3]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\r_CS_Inactive_Count[3]_i_3_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h0008)) 
    \r_CS_Inactive_Count[3]_i_3 
       (.I0(w_Master_Ready),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I2(r_TX_Count[1]),
        .I3(r_TX_Count[0]),
        .O(\r_CS_Inactive_Count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFF4C4C4C4C4C4C)) 
    r_CS_n_i_1
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I1(r_CS_n_reg),
        .I2(r_Master_TX_DV),
        .I3(r_CS_n_reg_0),
        .I4(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I5(w_Master_Ready),
        .O(\FSM_onehot_r_SM_CS_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    r_Leading_Edge_i_1
       (.I0(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I3(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .O(r_Leading_Edge7_out));
  FDCE #(
    .INIT(1'b0)) 
    r_Leading_Edge_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_Leading_Edge7_out),
        .Q(r_Leading_Edge));
  LUT4 #(
    .INIT(16'hFFBA)) 
    \r_Master_TX_Byte[0]_i_1 
       (.I0(\r_Master_TX_Byte_reg[0] ),
        .I1(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I2(o_TX_Ready_reg_0),
        .I3(\r_Master_TX_Byte_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \r_Master_TX_Byte[1]_i_1 
       (.I0(btnU_IBUF),
        .I1(btnD_IBUF),
        .I2(btnL_IBUF),
        .I3(r_prev_btnL),
        .I4(\r_Master_TX_Byte[6]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \r_Master_TX_Byte[6]_i_1 
       (.I0(btnL_IBUF),
        .I1(btnD_IBUF),
        .I2(btnU_IBUF),
        .I3(r_prev_btnU),
        .I4(\r_Master_TX_Byte[6]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00000045)) 
    \r_Master_TX_Byte[6]_i_2 
       (.I0(read_light_intensity_flag),
        .I1(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I2(o_TX_Ready_reg_0),
        .I3(r_Master_TX_DV),
        .I4(btnR_IBUF),
        .O(\r_Master_TX_Byte[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0E0E000E)) 
    \r_Master_TX_Byte[7]_i_1 
       (.I0(read_light_intensity_flag),
        .I1(\r_Master_TX_Count_reg[0] ),
        .I2(r_Master_TX_DV),
        .I3(o_TX_Ready_reg_0),
        .I4(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .O(read_light_intensity_flag_reg));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \r_Master_TX_Byte[7]_i_2 
       (.I0(\r_Master_TX_Byte_reg[7] ),
        .I1(btnD_IBUF),
        .I2(btnU_IBUF),
        .I3(btnR_IBUF),
        .I4(\r_Master_TX_Byte[7]_i_6_n_0 ),
        .I5(read_light_intensity_flag),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h777F)) 
    \r_Master_TX_Byte[7]_i_4 
       (.I0(w_Master_Ready),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I2(r_TX_Count[1]),
        .I3(r_TX_Count[0]),
        .O(o_TX_Ready_reg_0));
  LUT6 #(
    .INIT(64'h00000000FEAAAAAA)) 
    \r_Master_TX_Byte[7]_i_6 
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I1(r_TX_Count[0]),
        .I2(r_TX_Count[1]),
        .I3(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I4(w_Master_Ready),
        .I5(r_Master_TX_DV),
        .O(\r_Master_TX_Byte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002202)) 
    \r_Master_TX_Count[0]_i_1 
       (.I0(\r_Master_TX_Count_reg[0] ),
        .I1(r_Master_TX_DV),
        .I2(o_TX_Ready_reg_0),
        .I3(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I4(read_light_intensity_flag),
        .I5(\r_Master_TX_Count_reg[0]_0 ),
        .O(r_Master_TX_DV_reg));
  LUT5 #(
    .INIT(32'hFFFFBF00)) 
    \r_Master_TX_Count[1]_i_1 
       (.I0(btnD_IBUF),
        .I1(\r_Master_TX_Count[1]_i_2_n_0 ),
        .I2(\r_Master_TX_Count_reg[1]_1 ),
        .I3(\r_Master_TX_Count_reg[1]_0 ),
        .I4(D[3]),
        .O(\r_Master_TX_Count_reg[1] ));
  LUT4 #(
    .INIT(16'h0051)) 
    \r_Master_TX_Count[1]_i_2 
       (.I0(r_Master_TX_DV),
        .I1(o_TX_Ready_reg_0),
        .I2(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I3(read_light_intensity_flag),
        .O(\r_Master_TX_Count[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \r_RX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready),
        .I1(r_Leading_Edge),
        .I2(\r_RX_Bit_Count_reg_n_0_[0] ),
        .O(\r_RX_Bit_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFDC)) 
    \r_RX_Bit_Count[1]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(w_Master_Ready),
        .I2(r_Leading_Edge),
        .I3(\r_RX_Bit_Count_reg_n_0_[1] ),
        .O(\r_RX_Bit_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFFF1F0)) 
    \r_RX_Bit_Count[2]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I2(w_Master_Ready),
        .I3(r_Leading_Edge),
        .I4(\r_RX_Bit_Count_reg_n_0_[2] ),
        .O(\r_RX_Bit_Count[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \r_RX_Bit_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_RX_Bit_Count[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_RX_Bit_Count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \r_RX_Bit_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_RX_Bit_Count[1]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_RX_Bit_Count_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \r_RX_Bit_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_RX_Bit_Count[2]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_RX_Bit_Count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r_SPI_Clk_Count[0]_i_1 
       (.I0(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .O(\r_SPI_Clk_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_SPI_Clk_Count[1]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I1(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .O(\r_SPI_Clk_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \r_SPI_Clk_Count[2]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I2(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .I3(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .O(\r_SPI_Clk_Count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \r_SPI_Clk_Count[2]_i_2 
       (.I0(r_Master_TX_DV),
        .I1(r_SPI_Clk_Edges_reg[4]),
        .I2(r_SPI_Clk_Edges_reg[2]),
        .I3(r_SPI_Clk_Edges_reg[0]),
        .I4(r_SPI_Clk_Edges_reg[1]),
        .I5(r_SPI_Clk_Edges_reg[3]),
        .O(\r_SPI_Clk_Count[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_SPI_Clk_Count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[1]_i_1_n_0 ),
        .Q(\r_SPI_Clk_Count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[2]_i_1_n_0 ),
        .Q(\r_SPI_Clk_Count_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_SPI_Clk_Edges[0]_i_1 
       (.I0(r_SPI_Clk_Edges_reg[0]),
        .I1(r_Master_TX_DV),
        .O(\r_SPI_Clk_Edges[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \r_SPI_Clk_Edges[1]_i_1 
       (.I0(r_Master_TX_DV),
        .I1(r_SPI_Clk_Edges_reg[0]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .O(p_0_in[1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \r_SPI_Clk_Edges[2]_i_1 
       (.I0(r_Master_TX_DV),
        .I1(r_SPI_Clk_Edges_reg[1]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .I3(r_SPI_Clk_Edges_reg[2]),
        .O(p_0_in[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55540001)) 
    \r_SPI_Clk_Edges[3]_i_1 
       (.I0(r_Master_TX_DV),
        .I1(r_SPI_Clk_Edges_reg[2]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .I3(r_SPI_Clk_Edges_reg[1]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \r_SPI_Clk_Edges[4]_i_1 
       (.I0(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I2(\r_SPI_Clk_Edges[4]_i_3_n_0 ),
        .I3(r_Master_TX_DV),
        .O(\r_SPI_Clk_Edges[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
    \r_SPI_Clk_Edges[4]_i_2 
       (.I0(r_SPI_Clk_Edges_reg[3]),
        .I1(r_SPI_Clk_Edges_reg[1]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .I3(r_SPI_Clk_Edges_reg[2]),
        .I4(r_SPI_Clk_Edges_reg[4]),
        .I5(r_Master_TX_DV),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_SPI_Clk_Edges[4]_i_3 
       (.I0(r_SPI_Clk_Edges_reg[3]),
        .I1(r_SPI_Clk_Edges_reg[1]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .I3(r_SPI_Clk_Edges_reg[2]),
        .I4(r_SPI_Clk_Edges_reg[4]),
        .O(\r_SPI_Clk_Edges[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Edges[0]_i_1_n_0 ),
        .Q(r_SPI_Clk_Edges_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[1]),
        .Q(r_SPI_Clk_Edges_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[2]),
        .Q(r_SPI_Clk_Edges_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[3]),
        .Q(r_SPI_Clk_Edges_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[4]),
        .Q(r_SPI_Clk_Edges_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    r_SPI_Clk_i_1
       (.I0(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I2(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .I3(r_SPI_Clk),
        .O(r_SPI_Clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_SPI_Clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_SPI_Clk_i_1_n_0),
        .Q(r_SPI_Clk));
  (* \PinAttr:I3:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hABBA)) 
    \r_TX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready),
        .I1(r_TX_DV),
        .I2(r_Trailing_Edge_reg_n_0),
        .I3(\r_TX_Bit_Count_reg_n_0_[0] ),
        .O(\r_TX_Bit_Count[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFEFFFDFC)) 
    \r_TX_Bit_Count[1]_i_1 
       (.I0(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I1(w_Master_Ready),
        .I2(r_TX_DV),
        .I3(r_Trailing_Edge_reg_n_0),
        .I4(\r_TX_Bit_Count_reg_n_0_[1] ),
        .O(\r_TX_Bit_Count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFF1FFF0)) 
    \r_TX_Bit_Count[2]_i_1 
       (.I0(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I1(\r_TX_Bit_Count_reg_n_0_[1] ),
        .I2(w_Master_Ready),
        .I3(r_TX_DV),
        .I4(r_Trailing_Edge_reg_n_0),
        .I5(\r_TX_Bit_Count_reg_n_0_[2] ),
        .O(\r_TX_Bit_Count[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \r_TX_Bit_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_TX_Bit_Count[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_TX_Bit_Count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \r_TX_Bit_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_TX_Bit_Count[1]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_TX_Bit_Count_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \r_TX_Bit_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_TX_Bit_Count[2]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\r_TX_Bit_Count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_DV),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [0]),
        .Q(\r_TX_Byte_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_DV),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [1]),
        .Q(\r_TX_Byte_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_DV),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [2]),
        .Q(\r_TX_Byte_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_DV),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [3]),
        .Q(r_TX_Byte));
  LUT4 #(
    .INIT(16'h8F00)) 
    \r_TX_Count[0]_i_2 
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_0 ),
        .I1(r_CS_n_reg),
        .I2(o_TX_Ready_reg_0),
        .I3(r_Master_TX_DV),
        .O(r_TX_Count_1));
  FDCE #(
    .INIT(1'b0)) 
    r_TX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_Master_TX_DV),
        .Q(r_TX_DV));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    r_Trailing_Edge_i_1
       (.I0(\r_SPI_Clk_Count_reg_n_0_[0] ),
        .I1(\r_SPI_Clk_Count_reg_n_0_[1] ),
        .I2(\r_SPI_Clk_Count_reg_n_0_[2] ),
        .I3(\r_SPI_Clk_Count[2]_i_2_n_0 ),
        .O(r_Trailing_Edge3_out));
  FDCE #(
    .INIT(1'b0)) 
    r_Trailing_Edge_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_Trailing_Edge3_out),
        .Q(r_Trailing_Edge_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF6FF60000)) 
    read_light_intensity_flag_i_1
       (.I0(w_Master_RX_Count[1]),
        .I1(\r_Master_TX_Count_reg[1]_0 ),
        .I2(w_Master_RX_Count[0]),
        .I3(\r_Master_TX_Count_reg[0]_0 ),
        .I4(read_light_intensity_flag),
        .I5(D[3]),
        .O(\o_RX_Count_reg[1] ));
endmodule

module SPI_Master_With_Single_CS
   (JB_OBUF,
    E,
    D,
    r_Master_TX_DV_reg,
    \o_RX_Count_reg[1]_0 ,
    \r_Master_TX_Count_reg[1] ,
    clk_IBUF_BUFG,
    btnC_IBUF,
    r_Master_TX_DV,
    read_light_intensity_flag,
    \r_Master_TX_Count_reg[0] ,
    btnU_IBUF,
    btnD_IBUF,
    btnL_IBUF,
    r_prev_btnL,
    r_prev_btnU,
    \r_Master_TX_Byte_reg[7] ,
    btnR_IBUF,
    \r_Master_TX_Count_reg[0]_0 ,
    \r_Master_TX_Count_reg[1]_0 ,
    \r_Master_TX_Byte_reg[0] ,
    \r_Master_TX_Byte_reg[0]_0 ,
    \r_Master_TX_Count_reg[1]_1 ,
    Q);
  output [2:0]JB_OBUF;
  output [0:0]E;
  output [3:0]D;
  output r_Master_TX_DV_reg;
  output \o_RX_Count_reg[1]_0 ;
  output \r_Master_TX_Count_reg[1] ;
  input clk_IBUF_BUFG;
  input btnC_IBUF;
  input r_Master_TX_DV;
  input read_light_intensity_flag;
  input \r_Master_TX_Count_reg[0] ;
  input btnU_IBUF;
  input btnD_IBUF;
  input btnL_IBUF;
  input r_prev_btnL;
  input r_prev_btnU;
  input \r_Master_TX_Byte_reg[7] ;
  input btnR_IBUF;
  input \r_Master_TX_Count_reg[0]_0 ;
  input \r_Master_TX_Count_reg[1]_0 ;
  input \r_Master_TX_Byte_reg[0] ;
  input \r_Master_TX_Byte_reg[0]_0 ;
  input \r_Master_TX_Count_reg[1]_1 ;
  input [3:0]Q;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_SM_CS[2]_i_2_n_0 ;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[0] ;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[1] ;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[2] ;
  wire [2:0]JB_OBUF;
  wire [3:0]Q;
  wire SPI_Master_Inst_n_12;
  wire SPI_Master_Inst_n_15;
  wire SPI_Master_Inst_n_16;
  wire SPI_Master_Inst_n_17;
  wire SPI_Master_Inst_n_5;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire btnU_IBUF;
  wire clk_IBUF_BUFG;
  wire \o_RX_Count[0]_i_1_n_0 ;
  wire \o_RX_Count[1]_i_1_n_0 ;
  wire \o_RX_Count_reg[1]_0 ;
  wire [3:0]r_CS_Inactive_Count;
  wire \r_CS_Inactive_Count[0]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[1]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[2]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[3]_i_2_n_0 ;
  wire r_CS_Inactive_Count_0;
  wire r_CS_n_i_2_n_0;
  wire \r_Master_TX_Byte_reg[0] ;
  wire \r_Master_TX_Byte_reg[0]_0 ;
  wire \r_Master_TX_Byte_reg[7] ;
  wire \r_Master_TX_Count_reg[0] ;
  wire \r_Master_TX_Count_reg[0]_0 ;
  wire \r_Master_TX_Count_reg[1] ;
  wire \r_Master_TX_Count_reg[1]_0 ;
  wire \r_Master_TX_Count_reg[1]_1 ;
  wire r_Master_TX_DV;
  wire r_Master_TX_DV_reg;
  wire [1:0]r_TX_Count;
  wire \r_TX_Count[0]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_2_n_0 ;
  wire r_TX_Count_1;
  wire r_prev_btnL;
  wire r_prev_btnU;
  wire read_light_intensity_flag;
  wire [1:0]w_Master_RX_Count;
  wire w_Master_RX_DV;

  (* \PinAttr:I1:HOLD_DETOUR  = "184" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_r_SM_CS[2]_i_2 
       (.I0(r_CS_Inactive_Count[1]),
        .I1(r_CS_Inactive_Count[0]),
        .I2(r_CS_Inactive_Count[2]),
        .O(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_SM_CS_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_17),
        .PRE(btnC_IBUF),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(SPI_Master_Inst_n_16),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(SPI_Master_Inst_n_15),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[2] ));
  SPI_Master SPI_Master_Inst
       (.D(D),
        .E(r_CS_Inactive_Count_0),
        .\FSM_onehot_r_SM_CS_reg[0] (SPI_Master_Inst_n_12),
        .\FSM_onehot_r_SM_CS_reg[0]_0 (SPI_Master_Inst_n_16),
        .\FSM_onehot_r_SM_CS_reg[1] (SPI_Master_Inst_n_15),
        .\FSM_onehot_r_SM_CS_reg[1]_0 (\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .\FSM_onehot_r_SM_CS_reg[2] (\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .\FSM_onehot_r_SM_CS_reg[2]_0 (\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .\FSM_onehot_r_SM_CS_reg[2]_1 (\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .JB_OBUF(JB_OBUF[1:0]),
        .Q(r_CS_Inactive_Count),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\o_RX_Count_reg[1] (\o_RX_Count_reg[1]_0 ),
        .o_TX_Ready_reg_0(SPI_Master_Inst_n_5),
        .\r_CS_Inactive_Count_reg[3] (SPI_Master_Inst_n_17),
        .r_CS_n_reg(JB_OBUF[2]),
        .r_CS_n_reg_0(r_CS_n_i_2_n_0),
        .\r_Master_TX_Byte_reg[0] (\r_Master_TX_Byte_reg[0] ),
        .\r_Master_TX_Byte_reg[0]_0 (\r_Master_TX_Byte_reg[0]_0 ),
        .\r_Master_TX_Byte_reg[7] (\r_Master_TX_Byte_reg[7] ),
        .\r_Master_TX_Count_reg[0] (\r_Master_TX_Count_reg[0] ),
        .\r_Master_TX_Count_reg[0]_0 (\r_Master_TX_Count_reg[0]_0 ),
        .\r_Master_TX_Count_reg[1] (\r_Master_TX_Count_reg[1] ),
        .\r_Master_TX_Count_reg[1]_0 (\r_Master_TX_Count_reg[1]_0 ),
        .\r_Master_TX_Count_reg[1]_1 (\r_Master_TX_Count_reg[1]_1 ),
        .r_Master_TX_DV(r_Master_TX_DV),
        .r_Master_TX_DV_reg(r_Master_TX_DV_reg),
        .\r_TX_Byte_reg[7]_0 (Q),
        .r_TX_Count(r_TX_Count),
        .r_TX_Count_1(r_TX_Count_1),
        .r_prev_btnL(r_prev_btnL),
        .r_prev_btnU(r_prev_btnU),
        .read_light_intensity_flag(read_light_intensity_flag),
        .read_light_intensity_flag_reg(E),
        .w_Master_RX_Count(w_Master_RX_Count),
        .w_Master_RX_DV(w_Master_RX_DV));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \o_RX_Count[0]_i_1 
       (.I0(w_Master_RX_Count[0]),
        .I1(w_Master_RX_DV),
        .I2(JB_OBUF[2]),
        .O(\o_RX_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \o_RX_Count[1]_i_1 
       (.I0(w_Master_RX_Count[1]),
        .I1(w_Master_RX_DV),
        .I2(w_Master_RX_Count[0]),
        .I3(JB_OBUF[2]),
        .O(\o_RX_Count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_RX_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_RX_Count[0]_i_1_n_0 ),
        .Q(w_Master_RX_Count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_RX_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_RX_Count[1]_i_1_n_0 ),
        .Q(w_Master_RX_Count[1]),
        .R(1'b0));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_CS_Inactive_Count[0]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .I1(r_CS_Inactive_Count[0]),
        .O(\r_CS_Inactive_Count[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "184" *) 
  LUT4 #(
    .INIT(16'hEAAE)) 
    \r_CS_Inactive_Count[1]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .I2(r_CS_Inactive_Count[0]),
        .I3(r_CS_Inactive_Count[1]),
        .O(\r_CS_Inactive_Count[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \r_CS_Inactive_Count[2]_i_1 
       (.I0(r_CS_Inactive_Count[1]),
        .I1(r_CS_Inactive_Count[0]),
        .I2(r_CS_Inactive_Count[2]),
        .I3(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .O(\r_CS_Inactive_Count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABAAAAAAAA)) 
    \r_CS_Inactive_Count[3]_i_2 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I1(r_CS_Inactive_Count[2]),
        .I2(r_CS_Inactive_Count[0]),
        .I3(r_CS_Inactive_Count[1]),
        .I4(r_CS_Inactive_Count[3]),
        .I5(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .O(\r_CS_Inactive_Count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_CS_Inactive_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_CS_Inactive_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_CS_Inactive_Count[0]_i_1_n_0 ),
        .Q(r_CS_Inactive_Count[0]));
  FDPE #(
    .INIT(1'b1)) 
    \r_CS_Inactive_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_CS_Inactive_Count_0),
        .D(\r_CS_Inactive_Count[1]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(r_CS_Inactive_Count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_CS_Inactive_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_CS_Inactive_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_CS_Inactive_Count[2]_i_1_n_0 ),
        .Q(r_CS_Inactive_Count[2]));
  FDPE #(
    .INIT(1'b1)) 
    \r_CS_Inactive_Count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_CS_Inactive_Count_0),
        .D(\r_CS_Inactive_Count[3]_i_2_n_0 ),
        .PRE(btnC_IBUF),
        .Q(r_CS_Inactive_Count[3]));
  LUT2 #(
    .INIT(4'hE)) 
    r_CS_n_i_2
       (.I0(r_TX_Count[0]),
        .I1(r_TX_Count[1]),
        .O(r_CS_n_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    r_CS_n_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_12),
        .PRE(btnC_IBUF),
        .Q(JB_OBUF[2]));
  LUT5 #(
    .INIT(32'h44FFF400)) 
    \r_TX_Count[0]_i_1 
       (.I0(\r_Master_TX_Count_reg[0]_0 ),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I3(r_TX_Count_1),
        .I4(r_TX_Count[0]),
        .O(\r_TX_Count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAFFFF80AA0000)) 
    \r_TX_Count[1]_i_1 
       (.I0(\r_TX_Count[1]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I2(JB_OBUF[2]),
        .I3(SPI_Master_Inst_n_5),
        .I4(r_Master_TX_DV),
        .I5(r_TX_Count[1]),
        .O(\r_TX_Count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8282FF82828282)) 
    \r_TX_Count[1]_i_2 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I1(\r_Master_TX_Count_reg[1]_0 ),
        .I2(\r_Master_TX_Count_reg[0]_0 ),
        .I3(r_TX_Count[0]),
        .I4(r_TX_Count[1]),
        .I5(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .O(\r_TX_Count[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_TX_Count[0]_i_1_n_0 ),
        .Q(r_TX_Count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_TX_Count[1]_i_1_n_0 ),
        .Q(r_TX_Count[1]));
endmodule

module seg_disp
   (Q,
    an_OBUF,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output [2:0]Q;
  output [3:0]an_OBUF;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;

  wire \FSM_sequential_i[0]_i_1_n_0 ;
  wire \FSM_sequential_i[1]_i_1_n_0 ;
  wire \FSM_sequential_i[2]_i_1_n_0 ;
  wire \FSM_sequential_i[3]_i_1_n_0 ;
  wire \FSM_sequential_r_an[0]_i_1_n_0 ;
  wire \FSM_sequential_r_an[1]_i_1_n_0 ;
  wire [2:0]Q;
  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]i;
  wire [2:0]r_an;
  wire \r_disp_1[4]_i_1_n_0 ;
  wire \r_disp_1[5]_i_1_n_0 ;
  wire \r_disp_1[6]_i_1_n_0 ;
  wire \r_disp_1_reg_n_0_[4] ;
  wire \r_disp_1_reg_n_0_[5] ;
  wire \r_disp_1_reg_n_0_[6] ;
  wire \r_disp_2[4]_i_1_n_0 ;
  wire \r_disp_2[5]_i_1_n_0 ;
  wire \r_disp_2[6]_i_1_n_0 ;
  wire \r_disp_2_reg_n_0_[4] ;
  wire \r_disp_2_reg_n_0_[5] ;
  wire \r_disp_2_reg_n_0_[6] ;
  wire \r_disp_3[4]_i_1_n_0 ;
  wire \r_disp_3[5]_i_1_n_0 ;
  wire \r_disp_3[6]_i_1_n_0 ;
  wire \r_disp_3_reg_n_0_[4] ;
  wire \r_disp_3_reg_n_0_[5] ;
  wire \r_disp_3_reg_n_0_[6] ;
  wire \r_disp_4[4]_i_1_n_0 ;
  wire \r_disp_4[5]_i_1_n_0 ;
  wire \r_disp_4[6]_i_1_n_0 ;
  wire \r_disp_4_reg_n_0_[4] ;
  wire \r_disp_4_reg_n_0_[5] ;
  wire \r_disp_4_reg_n_0_[6] ;
  wire r_seg;
  wire \r_seg[4]_i_1_n_0 ;
  wire \r_seg[4]_i_2_n_0 ;
  wire \r_seg[5]_i_1_n_0 ;
  wire \r_seg[5]_i_2_n_0 ;
  wire \r_seg[6]_i_2_n_0 ;
  wire \r_seg[6]_i_3_n_0 ;
  wire \r_seg_reg[5]_lopt_replica_1 ;
  wire \r_seg_reg[5]_lopt_replica_2_1 ;
  wire \r_seg_reg[5]_lopt_replica_3_1 ;
  wire \r_seg_reg[5]_lopt_replica_4_1 ;

  assign lopt = \r_seg_reg[5]_lopt_replica_1 ;
  assign lopt_1 = \r_seg_reg[5]_lopt_replica_2_1 ;
  assign lopt_2 = \r_seg_reg[5]_lopt_replica_3_1 ;
  assign lopt_3 = \r_seg_reg[5]_lopt_replica_4_1 ;
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_i[0]_i_1 
       (.I0(i[0]),
        .O(\FSM_sequential_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_i[1]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\FSM_sequential_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_i[2]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\FSM_sequential_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_i[3]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\FSM_sequential_i[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(i[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(i[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(i[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_i[3]_i_1_n_0 ),
        .Q(i[3]),
        .R(i[3]));
  LUT2 #(
    .INIT(4'hD)) 
    \FSM_sequential_r_an[0]_i_1 
       (.I0(r_an[0]),
        .I1(r_an[2]),
        .O(\FSM_sequential_r_an[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_r_an[1]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[0]),
        .I2(r_an[2]),
        .O(\FSM_sequential_r_an[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:001,iSTATE3:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_r_an[0]_i_1_n_0 ),
        .Q(r_an[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:001,iSTATE3:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_r_an[1]_i_1_n_0 ),
        .Q(r_an[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:001,iSTATE3:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_an_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(an_OBUF[1]),
        .Q(r_an[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .O(an_OBUF[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(r_an[2]),
        .I1(r_an[0]),
        .I2(r_an[1]),
        .O(an_OBUF[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(r_an[2]),
        .I1(r_an[0]),
        .I2(r_an[1]),
        .O(an_OBUF[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(r_an[0]),
        .I1(r_an[2]),
        .I2(r_an[1]),
        .O(an_OBUF[3]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \r_disp_1[4]_i_1 
       (.I0(\r_disp_1_reg_n_0_[4] ),
        .I1(i[3]),
        .I2(i[2]),
        .I3(i[0]),
        .I4(i[1]),
        .O(\r_disp_1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \r_disp_1[5]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(\r_disp_1_reg_n_0_[5] ),
        .O(\r_disp_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \r_disp_1[6]_i_1 
       (.I0(\r_disp_1_reg_n_0_[6] ),
        .I1(i[3]),
        .I2(i[2]),
        .I3(i[0]),
        .I4(i[1]),
        .O(\r_disp_1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_1[4]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_1[5]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_1[6]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[6] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \r_disp_2[4]_i_1 
       (.I0(\r_disp_2_reg_n_0_[4] ),
        .I1(i[3]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .O(\r_disp_2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \r_disp_2[5]_i_1 
       (.I0(i[3]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(\r_disp_2_reg_n_0_[5] ),
        .O(\r_disp_2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \r_disp_2[6]_i_1 
       (.I0(\r_disp_2_reg_n_0_[6] ),
        .I1(i[3]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .O(\r_disp_2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_2[4]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_2[5]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_2[6]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[6] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \r_disp_3[4]_i_1 
       (.I0(\r_disp_3_reg_n_0_[4] ),
        .I1(i[3]),
        .I2(i[2]),
        .I3(i[1]),
        .I4(i[0]),
        .O(\r_disp_3[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \r_disp_3[5]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\r_disp_3_reg_n_0_[5] ),
        .O(\r_disp_3[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \r_disp_3[6]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\r_disp_3_reg_n_0_[6] ),
        .O(\r_disp_3[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_3[4]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_3[5]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_3[6]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[6] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \r_disp_4[4]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[3]),
        .I4(\r_disp_4_reg_n_0_[4] ),
        .O(\r_disp_4[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \r_disp_4[5]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[3]),
        .I4(\r_disp_4_reg_n_0_[5] ),
        .O(\r_disp_4[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \r_disp_4[6]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[3]),
        .I4(\r_disp_4_reg_n_0_[6] ),
        .O(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_4[4]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_4[5]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_4[6]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[6] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[4]_i_1 
       (.I0(\r_disp_3_reg_n_0_[4] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[4] ),
        .I3(r_an[1]),
        .I4(\r_seg[4]_i_2_n_0 ),
        .O(\r_seg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[4]_i_2 
       (.I0(\r_disp_4_reg_n_0_[4] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[4] ),
        .O(\r_seg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[5]_i_1 
       (.I0(\r_disp_3_reg_n_0_[5] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[5] ),
        .I3(r_an[1]),
        .I4(\r_seg[5]_i_2_n_0 ),
        .O(\r_seg[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[5]_i_2 
       (.I0(\r_disp_4_reg_n_0_[5] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[5] ),
        .O(\r_seg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \r_seg[6]_i_1 
       (.I0(r_an[0]),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .O(r_seg));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[6]_i_2 
       (.I0(\r_disp_3_reg_n_0_[6] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[6] ),
        .I3(r_an[1]),
        .I4(\r_seg[6]_i_3_n_0 ),
        .O(\r_seg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[6]_i_3 
       (.I0(\r_disp_4_reg_n_0_[6] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[6] ),
        .O(\r_seg[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[4]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(\r_seg_reg[5]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5]_lopt_replica_2 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(\r_seg_reg[5]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5]_lopt_replica_3 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(\r_seg_reg[5]_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5]_lopt_replica_4 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(\r_seg_reg[5]_lopt_replica_4_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[6]_i_2_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
