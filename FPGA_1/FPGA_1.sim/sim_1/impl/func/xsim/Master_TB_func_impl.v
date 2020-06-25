// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Jun 15 20:22:03 2020
// Host        : DESKTOP-RQKI1H5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               J:/Uczelnia/MGR/Embedded1/FPGA_1/FPGA_1.sim/sim_1/impl/func/xsim/Master_TB_func_impl.v
// Design      : Master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CLKS_PER_HALF_BIT = "24" *) (* CS_INACTIVE_CLKS = "10" *) (* ECO_CHECKSUM = "c351fa2f" *) 
(* MAX_BYTES_PER_CS = "3" *) (* SPI_MODE = "0" *) (* read_light_intensity = "8'b10000000" *) 
(* read_light_status = "8'b01000000" *) (* turn_off = "8'b00000010" *) (* turn_on = "8'b00000001" *) 
(* wait_for_read = "8'b00000000" *) 
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
    JB,
    MISO);
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
  output [2:0]JB;
  input MISO;

  wire [2:0]JB;
  wire [2:0]JB_OBUF;
  wire MISO;
  wire MISO_IBUF;
  wire SPI_n_10;
  wire SPI_n_12;
  wire SPI_n_14;
  wire SPI_n_3;
  wire SPI_n_7;
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
  wire [7:0]o_RX_Byte;
  wire r_Master_TX_Byte;
  wire \r_Master_TX_Byte[6]_i_3_n_0 ;
  wire \r_Master_TX_Byte[7]_i_10_n_0 ;
  wire \r_Master_TX_Byte[7]_i_11_n_0 ;
  wire \r_Master_TX_Byte[7]_i_6_n_0 ;
  wire \r_Master_TX_Byte[7]_i_8_n_0 ;
  wire \r_Master_TX_Byte[7]_i_9_n_0 ;
  wire \r_Master_TX_Byte_reg_n_0_[0] ;
  wire \r_Master_TX_Byte_reg_n_0_[1] ;
  wire \r_Master_TX_Byte_reg_n_0_[6] ;
  wire \r_Master_TX_Byte_reg_n_0_[7] ;
  wire r_Master_TX_Count;
  wire \r_Master_TX_Count_reg_n_0_[0] ;
  wire \r_Master_TX_Count_reg_n_0_[1] ;
  wire r_Master_TX_DV0;
  wire r_Master_TX_DV18_out;
  wire r_Master_TX_DV_reg_n_0;
  wire [7:0]r_h_num_to_disp;
  wire r_hold_cs;
  wire \r_hold_cs[0]_i_3_n_0 ;
  wire [15:0]r_hold_cs_reg;
  wire \r_hold_cs_reg[0]_i_2_n_0 ;
  wire \r_hold_cs_reg[0]_i_2_n_4 ;
  wire \r_hold_cs_reg[0]_i_2_n_5 ;
  wire \r_hold_cs_reg[0]_i_2_n_6 ;
  wire \r_hold_cs_reg[0]_i_2_n_7 ;
  wire \r_hold_cs_reg[12]_i_1_n_4 ;
  wire \r_hold_cs_reg[12]_i_1_n_5 ;
  wire \r_hold_cs_reg[12]_i_1_n_6 ;
  wire \r_hold_cs_reg[12]_i_1_n_7 ;
  wire \r_hold_cs_reg[4]_i_1_n_0 ;
  wire \r_hold_cs_reg[4]_i_1_n_4 ;
  wire \r_hold_cs_reg[4]_i_1_n_5 ;
  wire \r_hold_cs_reg[4]_i_1_n_6 ;
  wire \r_hold_cs_reg[4]_i_1_n_7 ;
  wire \r_hold_cs_reg[8]_i_1_n_0 ;
  wire \r_hold_cs_reg[8]_i_1_n_4 ;
  wire \r_hold_cs_reg[8]_i_1_n_5 ;
  wire \r_hold_cs_reg[8]_i_1_n_6 ;
  wire \r_hold_cs_reg[8]_i_1_n_7 ;
  wire [7:0]r_l_num_to_disp;
  wire r_l_num_to_disp0;
  wire r_prev_btnD;
  wire r_prev_btnL;
  wire r_prev_btnR;
  wire r_prev_btnU;
  wire read_flag;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [2:0]\NLW_r_hold_cs_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_hold_cs_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_r_hold_cs_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_r_hold_cs_reg[8]_i_1_CO_UNCONNECTED ;

  OBUF \JB_OBUF[0]_inst 
       (.I(JB_OBUF[0]),
        .O(JB[0]));
  OBUF \JB_OBUF[1]_inst 
       (.I(JB_OBUF[1]),
        .O(JB[1]));
  OBUF \JB_OBUF[2]_inst 
       (.I(JB_OBUF[2]),
        .O(JB[2]));
  IBUF MISO_IBUF_inst
       (.I(MISO),
        .O(MISO_IBUF));
  SPI_Master_With_Single_CS SPI
       (.CLK(r_l_num_to_disp0),
        .D({r_Master_TX_DV18_out,SPI_n_7,SPI_n_8,SPI_n_9}),
        .E(SPI_n_3),
        .JB_OBUF(JB_OBUF),
        .Q({\r_Master_TX_Count_reg_n_0_[1] ,\r_Master_TX_Count_reg_n_0_[0] }),
        .SR(r_Master_TX_Count),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\o_RX_Byte_reg[7] (o_RX_Byte),
        .\o_RX_Byte_reg[7]_0 (MISO_IBUF),
        .\o_RX_Count_reg[1]_0 (SPI_n_10),
        .\r_Master_TX_Byte_reg[0] (\r_Master_TX_Byte[6]_i_3_n_0 ),
        .\r_Master_TX_Byte_reg[7] (\r_Master_TX_Byte[7]_i_8_n_0 ),
        .\r_Master_TX_Count_reg[0] (\r_Master_TX_Byte[7]_i_6_n_0 ),
        .r_Master_TX_DV0(r_Master_TX_DV0),
        .\r_TX_Byte_reg[0] (r_Master_TX_DV_reg_n_0),
        .\r_TX_Byte_reg[7] ({\r_Master_TX_Byte_reg_n_0_[7] ,\r_Master_TX_Byte_reg_n_0_[6] ,\r_Master_TX_Byte_reg_n_0_[1] ,\r_Master_TX_Byte_reg_n_0_[0] }),
        .\r_TX_Count_reg[1]_0 (r_Master_TX_Byte),
        .r_hold_cs(r_hold_cs),
        .r_prev_btnD(r_prev_btnD),
        .r_prev_btnL(r_prev_btnL),
        .r_prev_btnU(r_prev_btnU),
        .read_flag(read_flag),
        .read_flag_reg(SPI_n_12),
        .read_flag_reg_0(SPI_n_14));
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
       (.Q(seg_OBUF),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\r_input_num_reg[15]_0 (r_h_num_to_disp),
        .\r_input_num_reg[7]_0 (r_l_num_to_disp));
  LUT2 #(
    .INIT(4'h1)) 
    \r_Master_TX_Byte[6]_i_3 
       (.I0(btnL_IBUF),
        .I1(btnR_IBUF),
        .O(\r_Master_TX_Byte[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \r_Master_TX_Byte[7]_i_10 
       (.I0(r_hold_cs_reg[10]),
        .I1(r_hold_cs_reg[9]),
        .I2(r_hold_cs_reg[7]),
        .I3(r_hold_cs_reg[8]),
        .O(\r_Master_TX_Byte[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFF0FEF0)) 
    \r_Master_TX_Byte[7]_i_11 
       (.I0(r_hold_cs_reg[1]),
        .I1(r_hold_cs_reg[4]),
        .I2(r_hold_cs_reg[15]),
        .I3(r_hold_cs_reg[8]),
        .I4(r_hold_cs_reg[2]),
        .O(\r_Master_TX_Byte[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_Master_TX_Byte[7]_i_5 
       (.I0(\r_Master_TX_Byte[7]_i_9_n_0 ),
        .I1(\r_Master_TX_Byte[7]_i_10_n_0 ),
        .I2(r_hold_cs_reg[14]),
        .I3(r_hold_cs_reg[13]),
        .I4(r_hold_cs_reg[12]),
        .I5(r_hold_cs_reg[11]),
        .O(r_Master_TX_DV0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \r_Master_TX_Byte[7]_i_6 
       (.I0(btnR_IBUF),
        .I1(btnL_IBUF),
        .I2(r_prev_btnR),
        .I3(btnD_IBUF),
        .I4(read_flag),
        .I5(btnU_IBUF),
        .O(\r_Master_TX_Byte[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_Master_TX_Byte[7]_i_8 
       (.I0(btnU_IBUF),
        .I1(read_flag),
        .O(\r_Master_TX_Byte[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F0E0)) 
    \r_Master_TX_Byte[7]_i_9 
       (.I0(r_hold_cs_reg[6]),
        .I1(r_hold_cs_reg[3]),
        .I2(r_hold_cs_reg[8]),
        .I3(r_hold_cs_reg[0]),
        .I4(r_hold_cs_reg[5]),
        .I5(\r_Master_TX_Byte[7]_i_11_n_0 ),
        .O(\r_Master_TX_Byte[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(SPI_n_9),
        .Q(\r_Master_TX_Byte_reg_n_0_[0] ),
        .R(r_Master_TX_Count));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(SPI_n_8),
        .Q(\r_Master_TX_Byte_reg_n_0_[1] ),
        .R(r_Master_TX_Count));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(SPI_n_7),
        .Q(\r_Master_TX_Byte_reg_n_0_[6] ),
        .R(r_Master_TX_Count));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(r_Master_TX_DV18_out),
        .Q(\r_Master_TX_Byte_reg_n_0_[7] ),
        .R(r_Master_TX_Count));
  FDRE #(
    .INIT(1'b0)) 
    \r_Master_TX_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(1'b1),
        .Q(\r_Master_TX_Count_reg_n_0_[0] ),
        .R(r_Master_TX_Count));
  FDSE #(
    .INIT(1'b1)) 
    \r_Master_TX_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_Master_TX_Byte),
        .D(SPI_n_7),
        .Q(\r_Master_TX_Count_reg_n_0_[1] ),
        .S(r_Master_TX_Count));
  FDRE #(
    .INIT(1'b0)) 
    r_Master_TX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_12),
        .Q(r_Master_TX_DV_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[0] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[0]),
        .Q(r_h_num_to_disp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[1] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[1]),
        .Q(r_h_num_to_disp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[2] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[2]),
        .Q(r_h_num_to_disp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[3] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[3]),
        .Q(r_h_num_to_disp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[4] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[4]),
        .Q(r_h_num_to_disp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[5] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[5]),
        .Q(r_h_num_to_disp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[6] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[6]),
        .Q(r_h_num_to_disp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_h_num_to_disp_reg[7] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_10),
        .D(o_RX_Byte[7]),
        .Q(r_h_num_to_disp[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_hold_cs[0]_i_3 
       (.I0(r_hold_cs_reg[0]),
        .O(\r_hold_cs[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[0]_i_2_n_7 ),
        .Q(r_hold_cs_reg[0]),
        .R(SPI_n_10));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_hold_cs_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_hold_cs_reg[0]_i_2_n_0 ,\NLW_r_hold_cs_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_hold_cs_reg[0]_i_2_n_4 ,\r_hold_cs_reg[0]_i_2_n_5 ,\r_hold_cs_reg[0]_i_2_n_6 ,\r_hold_cs_reg[0]_i_2_n_7 }),
        .S({r_hold_cs_reg[3:1],\r_hold_cs[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[8]_i_1_n_5 ),
        .Q(r_hold_cs_reg[10]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[8]_i_1_n_4 ),
        .Q(r_hold_cs_reg[11]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[12]_i_1_n_7 ),
        .Q(r_hold_cs_reg[12]),
        .R(SPI_n_10));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_hold_cs_reg[12]_i_1 
       (.CI(\r_hold_cs_reg[8]_i_1_n_0 ),
        .CO(\NLW_r_hold_cs_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_hold_cs_reg[12]_i_1_n_4 ,\r_hold_cs_reg[12]_i_1_n_5 ,\r_hold_cs_reg[12]_i_1_n_6 ,\r_hold_cs_reg[12]_i_1_n_7 }),
        .S(r_hold_cs_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[12]_i_1_n_6 ),
        .Q(r_hold_cs_reg[13]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[12]_i_1_n_5 ),
        .Q(r_hold_cs_reg[14]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[12]_i_1_n_4 ),
        .Q(r_hold_cs_reg[15]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[0]_i_2_n_6 ),
        .Q(r_hold_cs_reg[1]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[0]_i_2_n_5 ),
        .Q(r_hold_cs_reg[2]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[0]_i_2_n_4 ),
        .Q(r_hold_cs_reg[3]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[4]_i_1_n_7 ),
        .Q(r_hold_cs_reg[4]),
        .R(SPI_n_10));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_hold_cs_reg[4]_i_1 
       (.CI(\r_hold_cs_reg[0]_i_2_n_0 ),
        .CO({\r_hold_cs_reg[4]_i_1_n_0 ,\NLW_r_hold_cs_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_hold_cs_reg[4]_i_1_n_4 ,\r_hold_cs_reg[4]_i_1_n_5 ,\r_hold_cs_reg[4]_i_1_n_6 ,\r_hold_cs_reg[4]_i_1_n_7 }),
        .S(r_hold_cs_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[4]_i_1_n_6 ),
        .Q(r_hold_cs_reg[5]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[4]_i_1_n_5 ),
        .Q(r_hold_cs_reg[6]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[4]_i_1_n_4 ),
        .Q(r_hold_cs_reg[7]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[8]_i_1_n_7 ),
        .Q(r_hold_cs_reg[8]),
        .R(SPI_n_10));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_hold_cs_reg[8]_i_1 
       (.CI(\r_hold_cs_reg[4]_i_1_n_0 ),
        .CO({\r_hold_cs_reg[8]_i_1_n_0 ,\NLW_r_hold_cs_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_hold_cs_reg[8]_i_1_n_4 ,\r_hold_cs_reg[8]_i_1_n_5 ,\r_hold_cs_reg[8]_i_1_n_6 ,\r_hold_cs_reg[8]_i_1_n_7 }),
        .S(r_hold_cs_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_hold_cs_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(r_hold_cs),
        .D(\r_hold_cs_reg[8]_i_1_n_6 ),
        .Q(r_hold_cs_reg[9]),
        .R(SPI_n_10));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[0] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[0]),
        .Q(r_l_num_to_disp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[1] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[1]),
        .Q(r_l_num_to_disp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[2] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[2]),
        .Q(r_l_num_to_disp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[3] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[3]),
        .Q(r_l_num_to_disp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[4] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[4]),
        .Q(r_l_num_to_disp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[5] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[5]),
        .Q(r_l_num_to_disp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[6] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[6]),
        .Q(r_l_num_to_disp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_l_num_to_disp_reg[7] 
       (.C(r_l_num_to_disp0),
        .CE(SPI_n_3),
        .D(o_RX_Byte[7]),
        .Q(r_l_num_to_disp[7]),
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
    read_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_n_14),
        .Q(read_flag),
        .R(1'b0));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
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
    r_hold_cs,
    SR,
    D,
    E,
    r_TX_Count_1,
    CLK,
    \FSM_onehot_r_SM_CS_reg[1] ,
    read_flag_reg,
    \r_TX_Count_reg[1] ,
    read_flag_reg_0,
    \FSM_onehot_r_SM_CS_reg[1]_0 ,
    \FSM_onehot_r_SM_CS_reg[0] ,
    \FSM_onehot_r_SM_CS_reg[2] ,
    \o_RX_Byte_reg[7]_0 ,
    clk_IBUF_BUFG,
    btnC_IBUF,
    \r_TX_Byte_reg[0]_0 ,
    read_flag,
    r_Master_TX_DV0,
    \r_Master_TX_Byte_reg[7] ,
    btnD_IBUF,
    r_prev_btnL,
    btnR_IBUF,
    btnL_IBUF,
    btnU_IBUF,
    r_prev_btnU,
    \r_Master_TX_Byte_reg[0] ,
    r_prev_btnD,
    r_TX_Count,
    \FSM_onehot_r_SM_CS_reg[2]_0 ,
    \FSM_onehot_r_SM_CS_reg[1]_1 ,
    \FSM_onehot_r_SM_CS_reg[2]_1 ,
    \r_CS_Inactive_Count_reg[0] ,
    Q,
    r_CS_n_reg,
    r_CS_n_reg_0,
    \r_Master_TX_Count_reg[0] ,
    w_Master_RX_Count,
    \r_TX_Byte_reg[7]_0 ,
    \o_RX_Byte_reg[7]_1 );
  output w_Master_RX_DV;
  output [1:0]JB_OBUF;
  output r_hold_cs;
  output [0:0]SR;
  output [3:0]D;
  output [0:0]E;
  output r_TX_Count_1;
  output CLK;
  output \FSM_onehot_r_SM_CS_reg[1] ;
  output read_flag_reg;
  output [0:0]\r_TX_Count_reg[1] ;
  output read_flag_reg_0;
  output \FSM_onehot_r_SM_CS_reg[1]_0 ;
  output \FSM_onehot_r_SM_CS_reg[0] ;
  output \FSM_onehot_r_SM_CS_reg[2] ;
  output [7:0]\o_RX_Byte_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input btnC_IBUF;
  input \r_TX_Byte_reg[0]_0 ;
  input read_flag;
  input r_Master_TX_DV0;
  input \r_Master_TX_Byte_reg[7] ;
  input btnD_IBUF;
  input r_prev_btnL;
  input btnR_IBUF;
  input btnL_IBUF;
  input btnU_IBUF;
  input r_prev_btnU;
  input \r_Master_TX_Byte_reg[0] ;
  input r_prev_btnD;
  input [1:0]r_TX_Count;
  input \FSM_onehot_r_SM_CS_reg[2]_0 ;
  input \FSM_onehot_r_SM_CS_reg[1]_1 ;
  input \FSM_onehot_r_SM_CS_reg[2]_1 ;
  input \r_CS_Inactive_Count_reg[0] ;
  input [3:0]Q;
  input r_CS_n_reg;
  input r_CS_n_reg_0;
  input \r_Master_TX_Count_reg[0] ;
  input [1:0]w_Master_RX_Count;
  input [3:0]\r_TX_Byte_reg[7]_0 ;
  input [0:0]\o_RX_Byte_reg[7]_1 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_SM_CS[2]_i_2_n_0 ;
  wire \FSM_onehot_r_SM_CS_reg[0] ;
  wire \FSM_onehot_r_SM_CS_reg[1] ;
  wire \FSM_onehot_r_SM_CS_reg[1]_0 ;
  wire \FSM_onehot_r_SM_CS_reg[1]_1 ;
  wire \FSM_onehot_r_SM_CS_reg[2] ;
  wire \FSM_onehot_r_SM_CS_reg[2]_0 ;
  wire \FSM_onehot_r_SM_CS_reg[2]_1 ;
  wire [1:0]JB_OBUF;
  wire [3:0]Q;
  wire [0:0]SR;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire btnU_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\o_RX_Byte_reg[7]_0 ;
  wire [0:0]\o_RX_Byte_reg[7]_1 ;
  wire o_RX_DV5_out;
  wire o_SPI_MOSI1_out;
  wire o_SPI_MOSI_i_2_n_0;
  wire o_SPI_MOSI_i_3_n_0;
  wire o_SPI_MOSI_i_4_n_0;
  wire o_TX_Ready1__3;
  wire o_TX_Ready8_out;
  wire [7:1]p_0_in;
  wire [4:0]p_0_in__0;
  wire \r_CS_Inactive_Count_reg[0] ;
  wire r_CS_n;
  wire r_CS_n_reg;
  wire r_CS_n_reg_0;
  wire r_Leading_Edge7_out;
  wire r_Leading_Edge_i_2_n_0;
  wire r_Leading_Edge_reg_n_0;
  wire \r_Master_TX_Byte[7]_i_7_n_0 ;
  wire \r_Master_TX_Byte_reg[0] ;
  wire \r_Master_TX_Byte_reg[7] ;
  wire \r_Master_TX_Count_reg[0] ;
  wire r_Master_TX_DV0;
  wire r_Master_TX_DV14_out;
  wire r_Master_TX_DV16_out;
  wire \r_RX_Bit_Count[0]_i_1_n_0 ;
  wire \r_RX_Bit_Count[1]_i_1_n_0 ;
  wire \r_RX_Bit_Count[2]_i_1_n_0 ;
  wire \r_RX_Bit_Count_reg_n_0_[0] ;
  wire \r_RX_Bit_Count_reg_n_0_[1] ;
  wire \r_RX_Bit_Count_reg_n_0_[2] ;
  wire r_SPI_Clk;
  wire [5:0]r_SPI_Clk_Count;
  wire \r_SPI_Clk_Count[0]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[1]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[2]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[3]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[4]_i_1_n_0 ;
  wire \r_SPI_Clk_Count[5]_i_2_n_0 ;
  wire r_SPI_Clk_Count_0;
  wire \r_SPI_Clk_Edges[4]_i_1_n_0 ;
  wire [4:0]r_SPI_Clk_Edges_reg;
  wire r_SPI_Clk_i_1_n_0;
  wire \r_TX_Bit_Count[0]_i_1_n_0 ;
  wire \r_TX_Bit_Count[1]_i_1_n_0 ;
  wire \r_TX_Bit_Count[2]_i_1_n_0 ;
  wire \r_TX_Bit_Count_reg_n_0_[0] ;
  wire \r_TX_Bit_Count_reg_n_0_[1] ;
  wire \r_TX_Bit_Count_reg_n_0_[2] ;
  wire [7:7]r_TX_Byte;
  wire \r_TX_Byte_reg[0]_0 ;
  wire [3:0]\r_TX_Byte_reg[7]_0 ;
  wire \r_TX_Byte_reg_n_0_[0] ;
  wire \r_TX_Byte_reg_n_0_[1] ;
  wire \r_TX_Byte_reg_n_0_[6] ;
  wire [1:0]r_TX_Count;
  wire r_TX_Count_1;
  wire [0:0]\r_TX_Count_reg[1] ;
  wire r_TX_DV;
  wire r_Trailing_Edge3_out;
  wire r_Trailing_Edge_reg_n_0;
  wire r_hold_cs;
  wire r_prev_btnD;
  wire r_prev_btnL;
  wire r_prev_btnU;
  wire read_flag;
  wire read_flag_reg;
  wire read_flag_reg_0;
  wire [1:0]w_Master_RX_Count;
  wire w_Master_RX_DV;
  wire w_Master_Ready;
  wire w_Master_TX_Ready;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_r_SM_CS[0]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I1(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .O(\FSM_onehot_r_SM_CS_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_r_SM_CS[1]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .I1(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .O(\FSM_onehot_r_SM_CS_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_r_SM_CS[2]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I1(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .O(\FSM_onehot_r_SM_CS_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \FSM_onehot_r_SM_CS[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I5(r_CS_n),
        .O(\FSM_onehot_r_SM_CS[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF40404040404040)) 
    \FSM_onehot_r_SM_CS[2]_i_3 
       (.I0(r_CS_n_reg),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I2(w_Master_Ready),
        .I3(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .I4(r_CS_n_reg_0),
        .I5(\r_TX_Byte_reg[0]_0 ),
        .O(r_CS_n));
  LUT5 #(
    .INIT(32'h00000400)) 
    \o_RX_Byte[1]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \o_RX_Byte[2]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \o_RX_Byte[3]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \o_RX_Byte[4]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I1(r_Leading_Edge_reg_n_0),
        .I2(w_Master_Ready),
        .I3(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I4(\r_RX_Bit_Count_reg_n_0_[0] ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \o_RX_Byte[5]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \o_RX_Byte[6]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \o_RX_Byte[7]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I2(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I3(r_Leading_Edge_reg_n_0),
        .I4(w_Master_Ready),
        .O(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(o_RX_DV5_out),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[1]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[2]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[3]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[4]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[5]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[6]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_RX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in[7]),
        .CLR(btnC_IBUF),
        .D(\o_RX_Byte_reg[7]_1 ),
        .Q(\o_RX_Byte_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'h00000004)) 
    o_RX_DV_i_1
       (.I0(\r_RX_Bit_Count_reg_n_0_[2] ),
        .I1(r_Leading_Edge_reg_n_0),
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
    .INIT(64'h8000808880008000)) 
    o_SPI_MOSI_i_3
       (.I0(\r_TX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_TX_Bit_Count_reg_n_0_[2] ),
        .I2(r_TX_Byte),
        .I3(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I4(r_TX_DV),
        .I5(\r_TX_Byte_reg_n_0_[6] ),
        .O(o_SPI_MOSI_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000111000000010)) 
    o_SPI_MOSI_i_4
       (.I0(r_TX_DV),
        .I1(\r_TX_Bit_Count_reg_n_0_[2] ),
        .I2(\r_TX_Byte_reg_n_0_[0] ),
        .I3(\r_TX_Bit_Count_reg_n_0_[0] ),
        .I4(\r_TX_Bit_Count_reg_n_0_[1] ),
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
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[0]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .I5(\r_TX_Byte_reg[0]_0 ),
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
    .INIT(64'hFFFF100010001000)) 
    \r_CS_Inactive_Count[3]_i_1 
       (.I0(r_TX_Count[1]),
        .I1(r_TX_Count[0]),
        .I2(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I3(w_Master_Ready),
        .I4(\FSM_onehot_r_SM_CS_reg[2]_1 ),
        .I5(\r_CS_Inactive_Count_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hC0FF4040FFFF4040)) 
    r_CS_n_i_1
       (.I0(r_CS_n_reg),
        .I1(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I2(w_Master_Ready),
        .I3(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .I4(r_CS_n_reg_0),
        .I5(\r_TX_Byte_reg[0]_0 ),
        .O(\FSM_onehot_r_SM_CS_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    r_Leading_Edge_i_1
       (.I0(r_Leading_Edge_i_2_n_0),
        .I1(r_SPI_Clk_Count[3]),
        .I2(r_SPI_Clk_Count[5]),
        .I3(r_SPI_Clk_Count[4]),
        .I4(r_SPI_Clk_Count_0),
        .O(r_Leading_Edge7_out));
  LUT3 #(
    .INIT(8'h7F)) 
    r_Leading_Edge_i_2
       (.I0(r_SPI_Clk_Count[1]),
        .I1(r_SPI_Clk_Count[0]),
        .I2(r_SPI_Clk_Count[2]),
        .O(r_Leading_Edge_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_Leading_Edge_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_Leading_Edge7_out),
        .Q(r_Leading_Edge_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_Master_TX_Byte[0]_i_1 
       (.I0(r_Master_TX_DV16_out),
        .I1(D[3]),
        .I2(r_Master_TX_DV14_out),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \r_Master_TX_Byte[1]_i_1 
       (.I0(r_Master_TX_DV16_out),
        .I1(D[3]),
        .I2(r_Master_TX_DV14_out),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \r_Master_TX_Byte[1]_i_2 
       (.I0(\r_Master_TX_Byte_reg[7] ),
        .I1(btnD_IBUF),
        .I2(r_prev_btnL),
        .I3(btnR_IBUF),
        .I4(btnL_IBUF),
        .I5(w_Master_TX_Ready),
        .O(r_Master_TX_DV14_out));
  LUT2 #(
    .INIT(4'h2)) 
    \r_Master_TX_Byte[6]_i_1 
       (.I0(r_Master_TX_DV16_out),
        .I1(D[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \r_Master_TX_Byte[6]_i_2 
       (.I0(btnU_IBUF),
        .I1(read_flag),
        .I2(btnD_IBUF),
        .I3(r_prev_btnU),
        .I4(\r_Master_TX_Byte_reg[0] ),
        .I5(w_Master_TX_Ready),
        .O(r_Master_TX_DV16_out));
  LUT3 #(
    .INIT(8'h80)) 
    \r_Master_TX_Byte[7]_i_1 
       (.I0(read_flag),
        .I1(w_Master_TX_Ready),
        .I2(r_Master_TX_DV0),
        .O(SR));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \r_Master_TX_Byte[7]_i_2 
       (.I0(w_Master_TX_Ready),
        .I1(\r_Master_TX_Count_reg[0] ),
        .I2(D[3]),
        .I3(\r_Master_TX_Byte[7]_i_7_n_0 ),
        .O(\r_TX_Count_reg[1] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \r_Master_TX_Byte[7]_i_3 
       (.I0(\r_Master_TX_Byte_reg[7] ),
        .I1(r_prev_btnD),
        .I2(btnD_IBUF),
        .I3(btnR_IBUF),
        .I4(btnL_IBUF),
        .I5(w_Master_TX_Ready),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000FFFF0000E000)) 
    \r_Master_TX_Byte[7]_i_4 
       (.I0(r_TX_Count[1]),
        .I1(r_TX_Count[0]),
        .I2(w_Master_Ready),
        .I3(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I4(\r_TX_Byte_reg[0]_0 ),
        .I5(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .O(w_Master_TX_Ready));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Master_TX_Byte[7]_i_7 
       (.I0(r_Master_TX_DV16_out),
        .I1(r_Master_TX_DV14_out),
        .O(\r_Master_TX_Byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAF8F8F8)) 
    r_Master_TX_DV_i_1
       (.I0(w_Master_TX_Ready),
        .I1(\r_Master_TX_Count_reg[0] ),
        .I2(D[3]),
        .I3(read_flag),
        .I4(r_Master_TX_DV0),
        .I5(\r_Master_TX_Byte[7]_i_7_n_0 ),
        .O(read_flag_reg));
  LUT3 #(
    .INIT(8'hBE)) 
    \r_RX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready),
        .I1(r_Leading_Edge_reg_n_0),
        .I2(\r_RX_Bit_Count_reg_n_0_[0] ),
        .O(\r_RX_Bit_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFDC)) 
    \r_RX_Bit_Count[1]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(w_Master_Ready),
        .I2(r_Leading_Edge_reg_n_0),
        .I3(\r_RX_Bit_Count_reg_n_0_[1] ),
        .O(\r_RX_Bit_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFF1F0)) 
    \r_RX_Bit_Count[2]_i_1 
       (.I0(\r_RX_Bit_Count_reg_n_0_[0] ),
        .I1(\r_RX_Bit_Count_reg_n_0_[1] ),
        .I2(w_Master_Ready),
        .I3(r_Leading_Edge_reg_n_0),
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
  LUT1 #(
    .INIT(2'h1)) 
    \r_SPI_Clk_Count[0]_i_1 
       (.I0(r_SPI_Clk_Count[0]),
        .O(\r_SPI_Clk_Count[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_SPI_Clk_Count[1]_i_1 
       (.I0(r_SPI_Clk_Count[1]),
        .I1(r_SPI_Clk_Count[0]),
        .O(\r_SPI_Clk_Count[1]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_SPI_Clk_Count[2]_i_1 
       (.I0(r_SPI_Clk_Count[1]),
        .I1(r_SPI_Clk_Count[0]),
        .I2(r_SPI_Clk_Count[2]),
        .O(\r_SPI_Clk_Count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_SPI_Clk_Count[3]_i_1 
       (.I0(r_SPI_Clk_Count[1]),
        .I1(r_SPI_Clk_Count[0]),
        .I2(r_SPI_Clk_Count[2]),
        .I3(r_SPI_Clk_Count[3]),
        .O(\r_SPI_Clk_Count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF00008000)) 
    \r_SPI_Clk_Count[4]_i_1 
       (.I0(r_SPI_Clk_Count[2]),
        .I1(r_SPI_Clk_Count[0]),
        .I2(r_SPI_Clk_Count[1]),
        .I3(r_SPI_Clk_Count[3]),
        .I4(r_SPI_Clk_Count[5]),
        .I5(r_SPI_Clk_Count[4]),
        .O(\r_SPI_Clk_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \r_SPI_Clk_Count[5]_i_1 
       (.I0(r_SPI_Clk_Edges_reg[4]),
        .I1(r_SPI_Clk_Edges_reg[2]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[0]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .I5(\r_TX_Byte_reg[0]_0 ),
        .O(r_SPI_Clk_Count_0));
  LUT6 #(
    .INIT(64'h7FFF7FFF80000000)) 
    \r_SPI_Clk_Count[5]_i_2 
       (.I0(r_SPI_Clk_Count[3]),
        .I1(r_SPI_Clk_Count[1]),
        .I2(r_SPI_Clk_Count[0]),
        .I3(r_SPI_Clk_Count[2]),
        .I4(r_SPI_Clk_Count[4]),
        .I5(r_SPI_Clk_Count[5]),
        .O(\r_SPI_Clk_Count[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[0]_i_1_n_0 ),
        .Q(r_SPI_Clk_Count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[1]_i_1_n_0 ),
        .Q(r_SPI_Clk_Count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[2]_i_1_n_0 ),
        .Q(r_SPI_Clk_Count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[3]_i_1_n_0 ),
        .Q(r_SPI_Clk_Count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[4]_i_1_n_0 ),
        .Q(r_SPI_Clk_Count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_SPI_Clk_Count_0),
        .CLR(btnC_IBUF),
        .D(\r_SPI_Clk_Count[5]_i_2_n_0 ),
        .Q(r_SPI_Clk_Count[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_SPI_Clk_Edges[0]_i_1 
       (.I0(\r_TX_Byte_reg[0]_0 ),
        .I1(r_SPI_Clk_Edges_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \r_SPI_Clk_Edges[1]_i_1 
       (.I0(\r_TX_Byte_reg[0]_0 ),
        .I1(r_SPI_Clk_Edges_reg[1]),
        .I2(r_SPI_Clk_Edges_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \r_SPI_Clk_Edges[2]_i_1 
       (.I0(\r_TX_Byte_reg[0]_0 ),
        .I1(r_SPI_Clk_Edges_reg[0]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55540001)) 
    \r_SPI_Clk_Edges[3]_i_1 
       (.I0(\r_TX_Byte_reg[0]_0 ),
        .I1(r_SPI_Clk_Edges_reg[2]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[0]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000820)) 
    \r_SPI_Clk_Edges[4]_i_1 
       (.I0(o_TX_Ready1__3),
        .I1(r_SPI_Clk_Count[5]),
        .I2(r_SPI_Clk_Count[4]),
        .I3(r_SPI_Clk_Count[3]),
        .I4(r_Leading_Edge_i_2_n_0),
        .I5(\r_TX_Byte_reg[0]_0 ),
        .O(\r_SPI_Clk_Edges[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA9)) 
    \r_SPI_Clk_Edges[4]_i_2 
       (.I0(r_SPI_Clk_Edges_reg[4]),
        .I1(r_SPI_Clk_Edges_reg[2]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[0]),
        .I4(r_SPI_Clk_Edges_reg[3]),
        .I5(\r_TX_Byte_reg[0]_0 ),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_SPI_Clk_Edges[4]_i_3 
       (.I0(r_SPI_Clk_Edges_reg[3]),
        .I1(r_SPI_Clk_Edges_reg[0]),
        .I2(r_SPI_Clk_Edges_reg[1]),
        .I3(r_SPI_Clk_Edges_reg[2]),
        .I4(r_SPI_Clk_Edges_reg[4]),
        .O(o_TX_Ready1__3));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in__0[0]),
        .Q(r_SPI_Clk_Edges_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in__0[1]),
        .Q(r_SPI_Clk_Edges_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in__0[2]),
        .Q(r_SPI_Clk_Edges_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in__0[3]),
        .Q(r_SPI_Clk_Edges_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_SPI_Clk_Edges_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_SPI_Clk_Edges[4]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in__0[4]),
        .Q(r_SPI_Clk_Edges_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFF7DF00000820)) 
    r_SPI_Clk_i_1
       (.I0(r_SPI_Clk_Count_0),
        .I1(r_SPI_Clk_Count[5]),
        .I2(r_SPI_Clk_Count[4]),
        .I3(r_SPI_Clk_Count[3]),
        .I4(r_Leading_Edge_i_2_n_0),
        .I5(r_SPI_Clk),
        .O(r_SPI_Clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_SPI_Clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_SPI_Clk_i_1_n_0),
        .Q(r_SPI_Clk));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hABBA)) 
    \r_TX_Bit_Count[0]_i_1 
       (.I0(w_Master_Ready),
        .I1(r_TX_DV),
        .I2(r_Trailing_Edge_reg_n_0),
        .I3(\r_TX_Bit_Count_reg_n_0_[0] ),
        .O(\r_TX_Bit_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
       (.I0(\r_TX_Bit_Count_reg_n_0_[1] ),
        .I1(\r_TX_Bit_Count_reg_n_0_[0] ),
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
        .CE(\r_TX_Byte_reg[0]_0 ),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [0]),
        .Q(\r_TX_Byte_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_TX_Byte_reg[0]_0 ),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [1]),
        .Q(\r_TX_Byte_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_TX_Byte_reg[0]_0 ),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [2]),
        .Q(\r_TX_Byte_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_TX_Byte_reg[0]_0 ),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[7]_0 [3]),
        .Q(r_TX_Byte));
  LUT6 #(
    .INIT(64'hFF00800080008000)) 
    \r_TX_Count[1]_i_3 
       (.I0(r_CS_n_reg),
        .I1(w_Master_Ready),
        .I2(\FSM_onehot_r_SM_CS_reg[2]_0 ),
        .I3(\r_TX_Byte_reg[0]_0 ),
        .I4(\FSM_onehot_r_SM_CS_reg[1]_1 ),
        .I5(r_CS_n_reg_0),
        .O(r_TX_Count_1));
  FDCE #(
    .INIT(1'b0)) 
    r_TX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(\r_TX_Byte_reg[0]_0 ),
        .Q(r_TX_DV));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    r_Trailing_Edge_i_1
       (.I0(r_Leading_Edge_i_2_n_0),
        .I1(r_SPI_Clk_Count[3]),
        .I2(r_SPI_Clk_Count[5]),
        .I3(r_SPI_Clk_Count[4]),
        .I4(r_SPI_Clk_Count_0),
        .O(r_Trailing_Edge3_out));
  FDCE #(
    .INIT(1'b0)) 
    r_Trailing_Edge_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(r_Trailing_Edge3_out),
        .Q(r_Trailing_Edge_reg_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \r_hold_cs[0]_i_1 
       (.I0(read_flag),
        .I1(w_Master_TX_Ready),
        .I2(r_Master_TX_DV0),
        .O(r_hold_cs));
  LUT2 #(
    .INIT(4'h8)) 
    \r_l_num_to_disp[7]_i_2 
       (.I0(w_Master_RX_DV),
        .I1(read_flag),
        .O(CLK));
  LUT5 #(
    .INIT(32'hFE00FEFE)) 
    read_flag_i_1
       (.I0(r_Master_TX_DV16_out),
        .I1(D[3]),
        .I2(read_flag),
        .I3(w_Master_RX_Count[0]),
        .I4(w_Master_RX_Count[1]),
        .O(read_flag_reg_0));
endmodule

module SPI_Master_With_Single_CS
   (JB_OBUF,
    E,
    r_hold_cs,
    SR,
    D,
    \o_RX_Count_reg[1]_0 ,
    CLK,
    read_flag_reg,
    \r_TX_Count_reg[1]_0 ,
    read_flag_reg_0,
    \o_RX_Byte_reg[7] ,
    clk_IBUF_BUFG,
    btnC_IBUF,
    \r_TX_Byte_reg[0] ,
    read_flag,
    r_Master_TX_DV0,
    \r_Master_TX_Byte_reg[7] ,
    btnD_IBUF,
    r_prev_btnL,
    btnR_IBUF,
    btnL_IBUF,
    btnU_IBUF,
    r_prev_btnU,
    \r_Master_TX_Byte_reg[0] ,
    r_prev_btnD,
    Q,
    \r_Master_TX_Count_reg[0] ,
    \r_TX_Byte_reg[7] ,
    \o_RX_Byte_reg[7]_0 );
  output [2:0]JB_OBUF;
  output [0:0]E;
  output r_hold_cs;
  output [0:0]SR;
  output [3:0]D;
  output [0:0]\o_RX_Count_reg[1]_0 ;
  output CLK;
  output read_flag_reg;
  output [0:0]\r_TX_Count_reg[1]_0 ;
  output read_flag_reg_0;
  output [7:0]\o_RX_Byte_reg[7] ;
  input clk_IBUF_BUFG;
  input btnC_IBUF;
  input \r_TX_Byte_reg[0] ;
  input read_flag;
  input r_Master_TX_DV0;
  input \r_Master_TX_Byte_reg[7] ;
  input btnD_IBUF;
  input r_prev_btnL;
  input btnR_IBUF;
  input btnL_IBUF;
  input btnU_IBUF;
  input r_prev_btnU;
  input \r_Master_TX_Byte_reg[0] ;
  input r_prev_btnD;
  input [1:0]Q;
  input \r_Master_TX_Count_reg[0] ;
  input [3:0]\r_TX_Byte_reg[7] ;
  input [0:0]\o_RX_Byte_reg[7]_0 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[0] ;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[1] ;
  wire \FSM_onehot_r_SM_CS_reg_n_0_[2] ;
  wire [2:0]JB_OBUF;
  wire [1:0]Q;
  wire SPI_Master_Inst_n_12;
  wire SPI_Master_Inst_n_16;
  wire SPI_Master_Inst_n_17;
  wire SPI_Master_Inst_n_18;
  wire [0:0]SR;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire btnU_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\o_RX_Byte_reg[7] ;
  wire [0:0]\o_RX_Byte_reg[7]_0 ;
  wire \o_RX_Count[0]_i_1_n_0 ;
  wire \o_RX_Count[1]_i_1_n_0 ;
  wire [0:0]\o_RX_Count_reg[1]_0 ;
  wire [3:0]r_CS_Inactive_Count;
  wire \r_CS_Inactive_Count[0]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[1]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[2]_i_1_n_0 ;
  wire \r_CS_Inactive_Count[3]_i_2_n_0 ;
  wire \r_CS_Inactive_Count[3]_i_3_n_0 ;
  wire r_CS_Inactive_Count_0;
  wire r_CS_n_i_2_n_0;
  wire \r_Master_TX_Byte_reg[0] ;
  wire \r_Master_TX_Byte_reg[7] ;
  wire \r_Master_TX_Count_reg[0] ;
  wire r_Master_TX_DV0;
  wire \r_TX_Byte_reg[0] ;
  wire [3:0]\r_TX_Byte_reg[7] ;
  wire [1:0]r_TX_Count;
  wire \r_TX_Count[0]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_1_n_0 ;
  wire \r_TX_Count[1]_i_2_n_0 ;
  wire r_TX_Count_1;
  wire [0:0]\r_TX_Count_reg[1]_0 ;
  wire r_hold_cs;
  wire r_prev_btnD;
  wire r_prev_btnL;
  wire r_prev_btnU;
  wire read_flag;
  wire read_flag_reg;
  wire read_flag_reg_0;
  wire [1:0]w_Master_RX_Count;
  wire w_Master_RX_DV;

  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_SM_CS_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SPI_Master_Inst_n_18),
        .PRE(btnC_IBUF),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(SPI_Master_Inst_n_17),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,TRANSFER:010,CS_INACTIVE:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_CS_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(SPI_Master_Inst_n_16),
        .Q(\FSM_onehot_r_SM_CS_reg_n_0_[2] ));
  SPI_Master SPI_Master_Inst
       (.CLK(CLK),
        .D(D),
        .E(r_CS_Inactive_Count_0),
        .\FSM_onehot_r_SM_CS_reg[0] (SPI_Master_Inst_n_17),
        .\FSM_onehot_r_SM_CS_reg[1] (SPI_Master_Inst_n_12),
        .\FSM_onehot_r_SM_CS_reg[1]_0 (SPI_Master_Inst_n_16),
        .\FSM_onehot_r_SM_CS_reg[1]_1 (\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .\FSM_onehot_r_SM_CS_reg[2] (SPI_Master_Inst_n_18),
        .\FSM_onehot_r_SM_CS_reg[2]_0 (\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .\FSM_onehot_r_SM_CS_reg[2]_1 (\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .JB_OBUF(JB_OBUF[1:0]),
        .Q(r_CS_Inactive_Count),
        .SR(SR),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\o_RX_Byte_reg[7]_0 (\o_RX_Byte_reg[7] ),
        .\o_RX_Byte_reg[7]_1 (\o_RX_Byte_reg[7]_0 ),
        .\r_CS_Inactive_Count_reg[0] (\r_CS_Inactive_Count[3]_i_3_n_0 ),
        .r_CS_n_reg(r_CS_n_i_2_n_0),
        .r_CS_n_reg_0(JB_OBUF[2]),
        .\r_Master_TX_Byte_reg[0] (\r_Master_TX_Byte_reg[0] ),
        .\r_Master_TX_Byte_reg[7] (\r_Master_TX_Byte_reg[7] ),
        .\r_Master_TX_Count_reg[0] (\r_Master_TX_Count_reg[0] ),
        .r_Master_TX_DV0(r_Master_TX_DV0),
        .\r_TX_Byte_reg[0]_0 (\r_TX_Byte_reg[0] ),
        .\r_TX_Byte_reg[7]_0 (\r_TX_Byte_reg[7] ),
        .r_TX_Count(r_TX_Count),
        .r_TX_Count_1(r_TX_Count_1),
        .\r_TX_Count_reg[1] (\r_TX_Count_reg[1]_0 ),
        .r_hold_cs(r_hold_cs),
        .r_prev_btnD(r_prev_btnD),
        .r_prev_btnL(r_prev_btnL),
        .r_prev_btnU(r_prev_btnU),
        .read_flag(read_flag),
        .read_flag_reg(read_flag_reg),
        .read_flag_reg_0(read_flag_reg_0),
        .w_Master_RX_Count(w_Master_RX_Count),
        .w_Master_RX_DV(w_Master_RX_DV));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \o_RX_Count[0]_i_1 
       (.I0(w_Master_RX_Count[0]),
        .I1(w_Master_RX_DV),
        .I2(JB_OBUF[2]),
        .O(\o_RX_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  LUT2 #(
    .INIT(4'h2)) 
    \r_CS_Inactive_Count[0]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .I1(r_CS_Inactive_Count[0]),
        .O(\r_CS_Inactive_Count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAE)) 
    \r_CS_Inactive_Count[1]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[2] ),
        .I2(r_CS_Inactive_Count[0]),
        .I3(r_CS_Inactive_Count[1]),
        .O(\r_CS_Inactive_Count[1]_i_1_n_0 ));
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_CS_Inactive_Count[3]_i_3 
       (.I0(r_CS_Inactive_Count[2]),
        .I1(r_CS_Inactive_Count[0]),
        .I2(r_CS_Inactive_Count[1]),
        .I3(r_CS_Inactive_Count[3]),
        .O(\r_CS_Inactive_Count[3]_i_3_n_0 ));
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
       (.I0(r_TX_Count[1]),
        .I1(r_TX_Count[0]),
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
    .INIT(32'h30FFBA00)) 
    \r_TX_Count[0]_i_1 
       (.I0(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I3(r_TX_Count_1),
        .I4(r_TX_Count[0]),
        .O(\r_TX_Count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_TX_Count[1]_i_1 
       (.I0(\r_TX_Count[1]_i_2_n_0 ),
        .I1(r_TX_Count_1),
        .I2(r_TX_Count[1]),
        .O(\r_TX_Count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8484848484FF84)) 
    \r_TX_Count[1]_i_2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_r_SM_CS_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\FSM_onehot_r_SM_CS_reg_n_0_[1] ),
        .I4(r_TX_Count[0]),
        .I5(r_TX_Count[1]),
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
  LUT2 #(
    .INIT(4'h2)) 
    \r_h_num_to_disp[7]_i_1 
       (.I0(w_Master_RX_Count[1]),
        .I1(w_Master_RX_Count[0]),
        .O(\o_RX_Count_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_l_num_to_disp[7]_i_1 
       (.I0(w_Master_RX_Count[0]),
        .I1(w_Master_RX_Count[1]),
        .O(E));
endmodule

module seg_disp
   (Q,
    an_OBUF,
    clk_IBUF_BUFG,
    \r_input_num_reg[15]_0 ,
    \r_input_num_reg[7]_0 );
  output [6:0]Q;
  output [3:0]an_OBUF;
  input clk_IBUF_BUFG;
  input [7:0]\r_input_num_reg[15]_0 ;
  input [7:0]\r_input_num_reg[7]_0 ;

  wire \FSM_sequential_i[1]_i_2_n_0 ;
  wire \FSM_sequential_i[1]_i_3_n_0 ;
  wire \FSM_sequential_i[1]_i_4_n_0 ;
  wire \FSM_sequential_r_an[0]_i_1_n_0 ;
  wire \FSM_sequential_r_an[1]_i_1_n_0 ;
  wire \FSM_sequential_r_an[2]_i_1_n_0 ;
  wire \FSM_sequential_r_an[2]_i_2_n_0 ;
  wire \FSM_sequential_r_an[2]_i_3_n_0 ;
  wire \FSM_sequential_r_an[2]_i_4_n_0 ;
  wire \FSM_sequential_r_an[2]_i_5_n_0 ;
  wire \FSM_sequential_r_an[2]_i_6_n_0 ;
  wire [6:0]Q;
  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire delay0_carry__0_n_0;
  wire delay0_carry__0_n_4;
  wire delay0_carry__0_n_5;
  wire delay0_carry__0_n_6;
  wire delay0_carry__0_n_7;
  wire delay0_carry__1_n_0;
  wire delay0_carry__1_n_4;
  wire delay0_carry__1_n_5;
  wire delay0_carry__1_n_6;
  wire delay0_carry__1_n_7;
  wire delay0_carry__2_n_0;
  wire delay0_carry__2_n_4;
  wire delay0_carry__2_n_5;
  wire delay0_carry__2_n_6;
  wire delay0_carry__2_n_7;
  wire delay0_carry__3_n_4;
  wire delay0_carry__3_n_5;
  wire delay0_carry__3_n_6;
  wire delay0_carry__3_n_7;
  wire delay0_carry_n_0;
  wire delay0_carry_n_4;
  wire delay0_carry_n_5;
  wire delay0_carry_n_6;
  wire delay0_carry_n_7;
  wire \delay[0]_i_1_n_0 ;
  wire \delay[10]_i_1_n_0 ;
  wire \delay[15]_i_1_n_0 ;
  wire \delay[16]_i_2_n_0 ;
  wire \delay[1]_i_1_n_0 ;
  wire \delay[20]_i_1_n_0 ;
  wire \delay[2]_i_1_n_0 ;
  wire \delay[3]_i_1_n_0 ;
  wire \delay[4]_i_1_n_0 ;
  wire \delay[7]_i_1_n_0 ;
  wire \delay[9]_i_1_n_0 ;
  wire \delay_reg_n_0_[0] ;
  wire \delay_reg_n_0_[10] ;
  wire \delay_reg_n_0_[11] ;
  wire \delay_reg_n_0_[12] ;
  wire \delay_reg_n_0_[13] ;
  wire \delay_reg_n_0_[14] ;
  wire \delay_reg_n_0_[15] ;
  wire \delay_reg_n_0_[16] ;
  wire \delay_reg_n_0_[17] ;
  wire \delay_reg_n_0_[18] ;
  wire \delay_reg_n_0_[19] ;
  wire \delay_reg_n_0_[1] ;
  wire \delay_reg_n_0_[20] ;
  wire \delay_reg_n_0_[2] ;
  wire \delay_reg_n_0_[3] ;
  wire \delay_reg_n_0_[4] ;
  wire \delay_reg_n_0_[5] ;
  wire \delay_reg_n_0_[6] ;
  wire \delay_reg_n_0_[7] ;
  wire \delay_reg_n_0_[8] ;
  wire \delay_reg_n_0_[9] ;
  wire [3:0]i;
  wire [3:0]i__0;
  wire [12:4]in5;
  wire [2:0]r_an;
  wire r_disp_1;
  wire \r_disp_1[2]_i_1_n_0 ;
  wire \r_disp_1[4]_i_1_n_0 ;
  wire \r_disp_1[6]_i_1_n_0 ;
  wire \r_disp_1_reg_n_0_[0] ;
  wire \r_disp_1_reg_n_0_[1] ;
  wire \r_disp_1_reg_n_0_[2] ;
  wire \r_disp_1_reg_n_0_[3] ;
  wire \r_disp_1_reg_n_0_[4] ;
  wire \r_disp_1_reg_n_0_[5] ;
  wire \r_disp_1_reg_n_0_[6] ;
  wire r_disp_2;
  wire \r_disp_2[0]_i_1_n_0 ;
  wire \r_disp_2[1]_i_1_n_0 ;
  wire \r_disp_2[2]_i_1_n_0 ;
  wire \r_disp_2[2]_i_2_n_0 ;
  wire \r_disp_2[3]_i_1_n_0 ;
  wire \r_disp_2[4]_i_1_n_0 ;
  wire \r_disp_2[4]_i_2_n_0 ;
  wire \r_disp_2[5]_i_1_n_0 ;
  wire \r_disp_2[6]_i_1_n_0 ;
  wire \r_disp_2[6]_i_3_n_0 ;
  wire \r_disp_2_reg_n_0_[0] ;
  wire \r_disp_2_reg_n_0_[1] ;
  wire \r_disp_2_reg_n_0_[2] ;
  wire \r_disp_2_reg_n_0_[3] ;
  wire \r_disp_2_reg_n_0_[4] ;
  wire \r_disp_2_reg_n_0_[5] ;
  wire \r_disp_2_reg_n_0_[6] ;
  wire r_disp_3;
  wire \r_disp_3[2]_i_1_n_0 ;
  wire \r_disp_3[4]_i_1_n_0 ;
  wire \r_disp_3[6]_i_1_n_0 ;
  wire \r_disp_3_reg_n_0_[0] ;
  wire \r_disp_3_reg_n_0_[1] ;
  wire \r_disp_3_reg_n_0_[2] ;
  wire \r_disp_3_reg_n_0_[3] ;
  wire \r_disp_3_reg_n_0_[4] ;
  wire \r_disp_3_reg_n_0_[5] ;
  wire \r_disp_3_reg_n_0_[6] ;
  wire r_disp_4;
  wire \r_disp_4[2]_i_1_n_0 ;
  wire \r_disp_4[4]_i_1_n_0 ;
  wire \r_disp_4[4]_i_2_n_0 ;
  wire \r_disp_4[4]_i_3_n_0 ;
  wire \r_disp_4[6]_i_1_n_0 ;
  wire \r_disp_4_reg_n_0_[0] ;
  wire \r_disp_4_reg_n_0_[1] ;
  wire \r_disp_4_reg_n_0_[2] ;
  wire \r_disp_4_reg_n_0_[3] ;
  wire \r_disp_4_reg_n_0_[4] ;
  wire \r_disp_4_reg_n_0_[5] ;
  wire \r_disp_4_reg_n_0_[6] ;
  wire [15:0]r_input_num;
  wire \r_input_num[0]_i_2_n_0 ;
  wire \r_input_num[1]_i_2_n_0 ;
  wire \r_input_num[1]_i_3_n_0 ;
  wire \r_input_num[1]_i_4_n_0 ;
  wire \r_input_num[2]_i_2_n_0 ;
  wire \r_input_num[2]_i_3_n_0 ;
  wire \r_input_num[3]_i_2_n_0 ;
  wire \r_input_num[3]_i_3_n_0 ;
  wire \r_input_num[3]_i_4_n_0 ;
  wire \r_input_num[4]_i_3_n_0 ;
  wire \r_input_num[5]_i_3_n_0 ;
  wire \r_input_num[5]_i_4_n_0 ;
  wire \r_input_num[6]_i_3_n_0 ;
  wire \r_input_num[7]_i_3_n_0 ;
  wire \r_input_num[7]_i_4_n_0 ;
  wire \r_input_num[8]_i_3_n_0 ;
  wire r_input_num_1;
  wire [7:0]\r_input_num_reg[15]_0 ;
  wire [7:0]\r_input_num_reg[7]_0 ;
  wire \r_input_num_reg_n_0_[0] ;
  wire \r_input_num_reg_n_0_[10] ;
  wire \r_input_num_reg_n_0_[11] ;
  wire \r_input_num_reg_n_0_[12] ;
  wire \r_input_num_reg_n_0_[13] ;
  wire \r_input_num_reg_n_0_[14] ;
  wire \r_input_num_reg_n_0_[15] ;
  wire \r_input_num_reg_n_0_[1] ;
  wire \r_input_num_reg_n_0_[2] ;
  wire \r_input_num_reg_n_0_[3] ;
  wire \r_input_num_reg_n_0_[4] ;
  wire \r_input_num_reg_n_0_[5] ;
  wire \r_input_num_reg_n_0_[6] ;
  wire \r_input_num_reg_n_0_[7] ;
  wire \r_input_num_reg_n_0_[8] ;
  wire \r_input_num_reg_n_0_[9] ;
  wire r_seg;
  wire \r_seg[0]_i_1_n_0 ;
  wire \r_seg[0]_i_2_n_0 ;
  wire \r_seg[1]_i_1_n_0 ;
  wire \r_seg[1]_i_2_n_0 ;
  wire \r_seg[2]_i_1_n_0 ;
  wire \r_seg[2]_i_2_n_0 ;
  wire \r_seg[3]_i_1_n_0 ;
  wire \r_seg[3]_i_2_n_0 ;
  wire \r_seg[4]_i_1_n_0 ;
  wire \r_seg[4]_i_2_n_0 ;
  wire \r_seg[5]_i_1_n_0 ;
  wire \r_seg[5]_i_2_n_0 ;
  wire \r_seg[6]_i_1_n_0 ;
  wire \r_seg[6]_i_2_n_0 ;
  wire [3:0]temp_disp_val;
  wire \temp_disp_val[1]_i_1_n_0 ;
  wire \temp_disp_val[2]_i_1_n_0 ;
  wire \temp_disp_val[3]_i_2_n_0 ;
  wire \temp_disp_val[3]_i_3_n_0 ;
  wire temp_disp_val_0;
  wire [2:0]NLW_delay0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_delay0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_delay0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_delay0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_delay0_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_i[0]_i_1 
       (.I0(i[3]),
        .I1(i[0]),
        .O(i__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000FD0)) 
    \FSM_sequential_i[1]_i_1 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[3]),
        .O(i__0[1]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \FSM_sequential_i[1]_i_2 
       (.I0(\FSM_sequential_i[1]_i_3_n_0 ),
        .I1(\FSM_sequential_i[1]_i_4_n_0 ),
        .I2(\r_input_num_reg_n_0_[8] ),
        .I3(\r_input_num_reg_n_0_[13] ),
        .I4(\r_input_num_reg_n_0_[10] ),
        .I5(\r_input_num_reg_n_0_[9] ),
        .O(\FSM_sequential_i[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_sequential_i[1]_i_3 
       (.I0(\r_input_num_reg_n_0_[15] ),
        .I1(\r_input_num_reg_n_0_[14] ),
        .I2(\r_input_num_reg_n_0_[13] ),
        .I3(\r_input_num_reg_n_0_[11] ),
        .I4(\r_input_num_reg_n_0_[12] ),
        .O(\FSM_sequential_i[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_i[1]_i_4 
       (.I0(\r_input_num_reg_n_0_[5] ),
        .I1(\r_input_num_reg_n_0_[4] ),
        .I2(\r_input_num_reg_n_0_[7] ),
        .I3(\r_input_num_reg_n_0_[6] ),
        .O(\FSM_sequential_i[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1222)) 
    \FSM_sequential_i[2]_i_1 
       (.I0(i[2]),
        .I1(i[3]),
        .I2(i[0]),
        .I3(i[1]),
        .O(i__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_i[3]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(i__0[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i__0[0]),
        .Q(i[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i__0[1]),
        .Q(i[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i__0[2]),
        .Q(i[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:0111,iSTATE5:0110,iSTATE6:1000,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i__0[3]),
        .Q(i[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCFF9)) 
    \FSM_sequential_r_an[0]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .I3(\FSM_sequential_r_an[2]_i_2_n_0 ),
        .O(\FSM_sequential_r_an[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1222)) 
    \FSM_sequential_r_an[1]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .I3(\FSM_sequential_r_an[2]_i_2_n_0 ),
        .O(\FSM_sequential_r_an[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2004)) 
    \FSM_sequential_r_an[2]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .I3(\FSM_sequential_r_an[2]_i_2_n_0 ),
        .O(\FSM_sequential_r_an[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \FSM_sequential_r_an[2]_i_2 
       (.I0(\FSM_sequential_r_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_r_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_r_an[2]_i_5_n_0 ),
        .I3(\delay_reg_n_0_[16] ),
        .I4(\delay_reg_n_0_[15] ),
        .O(\FSM_sequential_r_an[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_r_an[2]_i_3 
       (.I0(\delay_reg_n_0_[19] ),
        .I1(\delay_reg_n_0_[20] ),
        .I2(\delay_reg_n_0_[17] ),
        .I3(\delay_reg_n_0_[18] ),
        .O(\FSM_sequential_r_an[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_r_an[2]_i_4 
       (.I0(\delay_reg_n_0_[13] ),
        .I1(\delay_reg_n_0_[14] ),
        .I2(\delay_reg_n_0_[11] ),
        .I3(\delay_reg_n_0_[12] ),
        .O(\FSM_sequential_r_an[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h777777777FFF7F7F)) 
    \FSM_sequential_r_an[2]_i_5 
       (.I0(\delay_reg_n_0_[9] ),
        .I1(\delay_reg_n_0_[10] ),
        .I2(\delay_reg_n_0_[7] ),
        .I3(\delay_reg_n_0_[6] ),
        .I4(\FSM_sequential_r_an[2]_i_6_n_0 ),
        .I5(\delay_reg_n_0_[8] ),
        .O(\FSM_sequential_r_an[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_sequential_r_an[2]_i_6 
       (.I0(\delay_reg_n_0_[2] ),
        .I1(\delay_reg_n_0_[3] ),
        .I2(\delay_reg_n_0_[0] ),
        .I3(\delay_reg_n_0_[4] ),
        .I4(\delay_reg_n_0_[1] ),
        .I5(\delay_reg_n_0_[5] ),
        .O(\FSM_sequential_r_an[2]_i_6_n_0 ));
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
        .D(\FSM_sequential_r_an[2]_i_1_n_0 ),
        .Q(r_an[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h34)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .O(an_OBUF[0]));
  LUT3 #(
    .INIT(8'h16)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .O(an_OBUF[1]));
  LUT3 #(
    .INIT(8'h32)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .O(an_OBUF[2]));
  LUT3 #(
    .INIT(8'h34)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(r_an[0]),
        .I1(r_an[2]),
        .I2(r_an[1]),
        .O(an_OBUF[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 delay0_carry
       (.CI(1'b0),
        .CO({delay0_carry_n_0,NLW_delay0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\delay_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay0_carry_n_4,delay0_carry_n_5,delay0_carry_n_6,delay0_carry_n_7}),
        .S({\delay_reg_n_0_[4] ,\delay_reg_n_0_[3] ,\delay_reg_n_0_[2] ,\delay_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 delay0_carry__0
       (.CI(delay0_carry_n_0),
        .CO({delay0_carry__0_n_0,NLW_delay0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay0_carry__0_n_4,delay0_carry__0_n_5,delay0_carry__0_n_6,delay0_carry__0_n_7}),
        .S({\delay_reg_n_0_[8] ,\delay_reg_n_0_[7] ,\delay_reg_n_0_[6] ,\delay_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 delay0_carry__1
       (.CI(delay0_carry__0_n_0),
        .CO({delay0_carry__1_n_0,NLW_delay0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay0_carry__1_n_4,delay0_carry__1_n_5,delay0_carry__1_n_6,delay0_carry__1_n_7}),
        .S({\delay_reg_n_0_[12] ,\delay_reg_n_0_[11] ,\delay_reg_n_0_[10] ,\delay_reg_n_0_[9] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 delay0_carry__2
       (.CI(delay0_carry__1_n_0),
        .CO({delay0_carry__2_n_0,NLW_delay0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay0_carry__2_n_4,delay0_carry__2_n_5,delay0_carry__2_n_6,delay0_carry__2_n_7}),
        .S({\delay_reg_n_0_[16] ,\delay_reg_n_0_[15] ,\delay_reg_n_0_[14] ,\delay_reg_n_0_[13] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 delay0_carry__3
       (.CI(delay0_carry__2_n_0),
        .CO(NLW_delay0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({delay0_carry__3_n_4,delay0_carry__3_n_5,delay0_carry__3_n_6,delay0_carry__3_n_7}),
        .S({\delay_reg_n_0_[20] ,\delay_reg_n_0_[19] ,\delay_reg_n_0_[18] ,\delay_reg_n_0_[17] }));
  (* \PinAttr:I3:HOLD_DETOUR  = "180" *) 
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hC9FF)) 
    \delay[0]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .I3(\delay_reg_n_0_[0] ),
        .O(\delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[10]_i_1 
       (.I0(delay0_carry__1_n_6),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[15]_i_1 
       (.I0(delay0_carry__2_n_5),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A28)) 
    \delay[16]_i_1 
       (.I0(\FSM_sequential_r_an[2]_i_2_n_0 ),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(r_seg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[16]_i_2 
       (.I0(delay0_carry__2_n_4),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[1]_i_1 
       (.I0(delay0_carry_n_7),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFC9)) 
    \delay[20]_i_1 
       (.I0(r_an[1]),
        .I1(r_an[2]),
        .I2(r_an[0]),
        .I3(\FSM_sequential_r_an[2]_i_2_n_0 ),
        .O(\delay[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[2]_i_1 
       (.I0(delay0_carry_n_6),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[3]_i_1 
       (.I0(delay0_carry_n_5),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[4]_i_1 
       (.I0(delay0_carry_n_4),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[7]_i_1 
       (.I0(delay0_carry__0_n_5),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    \delay[9]_i_1 
       (.I0(delay0_carry__1_n_7),
        .I1(r_an[1]),
        .I2(r_an[2]),
        .I3(r_an[0]),
        .O(\delay[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[0]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[0] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[10]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[10] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__1_n_5),
        .Q(\delay_reg_n_0_[11] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__1_n_4),
        .Q(\delay_reg_n_0_[12] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__2_n_7),
        .Q(\delay_reg_n_0_[13] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__2_n_6),
        .Q(\delay_reg_n_0_[14] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[15]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[15] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[16]_i_2_n_0 ),
        .Q(\delay_reg_n_0_[16] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__3_n_7),
        .Q(\delay_reg_n_0_[17] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__3_n_6),
        .Q(\delay_reg_n_0_[18] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__3_n_5),
        .Q(\delay_reg_n_0_[19] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[1]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[1] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__3_n_4),
        .Q(\delay_reg_n_0_[20] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[2]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[2] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[3]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[3] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[4]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[4] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__0_n_7),
        .Q(\delay_reg_n_0_[5] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__0_n_6),
        .Q(\delay_reg_n_0_[6] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[7]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[7] ),
        .R(r_seg));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(delay0_carry__0_n_4),
        .Q(\delay_reg_n_0_[8] ),
        .R(\delay[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delay[9]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[9] ),
        .R(r_seg));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \r_disp_1[2]_i_1 
       (.I0(temp_disp_val[2]),
        .I1(i[1]),
        .I2(i[3]),
        .I3(\r_disp_2[2]_i_2_n_0 ),
        .I4(r_disp_1),
        .I5(\r_disp_1_reg_n_0_[2] ),
        .O(\r_disp_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_disp_1[4]_i_1 
       (.I0(\r_disp_2[4]_i_2_n_0 ),
        .I1(r_disp_1),
        .I2(\r_disp_1_reg_n_0_[4] ),
        .O(\r_disp_1[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r_disp_1[6]_i_1 
       (.I0(r_disp_1),
        .I1(i[3]),
        .I2(i[1]),
        .O(\r_disp_1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00030020)) 
    \r_disp_1[6]_i_2 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[3]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(i[1]),
        .O(r_disp_1));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_1),
        .D(\r_disp_2[0]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[0] ),
        .R(\r_disp_1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_1),
        .D(\r_disp_2[1]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[1] ),
        .R(\r_disp_1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_1[2]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_1),
        .D(\r_disp_2[3]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[3] ),
        .R(\r_disp_1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_1[4]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_1),
        .D(\r_disp_2[5]_i_1_n_0 ),
        .Q(\r_disp_1_reg_n_0_[5] ),
        .R(\r_disp_1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_1),
        .D(\r_disp_2[6]_i_3_n_0 ),
        .Q(\r_disp_1_reg_n_0_[6] ),
        .R(\r_disp_1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0110)) 
    \r_disp_2[0]_i_1 
       (.I0(temp_disp_val[3]),
        .I1(temp_disp_val[1]),
        .I2(temp_disp_val[0]),
        .I3(temp_disp_val[2]),
        .O(\r_disp_2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \r_disp_2[1]_i_1 
       (.I0(temp_disp_val[2]),
        .I1(temp_disp_val[3]),
        .I2(temp_disp_val[1]),
        .I3(temp_disp_val[0]),
        .O(\r_disp_2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \r_disp_2[2]_i_1 
       (.I0(temp_disp_val[2]),
        .I1(i[2]),
        .I2(i[3]),
        .I3(\r_disp_2[2]_i_2_n_0 ),
        .I4(r_disp_2),
        .I5(\r_disp_2_reg_n_0_[2] ),
        .O(\r_disp_2[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_disp_2[2]_i_2 
       (.I0(temp_disp_val[3]),
        .I1(temp_disp_val[1]),
        .I2(temp_disp_val[0]),
        .O(\r_disp_2[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0086)) 
    \r_disp_2[3]_i_1 
       (.I0(temp_disp_val[2]),
        .I1(temp_disp_val[0]),
        .I2(temp_disp_val[1]),
        .I3(temp_disp_val[3]),
        .O(\r_disp_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_disp_2[4]_i_1 
       (.I0(\r_disp_2[4]_i_2_n_0 ),
        .I1(r_disp_2),
        .I2(\r_disp_2_reg_n_0_[4] ),
        .O(\r_disp_2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222323222323332)) 
    \r_disp_2[4]_i_2 
       (.I0(i[0]),
        .I1(i[3]),
        .I2(temp_disp_val[0]),
        .I3(temp_disp_val[2]),
        .I4(temp_disp_val[3]),
        .I5(temp_disp_val[1]),
        .O(\r_disp_2[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2032)) 
    \r_disp_2[5]_i_1 
       (.I0(temp_disp_val[1]),
        .I1(temp_disp_val[3]),
        .I2(temp_disp_val[0]),
        .I3(temp_disp_val[2]),
        .O(\r_disp_2[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r_disp_2[6]_i_1 
       (.I0(r_disp_2),
        .I1(i[3]),
        .I2(i[2]),
        .O(\r_disp_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000320)) 
    \r_disp_2[6]_i_2 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[3]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(i[1]),
        .O(r_disp_2));
  LUT4 #(
    .INIT(16'hEA99)) 
    \r_disp_2[6]_i_3 
       (.I0(temp_disp_val[3]),
        .I1(temp_disp_val[2]),
        .I2(temp_disp_val[0]),
        .I3(temp_disp_val[1]),
        .O(\r_disp_2[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_2),
        .D(\r_disp_2[0]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[0] ),
        .R(\r_disp_2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_2),
        .D(\r_disp_2[1]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[1] ),
        .R(\r_disp_2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_2[2]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_2),
        .D(\r_disp_2[3]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[3] ),
        .R(\r_disp_2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_2[4]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_2),
        .D(\r_disp_2[5]_i_1_n_0 ),
        .Q(\r_disp_2_reg_n_0_[5] ),
        .R(\r_disp_2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_2),
        .D(\r_disp_2[6]_i_3_n_0 ),
        .Q(\r_disp_2_reg_n_0_[6] ),
        .R(\r_disp_2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \r_disp_3[2]_i_1 
       (.I0(temp_disp_val[2]),
        .I1(i[2]),
        .I2(i[3]),
        .I3(\r_disp_2[2]_i_2_n_0 ),
        .I4(r_disp_3),
        .I5(\r_disp_3_reg_n_0_[2] ),
        .O(\r_disp_3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_disp_3[4]_i_1 
       (.I0(\r_disp_2[4]_i_2_n_0 ),
        .I1(r_disp_3),
        .I2(\r_disp_3_reg_n_0_[4] ),
        .O(\r_disp_3[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \r_disp_3[6]_i_1 
       (.I0(r_disp_3),
        .I1(i[3]),
        .I2(i[2]),
        .O(\r_disp_3[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000200C0)) 
    \r_disp_3[6]_i_2 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[3]),
        .I4(i[0]),
        .O(r_disp_3));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_3),
        .D(\r_disp_2[0]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[0] ),
        .R(\r_disp_3[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_3),
        .D(\r_disp_2[1]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[1] ),
        .R(\r_disp_3[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_3[2]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_3),
        .D(\r_disp_2[3]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[3] ),
        .R(\r_disp_3[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_3[4]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_3),
        .D(\r_disp_2[5]_i_1_n_0 ),
        .Q(\r_disp_3_reg_n_0_[5] ),
        .R(\r_disp_3[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_3),
        .D(\r_disp_2[6]_i_3_n_0 ),
        .Q(\r_disp_3_reg_n_0_[6] ),
        .R(\r_disp_3[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_disp_4[2]_i_1 
       (.I0(temp_disp_val[0]),
        .I1(temp_disp_val[1]),
        .I2(temp_disp_val[3]),
        .I3(temp_disp_val[2]),
        .O(\r_disp_4[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F00FFFF2F000000)) 
    \r_disp_4[4]_i_1 
       (.I0(\r_disp_4[4]_i_2_n_0 ),
        .I1(i[0]),
        .I2(i[3]),
        .I3(\r_disp_4[4]_i_3_n_0 ),
        .I4(r_disp_4),
        .I5(\r_disp_4_reg_n_0_[4] ),
        .O(\r_disp_4[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A2E)) 
    \r_disp_4[4]_i_2 
       (.I0(temp_disp_val[0]),
        .I1(temp_disp_val[2]),
        .I2(temp_disp_val[3]),
        .I3(temp_disp_val[1]),
        .O(\r_disp_4[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_disp_4[4]_i_3 
       (.I0(i[1]),
        .I1(i[2]),
        .O(\r_disp_4[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_disp_4[6]_i_1 
       (.I0(r_disp_4),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .O(\r_disp_4[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0002000C)) 
    \r_disp_4[6]_i_2 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[3]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(i[0]),
        .O(r_disp_4));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_2[0]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[0] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_2[1]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[1] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_4[2]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[2] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_2[3]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[3] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_disp_4[4]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_2[5]_i_1_n_0 ),
        .Q(\r_disp_4_reg_n_0_[5] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_disp_4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_disp_4),
        .D(\r_disp_2[6]_i_3_n_0 ),
        .Q(\r_disp_4_reg_n_0_[6] ),
        .R(\r_disp_4[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[0]_i_1 
       (.I0(\r_input_num[0]_i_2_n_0 ),
        .I1(\r_input_num_reg[7]_0 [0]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[0]));
  LUT6 #(
    .INIT(64'h7ED7149556D71481)) 
    \r_input_num[0]_i_2 
       (.I0(\temp_disp_val[3]_i_3_n_0 ),
        .I1(\r_input_num[2]_i_2_n_0 ),
        .I2(\r_input_num_reg_n_0_[3] ),
        .I3(\r_input_num_reg_n_0_[2] ),
        .I4(\r_input_num[1]_i_2_n_0 ),
        .I5(\r_input_num_reg_n_0_[1] ),
        .O(\r_input_num[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[10]_i_1 
       (.I0(in5[10]),
        .I1(\r_input_num_reg[15]_0 [2]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[10]));
  LUT5 #(
    .INIT(32'h63DC429C)) 
    \r_input_num[10]_i_2 
       (.I0(\r_input_num_reg_n_0_[12] ),
        .I1(\r_input_num_reg_n_0_[15] ),
        .I2(\r_input_num_reg_n_0_[14] ),
        .I3(\r_input_num_reg_n_0_[13] ),
        .I4(\r_input_num_reg_n_0_[11] ),
        .O(in5[10]));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[11]_i_1 
       (.I0(in5[11]),
        .I1(\r_input_num_reg[15]_0 [3]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[11]));
  LUT4 #(
    .INIT(16'hB02C)) 
    \r_input_num[11]_i_2 
       (.I0(\r_input_num_reg_n_0_[12] ),
        .I1(\r_input_num_reg_n_0_[15] ),
        .I2(\r_input_num_reg_n_0_[14] ),
        .I3(\r_input_num_reg_n_0_[13] ),
        .O(in5[11]));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[12]_i_1 
       (.I0(in5[12]),
        .I1(\r_input_num_reg[15]_0 [4]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[12]));
  LUT3 #(
    .INIT(8'hE0)) 
    \r_input_num[12]_i_2 
       (.I0(\r_input_num_reg_n_0_[13] ),
        .I1(\r_input_num_reg_n_0_[14] ),
        .I2(\r_input_num_reg_n_0_[15] ),
        .O(in5[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_input_num[13]_i_1 
       (.I0(i[3]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(\r_input_num_reg[15]_0 [5]),
        .O(r_input_num[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_input_num[14]_i_1 
       (.I0(i[3]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(\r_input_num_reg[15]_0 [6]),
        .O(r_input_num[14]));
  LUT4 #(
    .INIT(16'h1113)) 
    \r_input_num[15]_i_1 
       (.I0(i[3]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .O(r_input_num_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \r_input_num[15]_i_2 
       (.I0(i[3]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(\r_input_num_reg[15]_0 [7]),
        .O(r_input_num[15]));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[1]_i_1 
       (.I0(\r_input_num[1]_i_2_n_0 ),
        .I1(\r_input_num_reg[7]_0 [1]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[1]));
  LUT6 #(
    .INIT(64'h7ED71C9556C71481)) 
    \r_input_num[1]_i_2 
       (.I0(\r_input_num[1]_i_3_n_0 ),
        .I1(\r_input_num[3]_i_2_n_0 ),
        .I2(\r_input_num_reg_n_0_[4] ),
        .I3(\r_input_num_reg_n_0_[3] ),
        .I4(\r_input_num[1]_i_4_n_0 ),
        .I5(\r_input_num_reg_n_0_[2] ),
        .O(\r_input_num[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A69596569A5A5)) 
    \r_input_num[1]_i_3 
       (.I0(\r_input_num_reg_n_0_[4] ),
        .I1(in5[5]),
        .I2(\r_input_num_reg_n_0_[5] ),
        .I3(\r_input_num_reg_n_0_[6] ),
        .I4(\r_input_num[3]_i_3_n_0 ),
        .I5(\r_input_num[3]_i_4_n_0 ),
        .O(\r_input_num[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h936C816E897EC936)) 
    \r_input_num[1]_i_4 
       (.I0(\r_input_num_reg_n_0_[4] ),
        .I1(in5[5]),
        .I2(\r_input_num_reg_n_0_[5] ),
        .I3(\r_input_num_reg_n_0_[6] ),
        .I4(\r_input_num[3]_i_3_n_0 ),
        .I5(\r_input_num[3]_i_4_n_0 ),
        .O(\r_input_num[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[2]_i_1 
       (.I0(\r_input_num[2]_i_2_n_0 ),
        .I1(\r_input_num_reg[7]_0 [2]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[2]));
  LUT6 #(
    .INIT(64'h7DE719455D671841)) 
    \r_input_num[2]_i_2 
       (.I0(\r_input_num[2]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[5] ),
        .I2(\r_input_num_reg_n_0_[4] ),
        .I3(in5[4]),
        .I4(\r_input_num[3]_i_2_n_0 ),
        .I5(\r_input_num_reg_n_0_[3] ),
        .O(\r_input_num[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \r_input_num[2]_i_3 
       (.I0(\r_input_num_reg_n_0_[6] ),
        .I1(\r_input_num_reg_n_0_[5] ),
        .I2(in5[5]),
        .O(\r_input_num[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[3]_i_1 
       (.I0(\r_input_num[3]_i_2_n_0 ),
        .I1(\r_input_num_reg[7]_0 [3]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[3]));
  LUT6 #(
    .INIT(64'h7DE75D6339451841)) 
    \r_input_num[3]_i_2 
       (.I0(\r_input_num[3]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[6] ),
        .I2(\r_input_num_reg_n_0_[5] ),
        .I3(in5[5]),
        .I4(\r_input_num_reg_n_0_[4] ),
        .I5(\r_input_num[3]_i_4_n_0 ),
        .O(\r_input_num[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A69596569A5A5)) 
    \r_input_num[3]_i_3 
       (.I0(\r_input_num_reg_n_0_[6] ),
        .I1(in5[7]),
        .I2(\r_input_num_reg_n_0_[7] ),
        .I3(\r_input_num_reg_n_0_[8] ),
        .I4(\r_input_num[5]_i_3_n_0 ),
        .I5(\r_input_num[5]_i_4_n_0 ),
        .O(\r_input_num[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h936C816E897EC936)) 
    \r_input_num[3]_i_4 
       (.I0(\r_input_num_reg_n_0_[6] ),
        .I1(in5[7]),
        .I2(\r_input_num_reg_n_0_[7] ),
        .I3(\r_input_num_reg_n_0_[8] ),
        .I4(\r_input_num[5]_i_3_n_0 ),
        .I5(\r_input_num[5]_i_4_n_0 ),
        .O(\r_input_num[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[4]_i_1 
       (.I0(in5[4]),
        .I1(\r_input_num_reg[7]_0 [4]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[4]));
  LUT6 #(
    .INIT(64'h7DE75D6719451841)) 
    \r_input_num[4]_i_2 
       (.I0(\r_input_num[4]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[7] ),
        .I2(\r_input_num_reg_n_0_[6] ),
        .I3(in5[6]),
        .I4(\r_input_num_reg_n_0_[5] ),
        .I5(in5[5]),
        .O(in5[4]));
  LUT3 #(
    .INIT(8'h69)) 
    \r_input_num[4]_i_3 
       (.I0(\r_input_num_reg_n_0_[8] ),
        .I1(\r_input_num_reg_n_0_[7] ),
        .I2(in5[7]),
        .O(\r_input_num[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[5]_i_1 
       (.I0(in5[5]),
        .I1(\r_input_num_reg[7]_0 [5]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[5]));
  LUT6 #(
    .INIT(64'h7DE75D6339451841)) 
    \r_input_num[5]_i_2 
       (.I0(\r_input_num[5]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[8] ),
        .I2(\r_input_num_reg_n_0_[7] ),
        .I3(in5[7]),
        .I4(\r_input_num_reg_n_0_[6] ),
        .I5(\r_input_num[5]_i_4_n_0 ),
        .O(in5[5]));
  LUT6 #(
    .INIT(64'h5A5A69596569A5A5)) 
    \r_input_num[5]_i_3 
       (.I0(\r_input_num_reg_n_0_[8] ),
        .I1(in5[9]),
        .I2(\r_input_num_reg_n_0_[9] ),
        .I3(\r_input_num_reg_n_0_[10] ),
        .I4(\r_input_num[7]_i_3_n_0 ),
        .I5(\r_input_num[7]_i_4_n_0 ),
        .O(\r_input_num[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h936C816E897EC936)) 
    \r_input_num[5]_i_4 
       (.I0(\r_input_num_reg_n_0_[8] ),
        .I1(in5[9]),
        .I2(\r_input_num_reg_n_0_[9] ),
        .I3(\r_input_num_reg_n_0_[10] ),
        .I4(\r_input_num[7]_i_3_n_0 ),
        .I5(\r_input_num[7]_i_4_n_0 ),
        .O(\r_input_num[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[6]_i_1 
       (.I0(in5[6]),
        .I1(\r_input_num_reg[7]_0 [6]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[6]));
  LUT6 #(
    .INIT(64'h7DE75D6719451841)) 
    \r_input_num[6]_i_2 
       (.I0(\r_input_num[6]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[9] ),
        .I2(\r_input_num_reg_n_0_[8] ),
        .I3(in5[8]),
        .I4(\r_input_num_reg_n_0_[7] ),
        .I5(in5[7]),
        .O(in5[6]));
  LUT3 #(
    .INIT(8'h69)) 
    \r_input_num[6]_i_3 
       (.I0(\r_input_num_reg_n_0_[10] ),
        .I1(\r_input_num_reg_n_0_[9] ),
        .I2(in5[9]),
        .O(\r_input_num[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[7]_i_1 
       (.I0(in5[7]),
        .I1(\r_input_num_reg[7]_0 [7]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[7]));
  LUT6 #(
    .INIT(64'h7DE75D6339451841)) 
    \r_input_num[7]_i_2 
       (.I0(\r_input_num[7]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[10] ),
        .I2(\r_input_num_reg_n_0_[9] ),
        .I3(in5[9]),
        .I4(\r_input_num_reg_n_0_[8] ),
        .I5(\r_input_num[7]_i_4_n_0 ),
        .O(in5[7]));
  LUT6 #(
    .INIT(64'h9696596965969659)) 
    \r_input_num[7]_i_3 
       (.I0(\r_input_num_reg_n_0_[10] ),
        .I1(\r_input_num_reg_n_0_[11] ),
        .I2(\r_input_num_reg_n_0_[13] ),
        .I3(\r_input_num_reg_n_0_[14] ),
        .I4(\r_input_num_reg_n_0_[15] ),
        .I5(\r_input_num_reg_n_0_[12] ),
        .O(\r_input_num[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE718AE718AE718AE)) 
    \r_input_num[7]_i_4 
       (.I0(\r_input_num_reg_n_0_[10] ),
        .I1(\r_input_num_reg_n_0_[11] ),
        .I2(\r_input_num_reg_n_0_[13] ),
        .I3(\r_input_num_reg_n_0_[14] ),
        .I4(\r_input_num_reg_n_0_[15] ),
        .I5(\r_input_num_reg_n_0_[12] ),
        .O(\r_input_num[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[8]_i_1 
       (.I0(in5[8]),
        .I1(\r_input_num_reg[15]_0 [0]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[8]));
  LUT6 #(
    .INIT(64'h7DE75D6719451841)) 
    \r_input_num[8]_i_2 
       (.I0(\r_input_num[8]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[11] ),
        .I2(\r_input_num_reg_n_0_[10] ),
        .I3(in5[10]),
        .I4(\r_input_num_reg_n_0_[9] ),
        .I5(in5[9]),
        .O(in5[8]));
  LUT5 #(
    .INIT(32'h695A5695)) 
    \r_input_num[8]_i_3 
       (.I0(\r_input_num_reg_n_0_[11] ),
        .I1(\r_input_num_reg_n_0_[13] ),
        .I2(\r_input_num_reg_n_0_[14] ),
        .I3(\r_input_num_reg_n_0_[15] ),
        .I4(\r_input_num_reg_n_0_[12] ),
        .O(\r_input_num[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0AAC)) 
    \r_input_num[9]_i_1 
       (.I0(in5[9]),
        .I1(\r_input_num_reg[15]_0 [1]),
        .I2(i[3]),
        .I3(i[1]),
        .I4(i[2]),
        .O(r_input_num[9]));
  LUT6 #(
    .INIT(64'h2F4BD2F40B42D0B4)) 
    \r_input_num[9]_i_2 
       (.I0(\r_input_num_reg_n_0_[11] ),
        .I1(\r_input_num_reg_n_0_[13] ),
        .I2(\r_input_num_reg_n_0_[14] ),
        .I3(\r_input_num_reg_n_0_[15] ),
        .I4(\r_input_num_reg_n_0_[12] ),
        .I5(\r_input_num_reg_n_0_[10] ),
        .O(in5[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[0]),
        .Q(\r_input_num_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[10]),
        .Q(\r_input_num_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[11]),
        .Q(\r_input_num_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[12]),
        .Q(\r_input_num_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[13]),
        .Q(\r_input_num_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[14]),
        .Q(\r_input_num_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[15]),
        .Q(\r_input_num_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[1]),
        .Q(\r_input_num_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[2]),
        .Q(\r_input_num_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[3]),
        .Q(\r_input_num_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[4]),
        .Q(\r_input_num_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[5]),
        .Q(\r_input_num_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[6]),
        .Q(\r_input_num_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[7]),
        .Q(\r_input_num_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[8]),
        .Q(\r_input_num_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_input_num_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(r_input_num_1),
        .D(r_input_num[9]),
        .Q(\r_input_num_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[0]_i_1 
       (.I0(\r_disp_3_reg_n_0_[0] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[0] ),
        .I3(r_an[1]),
        .I4(\r_seg[0]_i_2_n_0 ),
        .O(\r_seg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[0]_i_2 
       (.I0(\r_disp_4_reg_n_0_[0] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[0] ),
        .O(\r_seg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[1]_i_1 
       (.I0(\r_disp_3_reg_n_0_[1] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[1] ),
        .I3(r_an[1]),
        .I4(\r_seg[1]_i_2_n_0 ),
        .O(\r_seg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[1]_i_2 
       (.I0(\r_disp_4_reg_n_0_[1] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[1] ),
        .O(\r_seg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[2]_i_1 
       (.I0(\r_disp_3_reg_n_0_[2] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[2] ),
        .I3(r_an[1]),
        .I4(\r_seg[2]_i_2_n_0 ),
        .O(\r_seg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[2]_i_2 
       (.I0(\r_disp_4_reg_n_0_[2] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[2] ),
        .O(\r_seg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[3]_i_1 
       (.I0(\r_disp_3_reg_n_0_[3] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[3] ),
        .I3(r_an[1]),
        .I4(\r_seg[3]_i_2_n_0 ),
        .O(\r_seg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[3]_i_2 
       (.I0(\r_disp_4_reg_n_0_[3] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[3] ),
        .O(\r_seg[3]_i_2_n_0 ));
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
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_seg[6]_i_1 
       (.I0(\r_disp_3_reg_n_0_[6] ),
        .I1(r_an[0]),
        .I2(\r_disp_2_reg_n_0_[6] ),
        .I3(r_an[1]),
        .I4(\r_seg[6]_i_2_n_0 ),
        .O(\r_seg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_seg[6]_i_2 
       (.I0(\r_disp_4_reg_n_0_[6] ),
        .I1(r_an[2]),
        .I2(\r_disp_1_reg_n_0_[6] ),
        .O(\r_seg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(r_seg),
        .D(\r_seg[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_disp_val[1]_i_1 
       (.I0(\r_input_num[0]_i_2_n_0 ),
        .I1(\r_input_num_reg_n_0_[1] ),
        .O(\temp_disp_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF56EBFF002881)) 
    \temp_disp_val[2]_i_1 
       (.I0(\temp_disp_val[3]_i_3_n_0 ),
        .I1(\r_input_num[2]_i_2_n_0 ),
        .I2(\r_input_num_reg_n_0_[3] ),
        .I3(\r_input_num[1]_i_2_n_0 ),
        .I4(\r_input_num_reg_n_0_[1] ),
        .I5(\r_input_num_reg_n_0_[2] ),
        .O(\temp_disp_val[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \temp_disp_val[3]_i_1 
       (.I0(\FSM_sequential_i[1]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[3]),
        .O(temp_disp_val_0));
  LUT6 #(
    .INIT(64'h400835AB35AB8004)) 
    \temp_disp_val[3]_i_2 
       (.I0(\temp_disp_val[3]_i_3_n_0 ),
        .I1(\r_input_num_reg_n_0_[1] ),
        .I2(\r_input_num_reg_n_0_[2] ),
        .I3(\r_input_num[1]_i_2_n_0 ),
        .I4(\r_input_num[2]_i_2_n_0 ),
        .I5(\r_input_num_reg_n_0_[3] ),
        .O(\temp_disp_val[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_disp_val[3]_i_3 
       (.I0(\r_input_num_reg_n_0_[4] ),
        .I1(\r_input_num_reg_n_0_[3] ),
        .I2(\r_input_num[3]_i_2_n_0 ),
        .O(\temp_disp_val[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_disp_val_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_disp_val_0),
        .D(\r_input_num_reg_n_0_[0] ),
        .Q(temp_disp_val[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_disp_val_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_disp_val_0),
        .D(\temp_disp_val[1]_i_1_n_0 ),
        .Q(temp_disp_val[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_disp_val_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_disp_val_0),
        .D(\temp_disp_val[2]_i_1_n_0 ),
        .Q(temp_disp_val[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_disp_val_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_disp_val_0),
        .D(\temp_disp_val[3]_i_2_n_0 ),
        .Q(temp_disp_val[3]),
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
