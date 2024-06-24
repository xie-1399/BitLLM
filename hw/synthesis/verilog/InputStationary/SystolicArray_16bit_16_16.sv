// Generator : SpinalHDL v1.9.4    git head : 270018552577f3bb8e5339ee2583c9c22d324215
// Component : SystolicArray
// Git hash  : 95d4b99c2c5c0c9e41b84111df30141758565e63

`timescale 1ns/1ps

module SystolicArray (
  input  wire          io_load,
  input  wire [15:0]   io_activation_0,
  input  wire [15:0]   io_activation_1,
  input  wire [15:0]   io_activation_2,
  input  wire [15:0]   io_activation_3,
  input  wire [15:0]   io_activation_4,
  input  wire [15:0]   io_activation_5,
  input  wire [15:0]   io_activation_6,
  input  wire [15:0]   io_activation_7,
  input  wire [15:0]   io_activation_8,
  input  wire [15:0]   io_activation_9,
  input  wire [15:0]   io_activation_10,
  input  wire [15:0]   io_activation_11,
  input  wire [15:0]   io_activation_12,
  input  wire [15:0]   io_activation_13,
  input  wire [15:0]   io_activation_14,
  input  wire [15:0]   io_activation_15,
  input  wire [15:0]   io_weight_0,
  input  wire [15:0]   io_weight_1,
  input  wire [15:0]   io_weight_2,
  input  wire [15:0]   io_weight_3,
  input  wire [15:0]   io_weight_4,
  input  wire [15:0]   io_weight_5,
  input  wire [15:0]   io_weight_6,
  input  wire [15:0]   io_weight_7,
  input  wire [15:0]   io_weight_8,
  input  wire [15:0]   io_weight_9,
  input  wire [15:0]   io_weight_10,
  input  wire [15:0]   io_weight_11,
  input  wire [15:0]   io_weight_12,
  input  wire [15:0]   io_weight_13,
  input  wire [15:0]   io_weight_14,
  input  wire [15:0]   io_weight_15,
  output wire [15:0]   io_output_0,
  output wire [15:0]   io_output_1,
  output wire [15:0]   io_output_2,
  output wire [15:0]   io_output_3,
  output wire [15:0]   io_output_4,
  output wire [15:0]   io_output_5,
  output wire [15:0]   io_output_6,
  output wire [15:0]   io_output_7,
  output wire [15:0]   io_output_8,
  output wire [15:0]   io_output_9,
  output wire [15:0]   io_output_10,
  output wire [15:0]   io_output_11,
  output wire [15:0]   io_output_12,
  output wire [15:0]   io_output_13,
  output wire [15:0]   io_output_14,
  output wire [15:0]   io_output_15,
  input  wire          clk,
  input  wire          reset
);

  wire       [15:0]   mac_0_0_io_passthrough;
  wire       [15:0]   mac_0_0_io_macOut;
  wire       [15:0]   mac_0_1_io_passthrough;
  wire       [15:0]   mac_0_1_io_macOut;
  wire       [15:0]   mac_0_2_io_passthrough;
  wire       [15:0]   mac_0_2_io_macOut;
  wire       [15:0]   mac_0_3_io_passthrough;
  wire       [15:0]   mac_0_3_io_macOut;
  wire       [15:0]   mac_0_4_io_passthrough;
  wire       [15:0]   mac_0_4_io_macOut;
  wire       [15:0]   mac_0_5_io_passthrough;
  wire       [15:0]   mac_0_5_io_macOut;
  wire       [15:0]   mac_0_6_io_passthrough;
  wire       [15:0]   mac_0_6_io_macOut;
  wire       [15:0]   mac_0_7_io_passthrough;
  wire       [15:0]   mac_0_7_io_macOut;
  wire       [15:0]   mac_0_8_io_passthrough;
  wire       [15:0]   mac_0_8_io_macOut;
  wire       [15:0]   mac_0_9_io_passthrough;
  wire       [15:0]   mac_0_9_io_macOut;
  wire       [15:0]   mac_0_10_io_passthrough;
  wire       [15:0]   mac_0_10_io_macOut;
  wire       [15:0]   mac_0_11_io_passthrough;
  wire       [15:0]   mac_0_11_io_macOut;
  wire       [15:0]   mac_0_12_io_passthrough;
  wire       [15:0]   mac_0_12_io_macOut;
  wire       [15:0]   mac_0_13_io_passthrough;
  wire       [15:0]   mac_0_13_io_macOut;
  wire       [15:0]   mac_0_14_io_passthrough;
  wire       [15:0]   mac_0_14_io_macOut;
  wire       [15:0]   mac_0_15_io_passthrough;
  wire       [15:0]   mac_0_15_io_macOut;
  wire       [15:0]   mac_1_0_io_passthrough;
  wire       [15:0]   mac_1_0_io_macOut;
  wire       [15:0]   mac_1_1_io_passthrough;
  wire       [15:0]   mac_1_1_io_macOut;
  wire       [15:0]   mac_1_2_io_passthrough;
  wire       [15:0]   mac_1_2_io_macOut;
  wire       [15:0]   mac_1_3_io_passthrough;
  wire       [15:0]   mac_1_3_io_macOut;
  wire       [15:0]   mac_1_4_io_passthrough;
  wire       [15:0]   mac_1_4_io_macOut;
  wire       [15:0]   mac_1_5_io_passthrough;
  wire       [15:0]   mac_1_5_io_macOut;
  wire       [15:0]   mac_1_6_io_passthrough;
  wire       [15:0]   mac_1_6_io_macOut;
  wire       [15:0]   mac_1_7_io_passthrough;
  wire       [15:0]   mac_1_7_io_macOut;
  wire       [15:0]   mac_1_8_io_passthrough;
  wire       [15:0]   mac_1_8_io_macOut;
  wire       [15:0]   mac_1_9_io_passthrough;
  wire       [15:0]   mac_1_9_io_macOut;
  wire       [15:0]   mac_1_10_io_passthrough;
  wire       [15:0]   mac_1_10_io_macOut;
  wire       [15:0]   mac_1_11_io_passthrough;
  wire       [15:0]   mac_1_11_io_macOut;
  wire       [15:0]   mac_1_12_io_passthrough;
  wire       [15:0]   mac_1_12_io_macOut;
  wire       [15:0]   mac_1_13_io_passthrough;
  wire       [15:0]   mac_1_13_io_macOut;
  wire       [15:0]   mac_1_14_io_passthrough;
  wire       [15:0]   mac_1_14_io_macOut;
  wire       [15:0]   mac_1_15_io_passthrough;
  wire       [15:0]   mac_1_15_io_macOut;
  wire       [15:0]   mac_2_0_io_passthrough;
  wire       [15:0]   mac_2_0_io_macOut;
  wire       [15:0]   mac_2_1_io_passthrough;
  wire       [15:0]   mac_2_1_io_macOut;
  wire       [15:0]   mac_2_2_io_passthrough;
  wire       [15:0]   mac_2_2_io_macOut;
  wire       [15:0]   mac_2_3_io_passthrough;
  wire       [15:0]   mac_2_3_io_macOut;
  wire       [15:0]   mac_2_4_io_passthrough;
  wire       [15:0]   mac_2_4_io_macOut;
  wire       [15:0]   mac_2_5_io_passthrough;
  wire       [15:0]   mac_2_5_io_macOut;
  wire       [15:0]   mac_2_6_io_passthrough;
  wire       [15:0]   mac_2_6_io_macOut;
  wire       [15:0]   mac_2_7_io_passthrough;
  wire       [15:0]   mac_2_7_io_macOut;
  wire       [15:0]   mac_2_8_io_passthrough;
  wire       [15:0]   mac_2_8_io_macOut;
  wire       [15:0]   mac_2_9_io_passthrough;
  wire       [15:0]   mac_2_9_io_macOut;
  wire       [15:0]   mac_2_10_io_passthrough;
  wire       [15:0]   mac_2_10_io_macOut;
  wire       [15:0]   mac_2_11_io_passthrough;
  wire       [15:0]   mac_2_11_io_macOut;
  wire       [15:0]   mac_2_12_io_passthrough;
  wire       [15:0]   mac_2_12_io_macOut;
  wire       [15:0]   mac_2_13_io_passthrough;
  wire       [15:0]   mac_2_13_io_macOut;
  wire       [15:0]   mac_2_14_io_passthrough;
  wire       [15:0]   mac_2_14_io_macOut;
  wire       [15:0]   mac_2_15_io_passthrough;
  wire       [15:0]   mac_2_15_io_macOut;
  wire       [15:0]   mac_3_0_io_passthrough;
  wire       [15:0]   mac_3_0_io_macOut;
  wire       [15:0]   mac_3_1_io_passthrough;
  wire       [15:0]   mac_3_1_io_macOut;
  wire       [15:0]   mac_3_2_io_passthrough;
  wire       [15:0]   mac_3_2_io_macOut;
  wire       [15:0]   mac_3_3_io_passthrough;
  wire       [15:0]   mac_3_3_io_macOut;
  wire       [15:0]   mac_3_4_io_passthrough;
  wire       [15:0]   mac_3_4_io_macOut;
  wire       [15:0]   mac_3_5_io_passthrough;
  wire       [15:0]   mac_3_5_io_macOut;
  wire       [15:0]   mac_3_6_io_passthrough;
  wire       [15:0]   mac_3_6_io_macOut;
  wire       [15:0]   mac_3_7_io_passthrough;
  wire       [15:0]   mac_3_7_io_macOut;
  wire       [15:0]   mac_3_8_io_passthrough;
  wire       [15:0]   mac_3_8_io_macOut;
  wire       [15:0]   mac_3_9_io_passthrough;
  wire       [15:0]   mac_3_9_io_macOut;
  wire       [15:0]   mac_3_10_io_passthrough;
  wire       [15:0]   mac_3_10_io_macOut;
  wire       [15:0]   mac_3_11_io_passthrough;
  wire       [15:0]   mac_3_11_io_macOut;
  wire       [15:0]   mac_3_12_io_passthrough;
  wire       [15:0]   mac_3_12_io_macOut;
  wire       [15:0]   mac_3_13_io_passthrough;
  wire       [15:0]   mac_3_13_io_macOut;
  wire       [15:0]   mac_3_14_io_passthrough;
  wire       [15:0]   mac_3_14_io_macOut;
  wire       [15:0]   mac_3_15_io_passthrough;
  wire       [15:0]   mac_3_15_io_macOut;
  wire       [15:0]   mac_4_0_io_passthrough;
  wire       [15:0]   mac_4_0_io_macOut;
  wire       [15:0]   mac_4_1_io_passthrough;
  wire       [15:0]   mac_4_1_io_macOut;
  wire       [15:0]   mac_4_2_io_passthrough;
  wire       [15:0]   mac_4_2_io_macOut;
  wire       [15:0]   mac_4_3_io_passthrough;
  wire       [15:0]   mac_4_3_io_macOut;
  wire       [15:0]   mac_4_4_io_passthrough;
  wire       [15:0]   mac_4_4_io_macOut;
  wire       [15:0]   mac_4_5_io_passthrough;
  wire       [15:0]   mac_4_5_io_macOut;
  wire       [15:0]   mac_4_6_io_passthrough;
  wire       [15:0]   mac_4_6_io_macOut;
  wire       [15:0]   mac_4_7_io_passthrough;
  wire       [15:0]   mac_4_7_io_macOut;
  wire       [15:0]   mac_4_8_io_passthrough;
  wire       [15:0]   mac_4_8_io_macOut;
  wire       [15:0]   mac_4_9_io_passthrough;
  wire       [15:0]   mac_4_9_io_macOut;
  wire       [15:0]   mac_4_10_io_passthrough;
  wire       [15:0]   mac_4_10_io_macOut;
  wire       [15:0]   mac_4_11_io_passthrough;
  wire       [15:0]   mac_4_11_io_macOut;
  wire       [15:0]   mac_4_12_io_passthrough;
  wire       [15:0]   mac_4_12_io_macOut;
  wire       [15:0]   mac_4_13_io_passthrough;
  wire       [15:0]   mac_4_13_io_macOut;
  wire       [15:0]   mac_4_14_io_passthrough;
  wire       [15:0]   mac_4_14_io_macOut;
  wire       [15:0]   mac_4_15_io_passthrough;
  wire       [15:0]   mac_4_15_io_macOut;
  wire       [15:0]   mac_5_0_io_passthrough;
  wire       [15:0]   mac_5_0_io_macOut;
  wire       [15:0]   mac_5_1_io_passthrough;
  wire       [15:0]   mac_5_1_io_macOut;
  wire       [15:0]   mac_5_2_io_passthrough;
  wire       [15:0]   mac_5_2_io_macOut;
  wire       [15:0]   mac_5_3_io_passthrough;
  wire       [15:0]   mac_5_3_io_macOut;
  wire       [15:0]   mac_5_4_io_passthrough;
  wire       [15:0]   mac_5_4_io_macOut;
  wire       [15:0]   mac_5_5_io_passthrough;
  wire       [15:0]   mac_5_5_io_macOut;
  wire       [15:0]   mac_5_6_io_passthrough;
  wire       [15:0]   mac_5_6_io_macOut;
  wire       [15:0]   mac_5_7_io_passthrough;
  wire       [15:0]   mac_5_7_io_macOut;
  wire       [15:0]   mac_5_8_io_passthrough;
  wire       [15:0]   mac_5_8_io_macOut;
  wire       [15:0]   mac_5_9_io_passthrough;
  wire       [15:0]   mac_5_9_io_macOut;
  wire       [15:0]   mac_5_10_io_passthrough;
  wire       [15:0]   mac_5_10_io_macOut;
  wire       [15:0]   mac_5_11_io_passthrough;
  wire       [15:0]   mac_5_11_io_macOut;
  wire       [15:0]   mac_5_12_io_passthrough;
  wire       [15:0]   mac_5_12_io_macOut;
  wire       [15:0]   mac_5_13_io_passthrough;
  wire       [15:0]   mac_5_13_io_macOut;
  wire       [15:0]   mac_5_14_io_passthrough;
  wire       [15:0]   mac_5_14_io_macOut;
  wire       [15:0]   mac_5_15_io_passthrough;
  wire       [15:0]   mac_5_15_io_macOut;
  wire       [15:0]   mac_6_0_io_passthrough;
  wire       [15:0]   mac_6_0_io_macOut;
  wire       [15:0]   mac_6_1_io_passthrough;
  wire       [15:0]   mac_6_1_io_macOut;
  wire       [15:0]   mac_6_2_io_passthrough;
  wire       [15:0]   mac_6_2_io_macOut;
  wire       [15:0]   mac_6_3_io_passthrough;
  wire       [15:0]   mac_6_3_io_macOut;
  wire       [15:0]   mac_6_4_io_passthrough;
  wire       [15:0]   mac_6_4_io_macOut;
  wire       [15:0]   mac_6_5_io_passthrough;
  wire       [15:0]   mac_6_5_io_macOut;
  wire       [15:0]   mac_6_6_io_passthrough;
  wire       [15:0]   mac_6_6_io_macOut;
  wire       [15:0]   mac_6_7_io_passthrough;
  wire       [15:0]   mac_6_7_io_macOut;
  wire       [15:0]   mac_6_8_io_passthrough;
  wire       [15:0]   mac_6_8_io_macOut;
  wire       [15:0]   mac_6_9_io_passthrough;
  wire       [15:0]   mac_6_9_io_macOut;
  wire       [15:0]   mac_6_10_io_passthrough;
  wire       [15:0]   mac_6_10_io_macOut;
  wire       [15:0]   mac_6_11_io_passthrough;
  wire       [15:0]   mac_6_11_io_macOut;
  wire       [15:0]   mac_6_12_io_passthrough;
  wire       [15:0]   mac_6_12_io_macOut;
  wire       [15:0]   mac_6_13_io_passthrough;
  wire       [15:0]   mac_6_13_io_macOut;
  wire       [15:0]   mac_6_14_io_passthrough;
  wire       [15:0]   mac_6_14_io_macOut;
  wire       [15:0]   mac_6_15_io_passthrough;
  wire       [15:0]   mac_6_15_io_macOut;
  wire       [15:0]   mac_7_0_io_passthrough;
  wire       [15:0]   mac_7_0_io_macOut;
  wire       [15:0]   mac_7_1_io_passthrough;
  wire       [15:0]   mac_7_1_io_macOut;
  wire       [15:0]   mac_7_2_io_passthrough;
  wire       [15:0]   mac_7_2_io_macOut;
  wire       [15:0]   mac_7_3_io_passthrough;
  wire       [15:0]   mac_7_3_io_macOut;
  wire       [15:0]   mac_7_4_io_passthrough;
  wire       [15:0]   mac_7_4_io_macOut;
  wire       [15:0]   mac_7_5_io_passthrough;
  wire       [15:0]   mac_7_5_io_macOut;
  wire       [15:0]   mac_7_6_io_passthrough;
  wire       [15:0]   mac_7_6_io_macOut;
  wire       [15:0]   mac_7_7_io_passthrough;
  wire       [15:0]   mac_7_7_io_macOut;
  wire       [15:0]   mac_7_8_io_passthrough;
  wire       [15:0]   mac_7_8_io_macOut;
  wire       [15:0]   mac_7_9_io_passthrough;
  wire       [15:0]   mac_7_9_io_macOut;
  wire       [15:0]   mac_7_10_io_passthrough;
  wire       [15:0]   mac_7_10_io_macOut;
  wire       [15:0]   mac_7_11_io_passthrough;
  wire       [15:0]   mac_7_11_io_macOut;
  wire       [15:0]   mac_7_12_io_passthrough;
  wire       [15:0]   mac_7_12_io_macOut;
  wire       [15:0]   mac_7_13_io_passthrough;
  wire       [15:0]   mac_7_13_io_macOut;
  wire       [15:0]   mac_7_14_io_passthrough;
  wire       [15:0]   mac_7_14_io_macOut;
  wire       [15:0]   mac_7_15_io_passthrough;
  wire       [15:0]   mac_7_15_io_macOut;
  wire       [15:0]   mac_8_0_io_passthrough;
  wire       [15:0]   mac_8_0_io_macOut;
  wire       [15:0]   mac_8_1_io_passthrough;
  wire       [15:0]   mac_8_1_io_macOut;
  wire       [15:0]   mac_8_2_io_passthrough;
  wire       [15:0]   mac_8_2_io_macOut;
  wire       [15:0]   mac_8_3_io_passthrough;
  wire       [15:0]   mac_8_3_io_macOut;
  wire       [15:0]   mac_8_4_io_passthrough;
  wire       [15:0]   mac_8_4_io_macOut;
  wire       [15:0]   mac_8_5_io_passthrough;
  wire       [15:0]   mac_8_5_io_macOut;
  wire       [15:0]   mac_8_6_io_passthrough;
  wire       [15:0]   mac_8_6_io_macOut;
  wire       [15:0]   mac_8_7_io_passthrough;
  wire       [15:0]   mac_8_7_io_macOut;
  wire       [15:0]   mac_8_8_io_passthrough;
  wire       [15:0]   mac_8_8_io_macOut;
  wire       [15:0]   mac_8_9_io_passthrough;
  wire       [15:0]   mac_8_9_io_macOut;
  wire       [15:0]   mac_8_10_io_passthrough;
  wire       [15:0]   mac_8_10_io_macOut;
  wire       [15:0]   mac_8_11_io_passthrough;
  wire       [15:0]   mac_8_11_io_macOut;
  wire       [15:0]   mac_8_12_io_passthrough;
  wire       [15:0]   mac_8_12_io_macOut;
  wire       [15:0]   mac_8_13_io_passthrough;
  wire       [15:0]   mac_8_13_io_macOut;
  wire       [15:0]   mac_8_14_io_passthrough;
  wire       [15:0]   mac_8_14_io_macOut;
  wire       [15:0]   mac_8_15_io_passthrough;
  wire       [15:0]   mac_8_15_io_macOut;
  wire       [15:0]   mac_9_0_io_passthrough;
  wire       [15:0]   mac_9_0_io_macOut;
  wire       [15:0]   mac_9_1_io_passthrough;
  wire       [15:0]   mac_9_1_io_macOut;
  wire       [15:0]   mac_9_2_io_passthrough;
  wire       [15:0]   mac_9_2_io_macOut;
  wire       [15:0]   mac_9_3_io_passthrough;
  wire       [15:0]   mac_9_3_io_macOut;
  wire       [15:0]   mac_9_4_io_passthrough;
  wire       [15:0]   mac_9_4_io_macOut;
  wire       [15:0]   mac_9_5_io_passthrough;
  wire       [15:0]   mac_9_5_io_macOut;
  wire       [15:0]   mac_9_6_io_passthrough;
  wire       [15:0]   mac_9_6_io_macOut;
  wire       [15:0]   mac_9_7_io_passthrough;
  wire       [15:0]   mac_9_7_io_macOut;
  wire       [15:0]   mac_9_8_io_passthrough;
  wire       [15:0]   mac_9_8_io_macOut;
  wire       [15:0]   mac_9_9_io_passthrough;
  wire       [15:0]   mac_9_9_io_macOut;
  wire       [15:0]   mac_9_10_io_passthrough;
  wire       [15:0]   mac_9_10_io_macOut;
  wire       [15:0]   mac_9_11_io_passthrough;
  wire       [15:0]   mac_9_11_io_macOut;
  wire       [15:0]   mac_9_12_io_passthrough;
  wire       [15:0]   mac_9_12_io_macOut;
  wire       [15:0]   mac_9_13_io_passthrough;
  wire       [15:0]   mac_9_13_io_macOut;
  wire       [15:0]   mac_9_14_io_passthrough;
  wire       [15:0]   mac_9_14_io_macOut;
  wire       [15:0]   mac_9_15_io_passthrough;
  wire       [15:0]   mac_9_15_io_macOut;
  wire       [15:0]   mac_10_0_io_passthrough;
  wire       [15:0]   mac_10_0_io_macOut;
  wire       [15:0]   mac_10_1_io_passthrough;
  wire       [15:0]   mac_10_1_io_macOut;
  wire       [15:0]   mac_10_2_io_passthrough;
  wire       [15:0]   mac_10_2_io_macOut;
  wire       [15:0]   mac_10_3_io_passthrough;
  wire       [15:0]   mac_10_3_io_macOut;
  wire       [15:0]   mac_10_4_io_passthrough;
  wire       [15:0]   mac_10_4_io_macOut;
  wire       [15:0]   mac_10_5_io_passthrough;
  wire       [15:0]   mac_10_5_io_macOut;
  wire       [15:0]   mac_10_6_io_passthrough;
  wire       [15:0]   mac_10_6_io_macOut;
  wire       [15:0]   mac_10_7_io_passthrough;
  wire       [15:0]   mac_10_7_io_macOut;
  wire       [15:0]   mac_10_8_io_passthrough;
  wire       [15:0]   mac_10_8_io_macOut;
  wire       [15:0]   mac_10_9_io_passthrough;
  wire       [15:0]   mac_10_9_io_macOut;
  wire       [15:0]   mac_10_10_io_passthrough;
  wire       [15:0]   mac_10_10_io_macOut;
  wire       [15:0]   mac_10_11_io_passthrough;
  wire       [15:0]   mac_10_11_io_macOut;
  wire       [15:0]   mac_10_12_io_passthrough;
  wire       [15:0]   mac_10_12_io_macOut;
  wire       [15:0]   mac_10_13_io_passthrough;
  wire       [15:0]   mac_10_13_io_macOut;
  wire       [15:0]   mac_10_14_io_passthrough;
  wire       [15:0]   mac_10_14_io_macOut;
  wire       [15:0]   mac_10_15_io_passthrough;
  wire       [15:0]   mac_10_15_io_macOut;
  wire       [15:0]   mac_11_0_io_passthrough;
  wire       [15:0]   mac_11_0_io_macOut;
  wire       [15:0]   mac_11_1_io_passthrough;
  wire       [15:0]   mac_11_1_io_macOut;
  wire       [15:0]   mac_11_2_io_passthrough;
  wire       [15:0]   mac_11_2_io_macOut;
  wire       [15:0]   mac_11_3_io_passthrough;
  wire       [15:0]   mac_11_3_io_macOut;
  wire       [15:0]   mac_11_4_io_passthrough;
  wire       [15:0]   mac_11_4_io_macOut;
  wire       [15:0]   mac_11_5_io_passthrough;
  wire       [15:0]   mac_11_5_io_macOut;
  wire       [15:0]   mac_11_6_io_passthrough;
  wire       [15:0]   mac_11_6_io_macOut;
  wire       [15:0]   mac_11_7_io_passthrough;
  wire       [15:0]   mac_11_7_io_macOut;
  wire       [15:0]   mac_11_8_io_passthrough;
  wire       [15:0]   mac_11_8_io_macOut;
  wire       [15:0]   mac_11_9_io_passthrough;
  wire       [15:0]   mac_11_9_io_macOut;
  wire       [15:0]   mac_11_10_io_passthrough;
  wire       [15:0]   mac_11_10_io_macOut;
  wire       [15:0]   mac_11_11_io_passthrough;
  wire       [15:0]   mac_11_11_io_macOut;
  wire       [15:0]   mac_11_12_io_passthrough;
  wire       [15:0]   mac_11_12_io_macOut;
  wire       [15:0]   mac_11_13_io_passthrough;
  wire       [15:0]   mac_11_13_io_macOut;
  wire       [15:0]   mac_11_14_io_passthrough;
  wire       [15:0]   mac_11_14_io_macOut;
  wire       [15:0]   mac_11_15_io_passthrough;
  wire       [15:0]   mac_11_15_io_macOut;
  wire       [15:0]   mac_12_0_io_passthrough;
  wire       [15:0]   mac_12_0_io_macOut;
  wire       [15:0]   mac_12_1_io_passthrough;
  wire       [15:0]   mac_12_1_io_macOut;
  wire       [15:0]   mac_12_2_io_passthrough;
  wire       [15:0]   mac_12_2_io_macOut;
  wire       [15:0]   mac_12_3_io_passthrough;
  wire       [15:0]   mac_12_3_io_macOut;
  wire       [15:0]   mac_12_4_io_passthrough;
  wire       [15:0]   mac_12_4_io_macOut;
  wire       [15:0]   mac_12_5_io_passthrough;
  wire       [15:0]   mac_12_5_io_macOut;
  wire       [15:0]   mac_12_6_io_passthrough;
  wire       [15:0]   mac_12_6_io_macOut;
  wire       [15:0]   mac_12_7_io_passthrough;
  wire       [15:0]   mac_12_7_io_macOut;
  wire       [15:0]   mac_12_8_io_passthrough;
  wire       [15:0]   mac_12_8_io_macOut;
  wire       [15:0]   mac_12_9_io_passthrough;
  wire       [15:0]   mac_12_9_io_macOut;
  wire       [15:0]   mac_12_10_io_passthrough;
  wire       [15:0]   mac_12_10_io_macOut;
  wire       [15:0]   mac_12_11_io_passthrough;
  wire       [15:0]   mac_12_11_io_macOut;
  wire       [15:0]   mac_12_12_io_passthrough;
  wire       [15:0]   mac_12_12_io_macOut;
  wire       [15:0]   mac_12_13_io_passthrough;
  wire       [15:0]   mac_12_13_io_macOut;
  wire       [15:0]   mac_12_14_io_passthrough;
  wire       [15:0]   mac_12_14_io_macOut;
  wire       [15:0]   mac_12_15_io_passthrough;
  wire       [15:0]   mac_12_15_io_macOut;
  wire       [15:0]   mac_13_0_io_passthrough;
  wire       [15:0]   mac_13_0_io_macOut;
  wire       [15:0]   mac_13_1_io_passthrough;
  wire       [15:0]   mac_13_1_io_macOut;
  wire       [15:0]   mac_13_2_io_passthrough;
  wire       [15:0]   mac_13_2_io_macOut;
  wire       [15:0]   mac_13_3_io_passthrough;
  wire       [15:0]   mac_13_3_io_macOut;
  wire       [15:0]   mac_13_4_io_passthrough;
  wire       [15:0]   mac_13_4_io_macOut;
  wire       [15:0]   mac_13_5_io_passthrough;
  wire       [15:0]   mac_13_5_io_macOut;
  wire       [15:0]   mac_13_6_io_passthrough;
  wire       [15:0]   mac_13_6_io_macOut;
  wire       [15:0]   mac_13_7_io_passthrough;
  wire       [15:0]   mac_13_7_io_macOut;
  wire       [15:0]   mac_13_8_io_passthrough;
  wire       [15:0]   mac_13_8_io_macOut;
  wire       [15:0]   mac_13_9_io_passthrough;
  wire       [15:0]   mac_13_9_io_macOut;
  wire       [15:0]   mac_13_10_io_passthrough;
  wire       [15:0]   mac_13_10_io_macOut;
  wire       [15:0]   mac_13_11_io_passthrough;
  wire       [15:0]   mac_13_11_io_macOut;
  wire       [15:0]   mac_13_12_io_passthrough;
  wire       [15:0]   mac_13_12_io_macOut;
  wire       [15:0]   mac_13_13_io_passthrough;
  wire       [15:0]   mac_13_13_io_macOut;
  wire       [15:0]   mac_13_14_io_passthrough;
  wire       [15:0]   mac_13_14_io_macOut;
  wire       [15:0]   mac_13_15_io_passthrough;
  wire       [15:0]   mac_13_15_io_macOut;
  wire       [15:0]   mac_14_0_io_passthrough;
  wire       [15:0]   mac_14_0_io_macOut;
  wire       [15:0]   mac_14_1_io_passthrough;
  wire       [15:0]   mac_14_1_io_macOut;
  wire       [15:0]   mac_14_2_io_passthrough;
  wire       [15:0]   mac_14_2_io_macOut;
  wire       [15:0]   mac_14_3_io_passthrough;
  wire       [15:0]   mac_14_3_io_macOut;
  wire       [15:0]   mac_14_4_io_passthrough;
  wire       [15:0]   mac_14_4_io_macOut;
  wire       [15:0]   mac_14_5_io_passthrough;
  wire       [15:0]   mac_14_5_io_macOut;
  wire       [15:0]   mac_14_6_io_passthrough;
  wire       [15:0]   mac_14_6_io_macOut;
  wire       [15:0]   mac_14_7_io_passthrough;
  wire       [15:0]   mac_14_7_io_macOut;
  wire       [15:0]   mac_14_8_io_passthrough;
  wire       [15:0]   mac_14_8_io_macOut;
  wire       [15:0]   mac_14_9_io_passthrough;
  wire       [15:0]   mac_14_9_io_macOut;
  wire       [15:0]   mac_14_10_io_passthrough;
  wire       [15:0]   mac_14_10_io_macOut;
  wire       [15:0]   mac_14_11_io_passthrough;
  wire       [15:0]   mac_14_11_io_macOut;
  wire       [15:0]   mac_14_12_io_passthrough;
  wire       [15:0]   mac_14_12_io_macOut;
  wire       [15:0]   mac_14_13_io_passthrough;
  wire       [15:0]   mac_14_13_io_macOut;
  wire       [15:0]   mac_14_14_io_passthrough;
  wire       [15:0]   mac_14_14_io_macOut;
  wire       [15:0]   mac_14_15_io_passthrough;
  wire       [15:0]   mac_14_15_io_macOut;
  wire       [15:0]   mac_15_0_io_passthrough;
  wire       [15:0]   mac_15_0_io_macOut;
  wire       [15:0]   mac_15_1_io_passthrough;
  wire       [15:0]   mac_15_1_io_macOut;
  wire       [15:0]   mac_15_2_io_passthrough;
  wire       [15:0]   mac_15_2_io_macOut;
  wire       [15:0]   mac_15_3_io_passthrough;
  wire       [15:0]   mac_15_3_io_macOut;
  wire       [15:0]   mac_15_4_io_passthrough;
  wire       [15:0]   mac_15_4_io_macOut;
  wire       [15:0]   mac_15_5_io_passthrough;
  wire       [15:0]   mac_15_5_io_macOut;
  wire       [15:0]   mac_15_6_io_passthrough;
  wire       [15:0]   mac_15_6_io_macOut;
  wire       [15:0]   mac_15_7_io_passthrough;
  wire       [15:0]   mac_15_7_io_macOut;
  wire       [15:0]   mac_15_8_io_passthrough;
  wire       [15:0]   mac_15_8_io_macOut;
  wire       [15:0]   mac_15_9_io_passthrough;
  wire       [15:0]   mac_15_9_io_macOut;
  wire       [15:0]   mac_15_10_io_passthrough;
  wire       [15:0]   mac_15_10_io_macOut;
  wire       [15:0]   mac_15_11_io_passthrough;
  wire       [15:0]   mac_15_11_io_macOut;
  wire       [15:0]   mac_15_12_io_passthrough;
  wire       [15:0]   mac_15_12_io_macOut;
  wire       [15:0]   mac_15_13_io_passthrough;
  wire       [15:0]   mac_15_13_io_macOut;
  wire       [15:0]   mac_15_14_io_passthrough;
  wire       [15:0]   mac_15_14_io_macOut;
  wire       [15:0]   mac_15_15_io_passthrough;
  wire       [15:0]   mac_15_15_io_macOut;
  reg        [15:0]   bias_0;
  reg        [15:0]   bias_1;
  reg        [15:0]   bias_2;
  reg        [15:0]   bias_3;
  reg        [15:0]   bias_4;
  reg        [15:0]   bias_5;
  reg        [15:0]   bias_6;
  reg        [15:0]   bias_7;
  reg        [15:0]   bias_8;
  reg        [15:0]   bias_9;
  reg        [15:0]   bias_10;
  reg        [15:0]   bias_11;
  reg        [15:0]   bias_12;
  reg        [15:0]   bias_13;
  reg        [15:0]   bias_14;
  reg        [15:0]   bias_15;
  reg        [15:0]   io_weight_1_delay_1;
  reg        [15:0]   io_weight_2_delay_1;
  reg        [15:0]   io_weight_2_delay_2;
  reg        [15:0]   io_weight_3_delay_1;
  reg        [15:0]   io_weight_3_delay_2;
  reg        [15:0]   io_weight_3_delay_3;
  reg        [15:0]   io_weight_4_delay_1;
  reg        [15:0]   io_weight_4_delay_2;
  reg        [15:0]   io_weight_4_delay_3;
  reg        [15:0]   io_weight_4_delay_4;
  reg        [15:0]   io_weight_5_delay_1;
  reg        [15:0]   io_weight_5_delay_2;
  reg        [15:0]   io_weight_5_delay_3;
  reg        [15:0]   io_weight_5_delay_4;
  reg        [15:0]   io_weight_5_delay_5;
  reg        [15:0]   io_weight_6_delay_1;
  reg        [15:0]   io_weight_6_delay_2;
  reg        [15:0]   io_weight_6_delay_3;
  reg        [15:0]   io_weight_6_delay_4;
  reg        [15:0]   io_weight_6_delay_5;
  reg        [15:0]   io_weight_6_delay_6;
  reg        [15:0]   io_weight_7_delay_1;
  reg        [15:0]   io_weight_7_delay_2;
  reg        [15:0]   io_weight_7_delay_3;
  reg        [15:0]   io_weight_7_delay_4;
  reg        [15:0]   io_weight_7_delay_5;
  reg        [15:0]   io_weight_7_delay_6;
  reg        [15:0]   io_weight_7_delay_7;
  reg        [15:0]   io_weight_8_delay_1;
  reg        [15:0]   io_weight_8_delay_2;
  reg        [15:0]   io_weight_8_delay_3;
  reg        [15:0]   io_weight_8_delay_4;
  reg        [15:0]   io_weight_8_delay_5;
  reg        [15:0]   io_weight_8_delay_6;
  reg        [15:0]   io_weight_8_delay_7;
  reg        [15:0]   io_weight_8_delay_8;
  reg        [15:0]   io_weight_9_delay_1;
  reg        [15:0]   io_weight_9_delay_2;
  reg        [15:0]   io_weight_9_delay_3;
  reg        [15:0]   io_weight_9_delay_4;
  reg        [15:0]   io_weight_9_delay_5;
  reg        [15:0]   io_weight_9_delay_6;
  reg        [15:0]   io_weight_9_delay_7;
  reg        [15:0]   io_weight_9_delay_8;
  reg        [15:0]   io_weight_9_delay_9;
  reg        [15:0]   io_weight_10_delay_1;
  reg        [15:0]   io_weight_10_delay_2;
  reg        [15:0]   io_weight_10_delay_3;
  reg        [15:0]   io_weight_10_delay_4;
  reg        [15:0]   io_weight_10_delay_5;
  reg        [15:0]   io_weight_10_delay_6;
  reg        [15:0]   io_weight_10_delay_7;
  reg        [15:0]   io_weight_10_delay_8;
  reg        [15:0]   io_weight_10_delay_9;
  reg        [15:0]   io_weight_10_delay_10;
  reg        [15:0]   io_weight_11_delay_1;
  reg        [15:0]   io_weight_11_delay_2;
  reg        [15:0]   io_weight_11_delay_3;
  reg        [15:0]   io_weight_11_delay_4;
  reg        [15:0]   io_weight_11_delay_5;
  reg        [15:0]   io_weight_11_delay_6;
  reg        [15:0]   io_weight_11_delay_7;
  reg        [15:0]   io_weight_11_delay_8;
  reg        [15:0]   io_weight_11_delay_9;
  reg        [15:0]   io_weight_11_delay_10;
  reg        [15:0]   io_weight_11_delay_11;
  reg        [15:0]   io_weight_12_delay_1;
  reg        [15:0]   io_weight_12_delay_2;
  reg        [15:0]   io_weight_12_delay_3;
  reg        [15:0]   io_weight_12_delay_4;
  reg        [15:0]   io_weight_12_delay_5;
  reg        [15:0]   io_weight_12_delay_6;
  reg        [15:0]   io_weight_12_delay_7;
  reg        [15:0]   io_weight_12_delay_8;
  reg        [15:0]   io_weight_12_delay_9;
  reg        [15:0]   io_weight_12_delay_10;
  reg        [15:0]   io_weight_12_delay_11;
  reg        [15:0]   io_weight_12_delay_12;
  reg        [15:0]   io_weight_13_delay_1;
  reg        [15:0]   io_weight_13_delay_2;
  reg        [15:0]   io_weight_13_delay_3;
  reg        [15:0]   io_weight_13_delay_4;
  reg        [15:0]   io_weight_13_delay_5;
  reg        [15:0]   io_weight_13_delay_6;
  reg        [15:0]   io_weight_13_delay_7;
  reg        [15:0]   io_weight_13_delay_8;
  reg        [15:0]   io_weight_13_delay_9;
  reg        [15:0]   io_weight_13_delay_10;
  reg        [15:0]   io_weight_13_delay_11;
  reg        [15:0]   io_weight_13_delay_12;
  reg        [15:0]   io_weight_13_delay_13;
  reg        [15:0]   io_weight_14_delay_1;
  reg        [15:0]   io_weight_14_delay_2;
  reg        [15:0]   io_weight_14_delay_3;
  reg        [15:0]   io_weight_14_delay_4;
  reg        [15:0]   io_weight_14_delay_5;
  reg        [15:0]   io_weight_14_delay_6;
  reg        [15:0]   io_weight_14_delay_7;
  reg        [15:0]   io_weight_14_delay_8;
  reg        [15:0]   io_weight_14_delay_9;
  reg        [15:0]   io_weight_14_delay_10;
  reg        [15:0]   io_weight_14_delay_11;
  reg        [15:0]   io_weight_14_delay_12;
  reg        [15:0]   io_weight_14_delay_13;
  reg        [15:0]   io_weight_14_delay_14;
  reg        [15:0]   io_weight_15_delay_1;
  reg        [15:0]   io_weight_15_delay_2;
  reg        [15:0]   io_weight_15_delay_3;
  reg        [15:0]   io_weight_15_delay_4;
  reg        [15:0]   io_weight_15_delay_5;
  reg        [15:0]   io_weight_15_delay_6;
  reg        [15:0]   io_weight_15_delay_7;
  reg        [15:0]   io_weight_15_delay_8;
  reg        [15:0]   io_weight_15_delay_9;
  reg        [15:0]   io_weight_15_delay_10;
  reg        [15:0]   io_weight_15_delay_11;
  reg        [15:0]   io_weight_15_delay_12;
  reg        [15:0]   io_weight_15_delay_13;
  reg        [15:0]   io_weight_15_delay_14;
  reg        [15:0]   io_weight_15_delay_15;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_11;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_12;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_13;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_14;
  reg        [15:0]   toplevel_mac_0_15_io_macOut_delay_15;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_11;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_12;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_13;
  reg        [15:0]   toplevel_mac_1_15_io_macOut_delay_14;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_11;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_12;
  reg        [15:0]   toplevel_mac_2_15_io_macOut_delay_13;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_11;
  reg        [15:0]   toplevel_mac_3_15_io_macOut_delay_12;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_4_15_io_macOut_delay_11;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_5_15_io_macOut_delay_10;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_6_15_io_macOut_delay_9;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_7_15_io_macOut_delay_8;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_8_15_io_macOut_delay_7;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_9_15_io_macOut_delay_6;
  reg        [15:0]   toplevel_mac_10_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_10_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_10_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_10_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_10_15_io_macOut_delay_5;
  reg        [15:0]   toplevel_mac_11_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_11_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_11_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_11_15_io_macOut_delay_4;
  reg        [15:0]   toplevel_mac_12_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_12_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_12_15_io_macOut_delay_3;
  reg        [15:0]   toplevel_mac_13_15_io_macOut_delay_1;
  reg        [15:0]   toplevel_mac_13_15_io_macOut_delay_2;
  reg        [15:0]   toplevel_mac_14_15_io_macOut_delay_1;

  MAC mac_0_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_0[15:0]           ), //i
    .io_addInput    (bias_0[15:0]                ), //i
    .io_passthrough (mac_0_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_1 mac_0_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_1_delay_1[15:0]   ), //i
    .io_addInput    (mac_0_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_2 mac_0_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_2_delay_2[15:0]   ), //i
    .io_addInput    (mac_0_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_3 mac_0_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_3_delay_3[15:0]   ), //i
    .io_addInput    (mac_0_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_4 mac_0_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_4_delay_4[15:0]   ), //i
    .io_addInput    (mac_0_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_5 mac_0_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_5_delay_5[15:0]   ), //i
    .io_addInput    (mac_0_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_6 mac_0_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_6_delay_6[15:0]   ), //i
    .io_addInput    (mac_0_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_7 mac_0_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_7_delay_7[15:0]   ), //i
    .io_addInput    (mac_0_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_8 mac_0_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_8_delay_8[15:0]   ), //i
    .io_addInput    (mac_0_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_9 mac_0_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (io_weight_9_delay_9[15:0]   ), //i
    .io_addInput    (mac_0_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_10 mac_0_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_10_delay_10[15:0]  ), //i
    .io_addInput    (mac_0_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_0_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_11 mac_0_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_11_delay_11[15:0]  ), //i
    .io_addInput    (mac_0_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_12 mac_0_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_12_delay_12[15:0]  ), //i
    .io_addInput    (mac_0_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_13 mac_0_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_13_delay_13[15:0]  ), //i
    .io_addInput    (mac_0_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_14 mac_0_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_14_delay_14[15:0]  ), //i
    .io_addInput    (mac_0_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_15 mac_0_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (io_weight_15_delay_15[15:0]  ), //i
    .io_addInput    (mac_0_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_0_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_0_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_16 mac_1_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_1[15:0]                ), //i
    .io_passthrough (mac_1_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_17 mac_1_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_18 mac_1_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_19 mac_1_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_20 mac_1_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_21 mac_1_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_22 mac_1_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_23 mac_1_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_24 mac_1_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_25 mac_1_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_0_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_26 mac_1_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_1_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_27 mac_1_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_28 mac_1_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_29 mac_1_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_30 mac_1_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_31 mac_1_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_0_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_1_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_1_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_1_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_32 mac_2_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_2[15:0]                ), //i
    .io_passthrough (mac_2_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_33 mac_2_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_34 mac_2_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_35 mac_2_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_36 mac_2_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_37 mac_2_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_38 mac_2_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_39 mac_2_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_40 mac_2_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_41 mac_2_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_1_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_42 mac_2_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_2_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_43 mac_2_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_44 mac_2_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_45 mac_2_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_46 mac_2_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_47 mac_2_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_1_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_2_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_2_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_2_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_48 mac_3_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_3[15:0]                ), //i
    .io_passthrough (mac_3_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_49 mac_3_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_50 mac_3_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_51 mac_3_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_52 mac_3_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_53 mac_3_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_54 mac_3_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_55 mac_3_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_56 mac_3_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_57 mac_3_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_2_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_58 mac_3_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_3_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_59 mac_3_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_60 mac_3_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_61 mac_3_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_62 mac_3_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_63 mac_3_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_2_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_3_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_3_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_3_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_64 mac_4_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_4[15:0]                ), //i
    .io_passthrough (mac_4_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_65 mac_4_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_66 mac_4_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_67 mac_4_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_68 mac_4_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_69 mac_4_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_70 mac_4_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_71 mac_4_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_72 mac_4_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_73 mac_4_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_3_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_74 mac_4_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_4_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_75 mac_4_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_76 mac_4_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_77 mac_4_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_78 mac_4_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_79 mac_4_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_3_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_4_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_4_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_4_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_80 mac_5_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_5[15:0]                ), //i
    .io_passthrough (mac_5_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_81 mac_5_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_82 mac_5_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_83 mac_5_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_84 mac_5_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_85 mac_5_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_86 mac_5_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_87 mac_5_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_88 mac_5_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_89 mac_5_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_4_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_90 mac_5_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_5_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_91 mac_5_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_92 mac_5_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_93 mac_5_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_94 mac_5_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_95 mac_5_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_4_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_5_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_5_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_5_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_96 mac_6_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_6[15:0]                ), //i
    .io_passthrough (mac_6_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_97 mac_6_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_98 mac_6_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_99 mac_6_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_100 mac_6_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_101 mac_6_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_102 mac_6_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_103 mac_6_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_104 mac_6_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_105 mac_6_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_5_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_106 mac_6_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_6_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_107 mac_6_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_108 mac_6_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_109 mac_6_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_110 mac_6_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_111 mac_6_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_5_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_6_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_6_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_6_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_112 mac_7_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_7[15:0]                ), //i
    .io_passthrough (mac_7_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_113 mac_7_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_114 mac_7_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_115 mac_7_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_116 mac_7_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_117 mac_7_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_118 mac_7_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_119 mac_7_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_120 mac_7_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_121 mac_7_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_6_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_122 mac_7_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_7_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_123 mac_7_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_124 mac_7_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_125 mac_7_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_126 mac_7_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_127 mac_7_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_6_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_7_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_7_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_7_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_128 mac_8_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_8[15:0]                ), //i
    .io_passthrough (mac_8_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_129 mac_8_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_130 mac_8_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_131 mac_8_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_132 mac_8_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_133 mac_8_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_134 mac_8_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_135 mac_8_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_136 mac_8_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_137 mac_8_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_7_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_138 mac_8_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_8_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_139 mac_8_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_140 mac_8_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_141 mac_8_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_142 mac_8_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_143 mac_8_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_7_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_8_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_8_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_8_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_144 mac_9_0 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_9[15:0]                ), //i
    .io_passthrough (mac_9_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_0_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_145 mac_9_1 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_1_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_146 mac_9_2 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_2_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_147 mac_9_3 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_3_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_148 mac_9_4 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_4_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_149 mac_9_5 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_5_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_150 mac_9_6 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_6_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_151 mac_9_7 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_7_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_152 mac_9_8 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_8_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_153 mac_9_9 (
    .io_load        (io_load                     ), //i
    .io_mulInput    (mac_8_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_9_io_macOut[15:0]     ), //o
    .clk            (clk                         ), //i
    .reset          (reset                       )  //i
  );
  MAC_154 mac_9_10 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_9_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_10_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_155 mac_9_11 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_11_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_156 mac_9_12 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_12_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_157 mac_9_13 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_13_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_158 mac_9_14 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_14_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_159 mac_9_15 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_8_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_9_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_9_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_9_15_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_160 mac_10_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_0_io_passthrough[15:0] ), //i
    .io_addInput    (bias_10[15:0]                ), //i
    .io_passthrough (mac_10_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_161 mac_10_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_1_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_162 mac_10_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_2_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_163 mac_10_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_3_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_164 mac_10_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_4_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_165 mac_10_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_5_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_166 mac_10_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_6_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_167 mac_10_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_7_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_168 mac_10_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_8_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_169 mac_10_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_9_9_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_170 mac_10_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_10_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_10_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_171 mac_10_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_11_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_172 mac_10_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_12_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_173 mac_10_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_13_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_174 mac_10_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_14_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_175 mac_10_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_9_15_io_passthrough[15:0] ), //i
    .io_addInput    (mac_10_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_10_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_10_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_176 mac_11_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_11[15:0]                ), //i
    .io_passthrough (mac_11_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_177 mac_11_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_178 mac_11_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_179 mac_11_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_180 mac_11_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_181 mac_11_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_182 mac_11_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_183 mac_11_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_184 mac_11_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_185 mac_11_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_10_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_186 mac_11_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_11_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_187 mac_11_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_188 mac_11_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_189 mac_11_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_190 mac_11_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_191 mac_11_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_10_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_11_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_11_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_11_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_192 mac_12_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_12[15:0]                ), //i
    .io_passthrough (mac_12_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_193 mac_12_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_194 mac_12_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_195 mac_12_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_196 mac_12_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_197 mac_12_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_198 mac_12_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_199 mac_12_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_200 mac_12_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_201 mac_12_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_11_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_202 mac_12_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_12_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_203 mac_12_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_204 mac_12_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_205 mac_12_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_206 mac_12_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_207 mac_12_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_11_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_12_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_12_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_12_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_208 mac_13_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_13[15:0]                ), //i
    .io_passthrough (mac_13_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_209 mac_13_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_210 mac_13_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_211 mac_13_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_212 mac_13_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_213 mac_13_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_214 mac_13_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_215 mac_13_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_216 mac_13_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_217 mac_13_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_12_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_218 mac_13_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_13_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_219 mac_13_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_220 mac_13_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_221 mac_13_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_222 mac_13_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_223 mac_13_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_12_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_13_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_13_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_13_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_224 mac_14_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_14[15:0]                ), //i
    .io_passthrough (mac_14_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_225 mac_14_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_226 mac_14_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_227 mac_14_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_228 mac_14_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_229 mac_14_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_230 mac_14_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_231 mac_14_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_232 mac_14_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_233 mac_14_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_13_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_234 mac_14_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_14_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_235 mac_14_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_236 mac_14_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_237 mac_14_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_238 mac_14_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_239 mac_14_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_13_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_14_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_14_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_14_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_240 mac_15_0 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_0_io_passthrough[15:0]), //i
    .io_addInput    (bias_15[15:0]                ), //i
    .io_passthrough (mac_15_0_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_0_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_241 mac_15_1 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_1_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_0_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_1_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_1_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_242 mac_15_2 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_2_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_1_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_2_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_2_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_243 mac_15_3 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_3_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_2_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_3_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_3_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_244 mac_15_4 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_4_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_3_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_4_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_4_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_245 mac_15_5 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_5_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_4_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_5_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_5_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_246 mac_15_6 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_6_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_5_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_6_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_6_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_247 mac_15_7 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_7_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_6_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_7_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_7_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_248 mac_15_8 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_8_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_7_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_8_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_8_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_249 mac_15_9 (
    .io_load        (io_load                      ), //i
    .io_mulInput    (mac_14_9_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_8_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_9_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_9_io_macOut[15:0]     ), //o
    .clk            (clk                          ), //i
    .reset          (reset                        )  //i
  );
  MAC_250 mac_15_10 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_10_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_9_io_macOut[15:0]      ), //i
    .io_passthrough (mac_15_10_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_10_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_251 mac_15_11 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_11_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_10_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_11_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_11_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_252 mac_15_12 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_12_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_11_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_12_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_12_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_253 mac_15_13 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_13_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_12_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_13_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_13_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_254 mac_15_14 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_14_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_13_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_14_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_14_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  MAC_255 mac_15_15 (
    .io_load        (io_load                       ), //i
    .io_mulInput    (mac_14_15_io_passthrough[15:0]), //i
    .io_addInput    (mac_15_14_io_macOut[15:0]     ), //i
    .io_passthrough (mac_15_15_io_passthrough[15:0]), //o
    .io_macOut      (mac_15_15_io_macOut[15:0]     ), //o
    .clk            (clk                           ), //i
    .reset          (reset                         )  //i
  );
  assign io_output_0 = toplevel_mac_0_15_io_macOut_delay_15;
  assign io_output_1 = toplevel_mac_1_15_io_macOut_delay_14;
  assign io_output_2 = toplevel_mac_2_15_io_macOut_delay_13;
  assign io_output_3 = toplevel_mac_3_15_io_macOut_delay_12;
  assign io_output_4 = toplevel_mac_4_15_io_macOut_delay_11;
  assign io_output_5 = toplevel_mac_5_15_io_macOut_delay_10;
  assign io_output_6 = toplevel_mac_6_15_io_macOut_delay_9;
  assign io_output_7 = toplevel_mac_7_15_io_macOut_delay_8;
  assign io_output_8 = toplevel_mac_8_15_io_macOut_delay_7;
  assign io_output_9 = toplevel_mac_9_15_io_macOut_delay_6;
  assign io_output_10 = toplevel_mac_10_15_io_macOut_delay_5;
  assign io_output_11 = toplevel_mac_11_15_io_macOut_delay_4;
  assign io_output_12 = toplevel_mac_12_15_io_macOut_delay_3;
  assign io_output_13 = toplevel_mac_13_15_io_macOut_delay_2;
  assign io_output_14 = toplevel_mac_14_15_io_macOut_delay_1;
  assign io_output_15 = mac_15_15_io_macOut;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      bias_0 <= 16'h0000;
      bias_1 <= 16'h0000;
      bias_2 <= 16'h0000;
      bias_3 <= 16'h0000;
      bias_4 <= 16'h0000;
      bias_5 <= 16'h0000;
      bias_6 <= 16'h0000;
      bias_7 <= 16'h0000;
      bias_8 <= 16'h0000;
      bias_9 <= 16'h0000;
      bias_10 <= 16'h0000;
      bias_11 <= 16'h0000;
      bias_12 <= 16'h0000;
      bias_13 <= 16'h0000;
      bias_14 <= 16'h0000;
      bias_15 <= 16'h0000;
      io_weight_1_delay_1 <= 16'h0000;
      io_weight_2_delay_1 <= 16'h0000;
      io_weight_2_delay_2 <= 16'h0000;
      io_weight_3_delay_1 <= 16'h0000;
      io_weight_3_delay_2 <= 16'h0000;
      io_weight_3_delay_3 <= 16'h0000;
      io_weight_4_delay_1 <= 16'h0000;
      io_weight_4_delay_2 <= 16'h0000;
      io_weight_4_delay_3 <= 16'h0000;
      io_weight_4_delay_4 <= 16'h0000;
      io_weight_5_delay_1 <= 16'h0000;
      io_weight_5_delay_2 <= 16'h0000;
      io_weight_5_delay_3 <= 16'h0000;
      io_weight_5_delay_4 <= 16'h0000;
      io_weight_5_delay_5 <= 16'h0000;
      io_weight_6_delay_1 <= 16'h0000;
      io_weight_6_delay_2 <= 16'h0000;
      io_weight_6_delay_3 <= 16'h0000;
      io_weight_6_delay_4 <= 16'h0000;
      io_weight_6_delay_5 <= 16'h0000;
      io_weight_6_delay_6 <= 16'h0000;
      io_weight_7_delay_1 <= 16'h0000;
      io_weight_7_delay_2 <= 16'h0000;
      io_weight_7_delay_3 <= 16'h0000;
      io_weight_7_delay_4 <= 16'h0000;
      io_weight_7_delay_5 <= 16'h0000;
      io_weight_7_delay_6 <= 16'h0000;
      io_weight_7_delay_7 <= 16'h0000;
      io_weight_8_delay_1 <= 16'h0000;
      io_weight_8_delay_2 <= 16'h0000;
      io_weight_8_delay_3 <= 16'h0000;
      io_weight_8_delay_4 <= 16'h0000;
      io_weight_8_delay_5 <= 16'h0000;
      io_weight_8_delay_6 <= 16'h0000;
      io_weight_8_delay_7 <= 16'h0000;
      io_weight_8_delay_8 <= 16'h0000;
      io_weight_9_delay_1 <= 16'h0000;
      io_weight_9_delay_2 <= 16'h0000;
      io_weight_9_delay_3 <= 16'h0000;
      io_weight_9_delay_4 <= 16'h0000;
      io_weight_9_delay_5 <= 16'h0000;
      io_weight_9_delay_6 <= 16'h0000;
      io_weight_9_delay_7 <= 16'h0000;
      io_weight_9_delay_8 <= 16'h0000;
      io_weight_9_delay_9 <= 16'h0000;
      io_weight_10_delay_1 <= 16'h0000;
      io_weight_10_delay_2 <= 16'h0000;
      io_weight_10_delay_3 <= 16'h0000;
      io_weight_10_delay_4 <= 16'h0000;
      io_weight_10_delay_5 <= 16'h0000;
      io_weight_10_delay_6 <= 16'h0000;
      io_weight_10_delay_7 <= 16'h0000;
      io_weight_10_delay_8 <= 16'h0000;
      io_weight_10_delay_9 <= 16'h0000;
      io_weight_10_delay_10 <= 16'h0000;
      io_weight_11_delay_1 <= 16'h0000;
      io_weight_11_delay_2 <= 16'h0000;
      io_weight_11_delay_3 <= 16'h0000;
      io_weight_11_delay_4 <= 16'h0000;
      io_weight_11_delay_5 <= 16'h0000;
      io_weight_11_delay_6 <= 16'h0000;
      io_weight_11_delay_7 <= 16'h0000;
      io_weight_11_delay_8 <= 16'h0000;
      io_weight_11_delay_9 <= 16'h0000;
      io_weight_11_delay_10 <= 16'h0000;
      io_weight_11_delay_11 <= 16'h0000;
      io_weight_12_delay_1 <= 16'h0000;
      io_weight_12_delay_2 <= 16'h0000;
      io_weight_12_delay_3 <= 16'h0000;
      io_weight_12_delay_4 <= 16'h0000;
      io_weight_12_delay_5 <= 16'h0000;
      io_weight_12_delay_6 <= 16'h0000;
      io_weight_12_delay_7 <= 16'h0000;
      io_weight_12_delay_8 <= 16'h0000;
      io_weight_12_delay_9 <= 16'h0000;
      io_weight_12_delay_10 <= 16'h0000;
      io_weight_12_delay_11 <= 16'h0000;
      io_weight_12_delay_12 <= 16'h0000;
      io_weight_13_delay_1 <= 16'h0000;
      io_weight_13_delay_2 <= 16'h0000;
      io_weight_13_delay_3 <= 16'h0000;
      io_weight_13_delay_4 <= 16'h0000;
      io_weight_13_delay_5 <= 16'h0000;
      io_weight_13_delay_6 <= 16'h0000;
      io_weight_13_delay_7 <= 16'h0000;
      io_weight_13_delay_8 <= 16'h0000;
      io_weight_13_delay_9 <= 16'h0000;
      io_weight_13_delay_10 <= 16'h0000;
      io_weight_13_delay_11 <= 16'h0000;
      io_weight_13_delay_12 <= 16'h0000;
      io_weight_13_delay_13 <= 16'h0000;
      io_weight_14_delay_1 <= 16'h0000;
      io_weight_14_delay_2 <= 16'h0000;
      io_weight_14_delay_3 <= 16'h0000;
      io_weight_14_delay_4 <= 16'h0000;
      io_weight_14_delay_5 <= 16'h0000;
      io_weight_14_delay_6 <= 16'h0000;
      io_weight_14_delay_7 <= 16'h0000;
      io_weight_14_delay_8 <= 16'h0000;
      io_weight_14_delay_9 <= 16'h0000;
      io_weight_14_delay_10 <= 16'h0000;
      io_weight_14_delay_11 <= 16'h0000;
      io_weight_14_delay_12 <= 16'h0000;
      io_weight_14_delay_13 <= 16'h0000;
      io_weight_14_delay_14 <= 16'h0000;
      io_weight_15_delay_1 <= 16'h0000;
      io_weight_15_delay_2 <= 16'h0000;
      io_weight_15_delay_3 <= 16'h0000;
      io_weight_15_delay_4 <= 16'h0000;
      io_weight_15_delay_5 <= 16'h0000;
      io_weight_15_delay_6 <= 16'h0000;
      io_weight_15_delay_7 <= 16'h0000;
      io_weight_15_delay_8 <= 16'h0000;
      io_weight_15_delay_9 <= 16'h0000;
      io_weight_15_delay_10 <= 16'h0000;
      io_weight_15_delay_11 <= 16'h0000;
      io_weight_15_delay_12 <= 16'h0000;
      io_weight_15_delay_13 <= 16'h0000;
      io_weight_15_delay_14 <= 16'h0000;
      io_weight_15_delay_15 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_11 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_12 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_13 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_14 <= 16'h0000;
      toplevel_mac_0_15_io_macOut_delay_15 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_11 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_12 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_13 <= 16'h0000;
      toplevel_mac_1_15_io_macOut_delay_14 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_11 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_12 <= 16'h0000;
      toplevel_mac_2_15_io_macOut_delay_13 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_11 <= 16'h0000;
      toplevel_mac_3_15_io_macOut_delay_12 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_4_15_io_macOut_delay_11 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_5_15_io_macOut_delay_10 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_6_15_io_macOut_delay_9 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_7_15_io_macOut_delay_8 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_8_15_io_macOut_delay_7 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_9_15_io_macOut_delay_6 <= 16'h0000;
      toplevel_mac_10_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_10_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_10_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_10_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_10_15_io_macOut_delay_5 <= 16'h0000;
      toplevel_mac_11_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_11_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_11_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_11_15_io_macOut_delay_4 <= 16'h0000;
      toplevel_mac_12_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_12_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_12_15_io_macOut_delay_3 <= 16'h0000;
      toplevel_mac_13_15_io_macOut_delay_1 <= 16'h0000;
      toplevel_mac_13_15_io_macOut_delay_2 <= 16'h0000;
      toplevel_mac_14_15_io_macOut_delay_1 <= 16'h0000;
    end else begin
      if(io_load) begin
        bias_0 <= io_activation_0;
        bias_1 <= io_activation_1;
        bias_2 <= io_activation_2;
        bias_3 <= io_activation_3;
        bias_4 <= io_activation_4;
        bias_5 <= io_activation_5;
        bias_6 <= io_activation_6;
        bias_7 <= io_activation_7;
        bias_8 <= io_activation_8;
        bias_9 <= io_activation_9;
        bias_10 <= io_activation_10;
        bias_11 <= io_activation_11;
        bias_12 <= io_activation_12;
        bias_13 <= io_activation_13;
        bias_14 <= io_activation_14;
        bias_15 <= io_activation_15;
      end
      io_weight_1_delay_1 <= io_weight_1;
      io_weight_2_delay_1 <= io_weight_2;
      io_weight_2_delay_2 <= io_weight_2_delay_1;
      io_weight_3_delay_1 <= io_weight_3;
      io_weight_3_delay_2 <= io_weight_3_delay_1;
      io_weight_3_delay_3 <= io_weight_3_delay_2;
      io_weight_4_delay_1 <= io_weight_4;
      io_weight_4_delay_2 <= io_weight_4_delay_1;
      io_weight_4_delay_3 <= io_weight_4_delay_2;
      io_weight_4_delay_4 <= io_weight_4_delay_3;
      io_weight_5_delay_1 <= io_weight_5;
      io_weight_5_delay_2 <= io_weight_5_delay_1;
      io_weight_5_delay_3 <= io_weight_5_delay_2;
      io_weight_5_delay_4 <= io_weight_5_delay_3;
      io_weight_5_delay_5 <= io_weight_5_delay_4;
      io_weight_6_delay_1 <= io_weight_6;
      io_weight_6_delay_2 <= io_weight_6_delay_1;
      io_weight_6_delay_3 <= io_weight_6_delay_2;
      io_weight_6_delay_4 <= io_weight_6_delay_3;
      io_weight_6_delay_5 <= io_weight_6_delay_4;
      io_weight_6_delay_6 <= io_weight_6_delay_5;
      io_weight_7_delay_1 <= io_weight_7;
      io_weight_7_delay_2 <= io_weight_7_delay_1;
      io_weight_7_delay_3 <= io_weight_7_delay_2;
      io_weight_7_delay_4 <= io_weight_7_delay_3;
      io_weight_7_delay_5 <= io_weight_7_delay_4;
      io_weight_7_delay_6 <= io_weight_7_delay_5;
      io_weight_7_delay_7 <= io_weight_7_delay_6;
      io_weight_8_delay_1 <= io_weight_8;
      io_weight_8_delay_2 <= io_weight_8_delay_1;
      io_weight_8_delay_3 <= io_weight_8_delay_2;
      io_weight_8_delay_4 <= io_weight_8_delay_3;
      io_weight_8_delay_5 <= io_weight_8_delay_4;
      io_weight_8_delay_6 <= io_weight_8_delay_5;
      io_weight_8_delay_7 <= io_weight_8_delay_6;
      io_weight_8_delay_8 <= io_weight_8_delay_7;
      io_weight_9_delay_1 <= io_weight_9;
      io_weight_9_delay_2 <= io_weight_9_delay_1;
      io_weight_9_delay_3 <= io_weight_9_delay_2;
      io_weight_9_delay_4 <= io_weight_9_delay_3;
      io_weight_9_delay_5 <= io_weight_9_delay_4;
      io_weight_9_delay_6 <= io_weight_9_delay_5;
      io_weight_9_delay_7 <= io_weight_9_delay_6;
      io_weight_9_delay_8 <= io_weight_9_delay_7;
      io_weight_9_delay_9 <= io_weight_9_delay_8;
      io_weight_10_delay_1 <= io_weight_10;
      io_weight_10_delay_2 <= io_weight_10_delay_1;
      io_weight_10_delay_3 <= io_weight_10_delay_2;
      io_weight_10_delay_4 <= io_weight_10_delay_3;
      io_weight_10_delay_5 <= io_weight_10_delay_4;
      io_weight_10_delay_6 <= io_weight_10_delay_5;
      io_weight_10_delay_7 <= io_weight_10_delay_6;
      io_weight_10_delay_8 <= io_weight_10_delay_7;
      io_weight_10_delay_9 <= io_weight_10_delay_8;
      io_weight_10_delay_10 <= io_weight_10_delay_9;
      io_weight_11_delay_1 <= io_weight_11;
      io_weight_11_delay_2 <= io_weight_11_delay_1;
      io_weight_11_delay_3 <= io_weight_11_delay_2;
      io_weight_11_delay_4 <= io_weight_11_delay_3;
      io_weight_11_delay_5 <= io_weight_11_delay_4;
      io_weight_11_delay_6 <= io_weight_11_delay_5;
      io_weight_11_delay_7 <= io_weight_11_delay_6;
      io_weight_11_delay_8 <= io_weight_11_delay_7;
      io_weight_11_delay_9 <= io_weight_11_delay_8;
      io_weight_11_delay_10 <= io_weight_11_delay_9;
      io_weight_11_delay_11 <= io_weight_11_delay_10;
      io_weight_12_delay_1 <= io_weight_12;
      io_weight_12_delay_2 <= io_weight_12_delay_1;
      io_weight_12_delay_3 <= io_weight_12_delay_2;
      io_weight_12_delay_4 <= io_weight_12_delay_3;
      io_weight_12_delay_5 <= io_weight_12_delay_4;
      io_weight_12_delay_6 <= io_weight_12_delay_5;
      io_weight_12_delay_7 <= io_weight_12_delay_6;
      io_weight_12_delay_8 <= io_weight_12_delay_7;
      io_weight_12_delay_9 <= io_weight_12_delay_8;
      io_weight_12_delay_10 <= io_weight_12_delay_9;
      io_weight_12_delay_11 <= io_weight_12_delay_10;
      io_weight_12_delay_12 <= io_weight_12_delay_11;
      io_weight_13_delay_1 <= io_weight_13;
      io_weight_13_delay_2 <= io_weight_13_delay_1;
      io_weight_13_delay_3 <= io_weight_13_delay_2;
      io_weight_13_delay_4 <= io_weight_13_delay_3;
      io_weight_13_delay_5 <= io_weight_13_delay_4;
      io_weight_13_delay_6 <= io_weight_13_delay_5;
      io_weight_13_delay_7 <= io_weight_13_delay_6;
      io_weight_13_delay_8 <= io_weight_13_delay_7;
      io_weight_13_delay_9 <= io_weight_13_delay_8;
      io_weight_13_delay_10 <= io_weight_13_delay_9;
      io_weight_13_delay_11 <= io_weight_13_delay_10;
      io_weight_13_delay_12 <= io_weight_13_delay_11;
      io_weight_13_delay_13 <= io_weight_13_delay_12;
      io_weight_14_delay_1 <= io_weight_14;
      io_weight_14_delay_2 <= io_weight_14_delay_1;
      io_weight_14_delay_3 <= io_weight_14_delay_2;
      io_weight_14_delay_4 <= io_weight_14_delay_3;
      io_weight_14_delay_5 <= io_weight_14_delay_4;
      io_weight_14_delay_6 <= io_weight_14_delay_5;
      io_weight_14_delay_7 <= io_weight_14_delay_6;
      io_weight_14_delay_8 <= io_weight_14_delay_7;
      io_weight_14_delay_9 <= io_weight_14_delay_8;
      io_weight_14_delay_10 <= io_weight_14_delay_9;
      io_weight_14_delay_11 <= io_weight_14_delay_10;
      io_weight_14_delay_12 <= io_weight_14_delay_11;
      io_weight_14_delay_13 <= io_weight_14_delay_12;
      io_weight_14_delay_14 <= io_weight_14_delay_13;
      io_weight_15_delay_1 <= io_weight_15;
      io_weight_15_delay_2 <= io_weight_15_delay_1;
      io_weight_15_delay_3 <= io_weight_15_delay_2;
      io_weight_15_delay_4 <= io_weight_15_delay_3;
      io_weight_15_delay_5 <= io_weight_15_delay_4;
      io_weight_15_delay_6 <= io_weight_15_delay_5;
      io_weight_15_delay_7 <= io_weight_15_delay_6;
      io_weight_15_delay_8 <= io_weight_15_delay_7;
      io_weight_15_delay_9 <= io_weight_15_delay_8;
      io_weight_15_delay_10 <= io_weight_15_delay_9;
      io_weight_15_delay_11 <= io_weight_15_delay_10;
      io_weight_15_delay_12 <= io_weight_15_delay_11;
      io_weight_15_delay_13 <= io_weight_15_delay_12;
      io_weight_15_delay_14 <= io_weight_15_delay_13;
      io_weight_15_delay_15 <= io_weight_15_delay_14;
      toplevel_mac_0_15_io_macOut_delay_1 <= mac_0_15_io_macOut;
      toplevel_mac_0_15_io_macOut_delay_2 <= toplevel_mac_0_15_io_macOut_delay_1;
      toplevel_mac_0_15_io_macOut_delay_3 <= toplevel_mac_0_15_io_macOut_delay_2;
      toplevel_mac_0_15_io_macOut_delay_4 <= toplevel_mac_0_15_io_macOut_delay_3;
      toplevel_mac_0_15_io_macOut_delay_5 <= toplevel_mac_0_15_io_macOut_delay_4;
      toplevel_mac_0_15_io_macOut_delay_6 <= toplevel_mac_0_15_io_macOut_delay_5;
      toplevel_mac_0_15_io_macOut_delay_7 <= toplevel_mac_0_15_io_macOut_delay_6;
      toplevel_mac_0_15_io_macOut_delay_8 <= toplevel_mac_0_15_io_macOut_delay_7;
      toplevel_mac_0_15_io_macOut_delay_9 <= toplevel_mac_0_15_io_macOut_delay_8;
      toplevel_mac_0_15_io_macOut_delay_10 <= toplevel_mac_0_15_io_macOut_delay_9;
      toplevel_mac_0_15_io_macOut_delay_11 <= toplevel_mac_0_15_io_macOut_delay_10;
      toplevel_mac_0_15_io_macOut_delay_12 <= toplevel_mac_0_15_io_macOut_delay_11;
      toplevel_mac_0_15_io_macOut_delay_13 <= toplevel_mac_0_15_io_macOut_delay_12;
      toplevel_mac_0_15_io_macOut_delay_14 <= toplevel_mac_0_15_io_macOut_delay_13;
      toplevel_mac_0_15_io_macOut_delay_15 <= toplevel_mac_0_15_io_macOut_delay_14;
      toplevel_mac_1_15_io_macOut_delay_1 <= mac_1_15_io_macOut;
      toplevel_mac_1_15_io_macOut_delay_2 <= toplevel_mac_1_15_io_macOut_delay_1;
      toplevel_mac_1_15_io_macOut_delay_3 <= toplevel_mac_1_15_io_macOut_delay_2;
      toplevel_mac_1_15_io_macOut_delay_4 <= toplevel_mac_1_15_io_macOut_delay_3;
      toplevel_mac_1_15_io_macOut_delay_5 <= toplevel_mac_1_15_io_macOut_delay_4;
      toplevel_mac_1_15_io_macOut_delay_6 <= toplevel_mac_1_15_io_macOut_delay_5;
      toplevel_mac_1_15_io_macOut_delay_7 <= toplevel_mac_1_15_io_macOut_delay_6;
      toplevel_mac_1_15_io_macOut_delay_8 <= toplevel_mac_1_15_io_macOut_delay_7;
      toplevel_mac_1_15_io_macOut_delay_9 <= toplevel_mac_1_15_io_macOut_delay_8;
      toplevel_mac_1_15_io_macOut_delay_10 <= toplevel_mac_1_15_io_macOut_delay_9;
      toplevel_mac_1_15_io_macOut_delay_11 <= toplevel_mac_1_15_io_macOut_delay_10;
      toplevel_mac_1_15_io_macOut_delay_12 <= toplevel_mac_1_15_io_macOut_delay_11;
      toplevel_mac_1_15_io_macOut_delay_13 <= toplevel_mac_1_15_io_macOut_delay_12;
      toplevel_mac_1_15_io_macOut_delay_14 <= toplevel_mac_1_15_io_macOut_delay_13;
      toplevel_mac_2_15_io_macOut_delay_1 <= mac_2_15_io_macOut;
      toplevel_mac_2_15_io_macOut_delay_2 <= toplevel_mac_2_15_io_macOut_delay_1;
      toplevel_mac_2_15_io_macOut_delay_3 <= toplevel_mac_2_15_io_macOut_delay_2;
      toplevel_mac_2_15_io_macOut_delay_4 <= toplevel_mac_2_15_io_macOut_delay_3;
      toplevel_mac_2_15_io_macOut_delay_5 <= toplevel_mac_2_15_io_macOut_delay_4;
      toplevel_mac_2_15_io_macOut_delay_6 <= toplevel_mac_2_15_io_macOut_delay_5;
      toplevel_mac_2_15_io_macOut_delay_7 <= toplevel_mac_2_15_io_macOut_delay_6;
      toplevel_mac_2_15_io_macOut_delay_8 <= toplevel_mac_2_15_io_macOut_delay_7;
      toplevel_mac_2_15_io_macOut_delay_9 <= toplevel_mac_2_15_io_macOut_delay_8;
      toplevel_mac_2_15_io_macOut_delay_10 <= toplevel_mac_2_15_io_macOut_delay_9;
      toplevel_mac_2_15_io_macOut_delay_11 <= toplevel_mac_2_15_io_macOut_delay_10;
      toplevel_mac_2_15_io_macOut_delay_12 <= toplevel_mac_2_15_io_macOut_delay_11;
      toplevel_mac_2_15_io_macOut_delay_13 <= toplevel_mac_2_15_io_macOut_delay_12;
      toplevel_mac_3_15_io_macOut_delay_1 <= mac_3_15_io_macOut;
      toplevel_mac_3_15_io_macOut_delay_2 <= toplevel_mac_3_15_io_macOut_delay_1;
      toplevel_mac_3_15_io_macOut_delay_3 <= toplevel_mac_3_15_io_macOut_delay_2;
      toplevel_mac_3_15_io_macOut_delay_4 <= toplevel_mac_3_15_io_macOut_delay_3;
      toplevel_mac_3_15_io_macOut_delay_5 <= toplevel_mac_3_15_io_macOut_delay_4;
      toplevel_mac_3_15_io_macOut_delay_6 <= toplevel_mac_3_15_io_macOut_delay_5;
      toplevel_mac_3_15_io_macOut_delay_7 <= toplevel_mac_3_15_io_macOut_delay_6;
      toplevel_mac_3_15_io_macOut_delay_8 <= toplevel_mac_3_15_io_macOut_delay_7;
      toplevel_mac_3_15_io_macOut_delay_9 <= toplevel_mac_3_15_io_macOut_delay_8;
      toplevel_mac_3_15_io_macOut_delay_10 <= toplevel_mac_3_15_io_macOut_delay_9;
      toplevel_mac_3_15_io_macOut_delay_11 <= toplevel_mac_3_15_io_macOut_delay_10;
      toplevel_mac_3_15_io_macOut_delay_12 <= toplevel_mac_3_15_io_macOut_delay_11;
      toplevel_mac_4_15_io_macOut_delay_1 <= mac_4_15_io_macOut;
      toplevel_mac_4_15_io_macOut_delay_2 <= toplevel_mac_4_15_io_macOut_delay_1;
      toplevel_mac_4_15_io_macOut_delay_3 <= toplevel_mac_4_15_io_macOut_delay_2;
      toplevel_mac_4_15_io_macOut_delay_4 <= toplevel_mac_4_15_io_macOut_delay_3;
      toplevel_mac_4_15_io_macOut_delay_5 <= toplevel_mac_4_15_io_macOut_delay_4;
      toplevel_mac_4_15_io_macOut_delay_6 <= toplevel_mac_4_15_io_macOut_delay_5;
      toplevel_mac_4_15_io_macOut_delay_7 <= toplevel_mac_4_15_io_macOut_delay_6;
      toplevel_mac_4_15_io_macOut_delay_8 <= toplevel_mac_4_15_io_macOut_delay_7;
      toplevel_mac_4_15_io_macOut_delay_9 <= toplevel_mac_4_15_io_macOut_delay_8;
      toplevel_mac_4_15_io_macOut_delay_10 <= toplevel_mac_4_15_io_macOut_delay_9;
      toplevel_mac_4_15_io_macOut_delay_11 <= toplevel_mac_4_15_io_macOut_delay_10;
      toplevel_mac_5_15_io_macOut_delay_1 <= mac_5_15_io_macOut;
      toplevel_mac_5_15_io_macOut_delay_2 <= toplevel_mac_5_15_io_macOut_delay_1;
      toplevel_mac_5_15_io_macOut_delay_3 <= toplevel_mac_5_15_io_macOut_delay_2;
      toplevel_mac_5_15_io_macOut_delay_4 <= toplevel_mac_5_15_io_macOut_delay_3;
      toplevel_mac_5_15_io_macOut_delay_5 <= toplevel_mac_5_15_io_macOut_delay_4;
      toplevel_mac_5_15_io_macOut_delay_6 <= toplevel_mac_5_15_io_macOut_delay_5;
      toplevel_mac_5_15_io_macOut_delay_7 <= toplevel_mac_5_15_io_macOut_delay_6;
      toplevel_mac_5_15_io_macOut_delay_8 <= toplevel_mac_5_15_io_macOut_delay_7;
      toplevel_mac_5_15_io_macOut_delay_9 <= toplevel_mac_5_15_io_macOut_delay_8;
      toplevel_mac_5_15_io_macOut_delay_10 <= toplevel_mac_5_15_io_macOut_delay_9;
      toplevel_mac_6_15_io_macOut_delay_1 <= mac_6_15_io_macOut;
      toplevel_mac_6_15_io_macOut_delay_2 <= toplevel_mac_6_15_io_macOut_delay_1;
      toplevel_mac_6_15_io_macOut_delay_3 <= toplevel_mac_6_15_io_macOut_delay_2;
      toplevel_mac_6_15_io_macOut_delay_4 <= toplevel_mac_6_15_io_macOut_delay_3;
      toplevel_mac_6_15_io_macOut_delay_5 <= toplevel_mac_6_15_io_macOut_delay_4;
      toplevel_mac_6_15_io_macOut_delay_6 <= toplevel_mac_6_15_io_macOut_delay_5;
      toplevel_mac_6_15_io_macOut_delay_7 <= toplevel_mac_6_15_io_macOut_delay_6;
      toplevel_mac_6_15_io_macOut_delay_8 <= toplevel_mac_6_15_io_macOut_delay_7;
      toplevel_mac_6_15_io_macOut_delay_9 <= toplevel_mac_6_15_io_macOut_delay_8;
      toplevel_mac_7_15_io_macOut_delay_1 <= mac_7_15_io_macOut;
      toplevel_mac_7_15_io_macOut_delay_2 <= toplevel_mac_7_15_io_macOut_delay_1;
      toplevel_mac_7_15_io_macOut_delay_3 <= toplevel_mac_7_15_io_macOut_delay_2;
      toplevel_mac_7_15_io_macOut_delay_4 <= toplevel_mac_7_15_io_macOut_delay_3;
      toplevel_mac_7_15_io_macOut_delay_5 <= toplevel_mac_7_15_io_macOut_delay_4;
      toplevel_mac_7_15_io_macOut_delay_6 <= toplevel_mac_7_15_io_macOut_delay_5;
      toplevel_mac_7_15_io_macOut_delay_7 <= toplevel_mac_7_15_io_macOut_delay_6;
      toplevel_mac_7_15_io_macOut_delay_8 <= toplevel_mac_7_15_io_macOut_delay_7;
      toplevel_mac_8_15_io_macOut_delay_1 <= mac_8_15_io_macOut;
      toplevel_mac_8_15_io_macOut_delay_2 <= toplevel_mac_8_15_io_macOut_delay_1;
      toplevel_mac_8_15_io_macOut_delay_3 <= toplevel_mac_8_15_io_macOut_delay_2;
      toplevel_mac_8_15_io_macOut_delay_4 <= toplevel_mac_8_15_io_macOut_delay_3;
      toplevel_mac_8_15_io_macOut_delay_5 <= toplevel_mac_8_15_io_macOut_delay_4;
      toplevel_mac_8_15_io_macOut_delay_6 <= toplevel_mac_8_15_io_macOut_delay_5;
      toplevel_mac_8_15_io_macOut_delay_7 <= toplevel_mac_8_15_io_macOut_delay_6;
      toplevel_mac_9_15_io_macOut_delay_1 <= mac_9_15_io_macOut;
      toplevel_mac_9_15_io_macOut_delay_2 <= toplevel_mac_9_15_io_macOut_delay_1;
      toplevel_mac_9_15_io_macOut_delay_3 <= toplevel_mac_9_15_io_macOut_delay_2;
      toplevel_mac_9_15_io_macOut_delay_4 <= toplevel_mac_9_15_io_macOut_delay_3;
      toplevel_mac_9_15_io_macOut_delay_5 <= toplevel_mac_9_15_io_macOut_delay_4;
      toplevel_mac_9_15_io_macOut_delay_6 <= toplevel_mac_9_15_io_macOut_delay_5;
      toplevel_mac_10_15_io_macOut_delay_1 <= mac_10_15_io_macOut;
      toplevel_mac_10_15_io_macOut_delay_2 <= toplevel_mac_10_15_io_macOut_delay_1;
      toplevel_mac_10_15_io_macOut_delay_3 <= toplevel_mac_10_15_io_macOut_delay_2;
      toplevel_mac_10_15_io_macOut_delay_4 <= toplevel_mac_10_15_io_macOut_delay_3;
      toplevel_mac_10_15_io_macOut_delay_5 <= toplevel_mac_10_15_io_macOut_delay_4;
      toplevel_mac_11_15_io_macOut_delay_1 <= mac_11_15_io_macOut;
      toplevel_mac_11_15_io_macOut_delay_2 <= toplevel_mac_11_15_io_macOut_delay_1;
      toplevel_mac_11_15_io_macOut_delay_3 <= toplevel_mac_11_15_io_macOut_delay_2;
      toplevel_mac_11_15_io_macOut_delay_4 <= toplevel_mac_11_15_io_macOut_delay_3;
      toplevel_mac_12_15_io_macOut_delay_1 <= mac_12_15_io_macOut;
      toplevel_mac_12_15_io_macOut_delay_2 <= toplevel_mac_12_15_io_macOut_delay_1;
      toplevel_mac_12_15_io_macOut_delay_3 <= toplevel_mac_12_15_io_macOut_delay_2;
      toplevel_mac_13_15_io_macOut_delay_1 <= mac_13_15_io_macOut;
      toplevel_mac_13_15_io_macOut_delay_2 <= toplevel_mac_13_15_io_macOut_delay_1;
      toplevel_mac_14_15_io_macOut_delay_1 <= mac_14_15_io_macOut;
    end
  end


endmodule

module MAC_255 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_15_inner_macOut;
  wire       [31:0]   _zz__zz__15_15_inner_macOut_1;
  wire       [31:0]   _zz__15_15_inner_macOut_1;
  wire       [31:0]   _zz__15_15_inner_macOut_2;
  reg        [15:0]   _15_15_inner_activation;
  reg        [15:0]   _15_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_15_inner_macOut;

  assign _zz__zz__15_15_inner_macOut = ($signed(io_mulInput) * $signed(_15_15_inner_activation));
  assign _zz__zz__15_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_15_inner_macOut)) ? 32'h00007fff : _zz__15_15_inner_macOut_2);
  assign _zz__15_15_inner_macOut_2 = (($signed(_zz__15_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_15_inner_activation;
    end else begin
      io_macOut = _15_15_inner_macOut;
    end
  end

  assign _zz__15_15_inner_macOut = ($signed(_zz__zz__15_15_inner_macOut) + $signed(_zz__zz__15_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_15_inner_activation <= 16'h0000;
      _15_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_15_inner_activation <= io_addInput;
      end else begin
        _15_15_inner_macOut <= _zz__15_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_254 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_14_inner_macOut;
  wire       [31:0]   _zz__zz__15_14_inner_macOut_1;
  wire       [31:0]   _zz__15_14_inner_macOut_1;
  wire       [31:0]   _zz__15_14_inner_macOut_2;
  reg        [15:0]   _15_14_inner_activation;
  reg        [15:0]   _15_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_14_inner_macOut;

  assign _zz__zz__15_14_inner_macOut = ($signed(io_mulInput) * $signed(_15_14_inner_activation));
  assign _zz__zz__15_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_14_inner_macOut)) ? 32'h00007fff : _zz__15_14_inner_macOut_2);
  assign _zz__15_14_inner_macOut_2 = (($signed(_zz__15_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_14_inner_activation;
    end else begin
      io_macOut = _15_14_inner_macOut;
    end
  end

  assign _zz__15_14_inner_macOut = ($signed(_zz__zz__15_14_inner_macOut) + $signed(_zz__zz__15_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_14_inner_activation <= 16'h0000;
      _15_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_14_inner_activation <= io_addInput;
      end else begin
        _15_14_inner_macOut <= _zz__15_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_253 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_13_inner_macOut;
  wire       [31:0]   _zz__zz__15_13_inner_macOut_1;
  wire       [31:0]   _zz__15_13_inner_macOut_1;
  wire       [31:0]   _zz__15_13_inner_macOut_2;
  reg        [15:0]   _15_13_inner_activation;
  reg        [15:0]   _15_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_13_inner_macOut;

  assign _zz__zz__15_13_inner_macOut = ($signed(io_mulInput) * $signed(_15_13_inner_activation));
  assign _zz__zz__15_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_13_inner_macOut)) ? 32'h00007fff : _zz__15_13_inner_macOut_2);
  assign _zz__15_13_inner_macOut_2 = (($signed(_zz__15_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_13_inner_activation;
    end else begin
      io_macOut = _15_13_inner_macOut;
    end
  end

  assign _zz__15_13_inner_macOut = ($signed(_zz__zz__15_13_inner_macOut) + $signed(_zz__zz__15_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_13_inner_activation <= 16'h0000;
      _15_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_13_inner_activation <= io_addInput;
      end else begin
        _15_13_inner_macOut <= _zz__15_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_252 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_12_inner_macOut;
  wire       [31:0]   _zz__zz__15_12_inner_macOut_1;
  wire       [31:0]   _zz__15_12_inner_macOut_1;
  wire       [31:0]   _zz__15_12_inner_macOut_2;
  reg        [15:0]   _15_12_inner_activation;
  reg        [15:0]   _15_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_12_inner_macOut;

  assign _zz__zz__15_12_inner_macOut = ($signed(io_mulInput) * $signed(_15_12_inner_activation));
  assign _zz__zz__15_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_12_inner_macOut)) ? 32'h00007fff : _zz__15_12_inner_macOut_2);
  assign _zz__15_12_inner_macOut_2 = (($signed(_zz__15_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_12_inner_activation;
    end else begin
      io_macOut = _15_12_inner_macOut;
    end
  end

  assign _zz__15_12_inner_macOut = ($signed(_zz__zz__15_12_inner_macOut) + $signed(_zz__zz__15_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_12_inner_activation <= 16'h0000;
      _15_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_12_inner_activation <= io_addInput;
      end else begin
        _15_12_inner_macOut <= _zz__15_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_251 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_11_inner_macOut;
  wire       [31:0]   _zz__zz__15_11_inner_macOut_1;
  wire       [31:0]   _zz__15_11_inner_macOut_1;
  wire       [31:0]   _zz__15_11_inner_macOut_2;
  reg        [15:0]   _15_11_inner_activation;
  reg        [15:0]   _15_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_11_inner_macOut;

  assign _zz__zz__15_11_inner_macOut = ($signed(io_mulInput) * $signed(_15_11_inner_activation));
  assign _zz__zz__15_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_11_inner_macOut)) ? 32'h00007fff : _zz__15_11_inner_macOut_2);
  assign _zz__15_11_inner_macOut_2 = (($signed(_zz__15_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_11_inner_activation;
    end else begin
      io_macOut = _15_11_inner_macOut;
    end
  end

  assign _zz__15_11_inner_macOut = ($signed(_zz__zz__15_11_inner_macOut) + $signed(_zz__zz__15_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_11_inner_activation <= 16'h0000;
      _15_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_11_inner_activation <= io_addInput;
      end else begin
        _15_11_inner_macOut <= _zz__15_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_250 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_10_inner_macOut;
  wire       [31:0]   _zz__zz__15_10_inner_macOut_1;
  wire       [31:0]   _zz__15_10_inner_macOut_1;
  wire       [31:0]   _zz__15_10_inner_macOut_2;
  reg        [15:0]   _15_10_inner_activation;
  reg        [15:0]   _15_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_10_inner_macOut;

  assign _zz__zz__15_10_inner_macOut = ($signed(io_mulInput) * $signed(_15_10_inner_activation));
  assign _zz__zz__15_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_10_inner_macOut)) ? 32'h00007fff : _zz__15_10_inner_macOut_2);
  assign _zz__15_10_inner_macOut_2 = (($signed(_zz__15_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_10_inner_activation;
    end else begin
      io_macOut = _15_10_inner_macOut;
    end
  end

  assign _zz__15_10_inner_macOut = ($signed(_zz__zz__15_10_inner_macOut) + $signed(_zz__zz__15_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_10_inner_activation <= 16'h0000;
      _15_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_10_inner_activation <= io_addInput;
      end else begin
        _15_10_inner_macOut <= _zz__15_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_249 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_9_inner_macOut;
  wire       [31:0]   _zz__zz__15_9_inner_macOut_1;
  wire       [31:0]   _zz__15_9_inner_macOut_1;
  wire       [31:0]   _zz__15_9_inner_macOut_2;
  reg        [15:0]   _15_9_inner_activation;
  reg        [15:0]   _15_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_9_inner_macOut;

  assign _zz__zz__15_9_inner_macOut = ($signed(io_mulInput) * $signed(_15_9_inner_activation));
  assign _zz__zz__15_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_9_inner_macOut)) ? 32'h00007fff : _zz__15_9_inner_macOut_2);
  assign _zz__15_9_inner_macOut_2 = (($signed(_zz__15_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_9_inner_activation;
    end else begin
      io_macOut = _15_9_inner_macOut;
    end
  end

  assign _zz__15_9_inner_macOut = ($signed(_zz__zz__15_9_inner_macOut) + $signed(_zz__zz__15_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_9_inner_activation <= 16'h0000;
      _15_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_9_inner_activation <= io_addInput;
      end else begin
        _15_9_inner_macOut <= _zz__15_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_248 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_8_inner_macOut;
  wire       [31:0]   _zz__zz__15_8_inner_macOut_1;
  wire       [31:0]   _zz__15_8_inner_macOut_1;
  wire       [31:0]   _zz__15_8_inner_macOut_2;
  reg        [15:0]   _15_8_inner_activation;
  reg        [15:0]   _15_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_8_inner_macOut;

  assign _zz__zz__15_8_inner_macOut = ($signed(io_mulInput) * $signed(_15_8_inner_activation));
  assign _zz__zz__15_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_8_inner_macOut)) ? 32'h00007fff : _zz__15_8_inner_macOut_2);
  assign _zz__15_8_inner_macOut_2 = (($signed(_zz__15_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_8_inner_activation;
    end else begin
      io_macOut = _15_8_inner_macOut;
    end
  end

  assign _zz__15_8_inner_macOut = ($signed(_zz__zz__15_8_inner_macOut) + $signed(_zz__zz__15_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_8_inner_activation <= 16'h0000;
      _15_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_8_inner_activation <= io_addInput;
      end else begin
        _15_8_inner_macOut <= _zz__15_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_247 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_7_inner_macOut;
  wire       [31:0]   _zz__zz__15_7_inner_macOut_1;
  wire       [31:0]   _zz__15_7_inner_macOut_1;
  wire       [31:0]   _zz__15_7_inner_macOut_2;
  reg        [15:0]   _15_7_inner_activation;
  reg        [15:0]   _15_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_7_inner_macOut;

  assign _zz__zz__15_7_inner_macOut = ($signed(io_mulInput) * $signed(_15_7_inner_activation));
  assign _zz__zz__15_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_7_inner_macOut)) ? 32'h00007fff : _zz__15_7_inner_macOut_2);
  assign _zz__15_7_inner_macOut_2 = (($signed(_zz__15_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_7_inner_activation;
    end else begin
      io_macOut = _15_7_inner_macOut;
    end
  end

  assign _zz__15_7_inner_macOut = ($signed(_zz__zz__15_7_inner_macOut) + $signed(_zz__zz__15_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_7_inner_activation <= 16'h0000;
      _15_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_7_inner_activation <= io_addInput;
      end else begin
        _15_7_inner_macOut <= _zz__15_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_246 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_6_inner_macOut;
  wire       [31:0]   _zz__zz__15_6_inner_macOut_1;
  wire       [31:0]   _zz__15_6_inner_macOut_1;
  wire       [31:0]   _zz__15_6_inner_macOut_2;
  reg        [15:0]   _15_6_inner_activation;
  reg        [15:0]   _15_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_6_inner_macOut;

  assign _zz__zz__15_6_inner_macOut = ($signed(io_mulInput) * $signed(_15_6_inner_activation));
  assign _zz__zz__15_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_6_inner_macOut)) ? 32'h00007fff : _zz__15_6_inner_macOut_2);
  assign _zz__15_6_inner_macOut_2 = (($signed(_zz__15_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_6_inner_activation;
    end else begin
      io_macOut = _15_6_inner_macOut;
    end
  end

  assign _zz__15_6_inner_macOut = ($signed(_zz__zz__15_6_inner_macOut) + $signed(_zz__zz__15_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_6_inner_activation <= 16'h0000;
      _15_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_6_inner_activation <= io_addInput;
      end else begin
        _15_6_inner_macOut <= _zz__15_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_245 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_5_inner_macOut;
  wire       [31:0]   _zz__zz__15_5_inner_macOut_1;
  wire       [31:0]   _zz__15_5_inner_macOut_1;
  wire       [31:0]   _zz__15_5_inner_macOut_2;
  reg        [15:0]   _15_5_inner_activation;
  reg        [15:0]   _15_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_5_inner_macOut;

  assign _zz__zz__15_5_inner_macOut = ($signed(io_mulInput) * $signed(_15_5_inner_activation));
  assign _zz__zz__15_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_5_inner_macOut)) ? 32'h00007fff : _zz__15_5_inner_macOut_2);
  assign _zz__15_5_inner_macOut_2 = (($signed(_zz__15_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_5_inner_activation;
    end else begin
      io_macOut = _15_5_inner_macOut;
    end
  end

  assign _zz__15_5_inner_macOut = ($signed(_zz__zz__15_5_inner_macOut) + $signed(_zz__zz__15_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_5_inner_activation <= 16'h0000;
      _15_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_5_inner_activation <= io_addInput;
      end else begin
        _15_5_inner_macOut <= _zz__15_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_244 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_4_inner_macOut;
  wire       [31:0]   _zz__zz__15_4_inner_macOut_1;
  wire       [31:0]   _zz__15_4_inner_macOut_1;
  wire       [31:0]   _zz__15_4_inner_macOut_2;
  reg        [15:0]   _15_4_inner_activation;
  reg        [15:0]   _15_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_4_inner_macOut;

  assign _zz__zz__15_4_inner_macOut = ($signed(io_mulInput) * $signed(_15_4_inner_activation));
  assign _zz__zz__15_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_4_inner_macOut)) ? 32'h00007fff : _zz__15_4_inner_macOut_2);
  assign _zz__15_4_inner_macOut_2 = (($signed(_zz__15_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_4_inner_activation;
    end else begin
      io_macOut = _15_4_inner_macOut;
    end
  end

  assign _zz__15_4_inner_macOut = ($signed(_zz__zz__15_4_inner_macOut) + $signed(_zz__zz__15_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_4_inner_activation <= 16'h0000;
      _15_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_4_inner_activation <= io_addInput;
      end else begin
        _15_4_inner_macOut <= _zz__15_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_243 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_3_inner_macOut;
  wire       [31:0]   _zz__zz__15_3_inner_macOut_1;
  wire       [31:0]   _zz__15_3_inner_macOut_1;
  wire       [31:0]   _zz__15_3_inner_macOut_2;
  reg        [15:0]   _15_3_inner_activation;
  reg        [15:0]   _15_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_3_inner_macOut;

  assign _zz__zz__15_3_inner_macOut = ($signed(io_mulInput) * $signed(_15_3_inner_activation));
  assign _zz__zz__15_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_3_inner_macOut)) ? 32'h00007fff : _zz__15_3_inner_macOut_2);
  assign _zz__15_3_inner_macOut_2 = (($signed(_zz__15_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_3_inner_activation;
    end else begin
      io_macOut = _15_3_inner_macOut;
    end
  end

  assign _zz__15_3_inner_macOut = ($signed(_zz__zz__15_3_inner_macOut) + $signed(_zz__zz__15_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_3_inner_activation <= 16'h0000;
      _15_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_3_inner_activation <= io_addInput;
      end else begin
        _15_3_inner_macOut <= _zz__15_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_242 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_2_inner_macOut;
  wire       [31:0]   _zz__zz__15_2_inner_macOut_1;
  wire       [31:0]   _zz__15_2_inner_macOut_1;
  wire       [31:0]   _zz__15_2_inner_macOut_2;
  reg        [15:0]   _15_2_inner_activation;
  reg        [15:0]   _15_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_2_inner_macOut;

  assign _zz__zz__15_2_inner_macOut = ($signed(io_mulInput) * $signed(_15_2_inner_activation));
  assign _zz__zz__15_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_2_inner_macOut)) ? 32'h00007fff : _zz__15_2_inner_macOut_2);
  assign _zz__15_2_inner_macOut_2 = (($signed(_zz__15_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_2_inner_activation;
    end else begin
      io_macOut = _15_2_inner_macOut;
    end
  end

  assign _zz__15_2_inner_macOut = ($signed(_zz__zz__15_2_inner_macOut) + $signed(_zz__zz__15_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_2_inner_activation <= 16'h0000;
      _15_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_2_inner_activation <= io_addInput;
      end else begin
        _15_2_inner_macOut <= _zz__15_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_241 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_1_inner_macOut;
  wire       [31:0]   _zz__zz__15_1_inner_macOut_1;
  wire       [31:0]   _zz__15_1_inner_macOut_1;
  wire       [31:0]   _zz__15_1_inner_macOut_2;
  reg        [15:0]   _15_1_inner_activation;
  reg        [15:0]   _15_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_1_inner_macOut;

  assign _zz__zz__15_1_inner_macOut = ($signed(io_mulInput) * $signed(_15_1_inner_activation));
  assign _zz__zz__15_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_1_inner_macOut)) ? 32'h00007fff : _zz__15_1_inner_macOut_2);
  assign _zz__15_1_inner_macOut_2 = (($signed(_zz__15_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_1_inner_activation;
    end else begin
      io_macOut = _15_1_inner_macOut;
    end
  end

  assign _zz__15_1_inner_macOut = ($signed(_zz__zz__15_1_inner_macOut) + $signed(_zz__zz__15_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_1_inner_activation <= 16'h0000;
      _15_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_1_inner_activation <= io_addInput;
      end else begin
        _15_1_inner_macOut <= _zz__15_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_240 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__15_0_inner_macOut;
  wire       [31:0]   _zz__zz__15_0_inner_macOut_1;
  wire       [31:0]   _zz__15_0_inner_macOut_1;
  wire       [31:0]   _zz__15_0_inner_macOut_2;
  reg        [15:0]   _15_0_inner_activation;
  reg        [15:0]   _15_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__15_0_inner_macOut;

  assign _zz__zz__15_0_inner_macOut = ($signed(io_mulInput) * $signed(_15_0_inner_activation));
  assign _zz__zz__15_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__15_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__15_0_inner_macOut)) ? 32'h00007fff : _zz__15_0_inner_macOut_2);
  assign _zz__15_0_inner_macOut_2 = (($signed(_zz__15_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__15_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _15_0_inner_activation;
    end else begin
      io_macOut = _15_0_inner_macOut;
    end
  end

  assign _zz__15_0_inner_macOut = ($signed(_zz__zz__15_0_inner_macOut) + $signed(_zz__zz__15_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _15_0_inner_activation <= 16'h0000;
      _15_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _15_0_inner_activation <= io_addInput;
      end else begin
        _15_0_inner_macOut <= _zz__15_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_239 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_15_inner_macOut;
  wire       [31:0]   _zz__zz__14_15_inner_macOut_1;
  wire       [31:0]   _zz__14_15_inner_macOut_1;
  wire       [31:0]   _zz__14_15_inner_macOut_2;
  reg        [15:0]   _14_15_inner_activation;
  reg        [15:0]   _14_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_15_inner_macOut;

  assign _zz__zz__14_15_inner_macOut = ($signed(io_mulInput) * $signed(_14_15_inner_activation));
  assign _zz__zz__14_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_15_inner_macOut)) ? 32'h00007fff : _zz__14_15_inner_macOut_2);
  assign _zz__14_15_inner_macOut_2 = (($signed(_zz__14_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_15_inner_activation;
    end else begin
      io_macOut = _14_15_inner_macOut;
    end
  end

  assign _zz__14_15_inner_macOut = ($signed(_zz__zz__14_15_inner_macOut) + $signed(_zz__zz__14_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_15_inner_activation <= 16'h0000;
      _14_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_15_inner_activation <= io_addInput;
      end else begin
        _14_15_inner_macOut <= _zz__14_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_238 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_14_inner_macOut;
  wire       [31:0]   _zz__zz__14_14_inner_macOut_1;
  wire       [31:0]   _zz__14_14_inner_macOut_1;
  wire       [31:0]   _zz__14_14_inner_macOut_2;
  reg        [15:0]   _14_14_inner_activation;
  reg        [15:0]   _14_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_14_inner_macOut;

  assign _zz__zz__14_14_inner_macOut = ($signed(io_mulInput) * $signed(_14_14_inner_activation));
  assign _zz__zz__14_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_14_inner_macOut)) ? 32'h00007fff : _zz__14_14_inner_macOut_2);
  assign _zz__14_14_inner_macOut_2 = (($signed(_zz__14_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_14_inner_activation;
    end else begin
      io_macOut = _14_14_inner_macOut;
    end
  end

  assign _zz__14_14_inner_macOut = ($signed(_zz__zz__14_14_inner_macOut) + $signed(_zz__zz__14_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_14_inner_activation <= 16'h0000;
      _14_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_14_inner_activation <= io_addInput;
      end else begin
        _14_14_inner_macOut <= _zz__14_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_237 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_13_inner_macOut;
  wire       [31:0]   _zz__zz__14_13_inner_macOut_1;
  wire       [31:0]   _zz__14_13_inner_macOut_1;
  wire       [31:0]   _zz__14_13_inner_macOut_2;
  reg        [15:0]   _14_13_inner_activation;
  reg        [15:0]   _14_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_13_inner_macOut;

  assign _zz__zz__14_13_inner_macOut = ($signed(io_mulInput) * $signed(_14_13_inner_activation));
  assign _zz__zz__14_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_13_inner_macOut)) ? 32'h00007fff : _zz__14_13_inner_macOut_2);
  assign _zz__14_13_inner_macOut_2 = (($signed(_zz__14_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_13_inner_activation;
    end else begin
      io_macOut = _14_13_inner_macOut;
    end
  end

  assign _zz__14_13_inner_macOut = ($signed(_zz__zz__14_13_inner_macOut) + $signed(_zz__zz__14_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_13_inner_activation <= 16'h0000;
      _14_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_13_inner_activation <= io_addInput;
      end else begin
        _14_13_inner_macOut <= _zz__14_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_236 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_12_inner_macOut;
  wire       [31:0]   _zz__zz__14_12_inner_macOut_1;
  wire       [31:0]   _zz__14_12_inner_macOut_1;
  wire       [31:0]   _zz__14_12_inner_macOut_2;
  reg        [15:0]   _14_12_inner_activation;
  reg        [15:0]   _14_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_12_inner_macOut;

  assign _zz__zz__14_12_inner_macOut = ($signed(io_mulInput) * $signed(_14_12_inner_activation));
  assign _zz__zz__14_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_12_inner_macOut)) ? 32'h00007fff : _zz__14_12_inner_macOut_2);
  assign _zz__14_12_inner_macOut_2 = (($signed(_zz__14_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_12_inner_activation;
    end else begin
      io_macOut = _14_12_inner_macOut;
    end
  end

  assign _zz__14_12_inner_macOut = ($signed(_zz__zz__14_12_inner_macOut) + $signed(_zz__zz__14_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_12_inner_activation <= 16'h0000;
      _14_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_12_inner_activation <= io_addInput;
      end else begin
        _14_12_inner_macOut <= _zz__14_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_235 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_11_inner_macOut;
  wire       [31:0]   _zz__zz__14_11_inner_macOut_1;
  wire       [31:0]   _zz__14_11_inner_macOut_1;
  wire       [31:0]   _zz__14_11_inner_macOut_2;
  reg        [15:0]   _14_11_inner_activation;
  reg        [15:0]   _14_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_11_inner_macOut;

  assign _zz__zz__14_11_inner_macOut = ($signed(io_mulInput) * $signed(_14_11_inner_activation));
  assign _zz__zz__14_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_11_inner_macOut)) ? 32'h00007fff : _zz__14_11_inner_macOut_2);
  assign _zz__14_11_inner_macOut_2 = (($signed(_zz__14_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_11_inner_activation;
    end else begin
      io_macOut = _14_11_inner_macOut;
    end
  end

  assign _zz__14_11_inner_macOut = ($signed(_zz__zz__14_11_inner_macOut) + $signed(_zz__zz__14_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_11_inner_activation <= 16'h0000;
      _14_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_11_inner_activation <= io_addInput;
      end else begin
        _14_11_inner_macOut <= _zz__14_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_234 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_10_inner_macOut;
  wire       [31:0]   _zz__zz__14_10_inner_macOut_1;
  wire       [31:0]   _zz__14_10_inner_macOut_1;
  wire       [31:0]   _zz__14_10_inner_macOut_2;
  reg        [15:0]   _14_10_inner_activation;
  reg        [15:0]   _14_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_10_inner_macOut;

  assign _zz__zz__14_10_inner_macOut = ($signed(io_mulInput) * $signed(_14_10_inner_activation));
  assign _zz__zz__14_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_10_inner_macOut)) ? 32'h00007fff : _zz__14_10_inner_macOut_2);
  assign _zz__14_10_inner_macOut_2 = (($signed(_zz__14_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_10_inner_activation;
    end else begin
      io_macOut = _14_10_inner_macOut;
    end
  end

  assign _zz__14_10_inner_macOut = ($signed(_zz__zz__14_10_inner_macOut) + $signed(_zz__zz__14_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_10_inner_activation <= 16'h0000;
      _14_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_10_inner_activation <= io_addInput;
      end else begin
        _14_10_inner_macOut <= _zz__14_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_233 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_9_inner_macOut;
  wire       [31:0]   _zz__zz__14_9_inner_macOut_1;
  wire       [31:0]   _zz__14_9_inner_macOut_1;
  wire       [31:0]   _zz__14_9_inner_macOut_2;
  reg        [15:0]   _14_9_inner_activation;
  reg        [15:0]   _14_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_9_inner_macOut;

  assign _zz__zz__14_9_inner_macOut = ($signed(io_mulInput) * $signed(_14_9_inner_activation));
  assign _zz__zz__14_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_9_inner_macOut)) ? 32'h00007fff : _zz__14_9_inner_macOut_2);
  assign _zz__14_9_inner_macOut_2 = (($signed(_zz__14_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_9_inner_activation;
    end else begin
      io_macOut = _14_9_inner_macOut;
    end
  end

  assign _zz__14_9_inner_macOut = ($signed(_zz__zz__14_9_inner_macOut) + $signed(_zz__zz__14_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_9_inner_activation <= 16'h0000;
      _14_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_9_inner_activation <= io_addInput;
      end else begin
        _14_9_inner_macOut <= _zz__14_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_232 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_8_inner_macOut;
  wire       [31:0]   _zz__zz__14_8_inner_macOut_1;
  wire       [31:0]   _zz__14_8_inner_macOut_1;
  wire       [31:0]   _zz__14_8_inner_macOut_2;
  reg        [15:0]   _14_8_inner_activation;
  reg        [15:0]   _14_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_8_inner_macOut;

  assign _zz__zz__14_8_inner_macOut = ($signed(io_mulInput) * $signed(_14_8_inner_activation));
  assign _zz__zz__14_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_8_inner_macOut)) ? 32'h00007fff : _zz__14_8_inner_macOut_2);
  assign _zz__14_8_inner_macOut_2 = (($signed(_zz__14_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_8_inner_activation;
    end else begin
      io_macOut = _14_8_inner_macOut;
    end
  end

  assign _zz__14_8_inner_macOut = ($signed(_zz__zz__14_8_inner_macOut) + $signed(_zz__zz__14_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_8_inner_activation <= 16'h0000;
      _14_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_8_inner_activation <= io_addInput;
      end else begin
        _14_8_inner_macOut <= _zz__14_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_231 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_7_inner_macOut;
  wire       [31:0]   _zz__zz__14_7_inner_macOut_1;
  wire       [31:0]   _zz__14_7_inner_macOut_1;
  wire       [31:0]   _zz__14_7_inner_macOut_2;
  reg        [15:0]   _14_7_inner_activation;
  reg        [15:0]   _14_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_7_inner_macOut;

  assign _zz__zz__14_7_inner_macOut = ($signed(io_mulInput) * $signed(_14_7_inner_activation));
  assign _zz__zz__14_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_7_inner_macOut)) ? 32'h00007fff : _zz__14_7_inner_macOut_2);
  assign _zz__14_7_inner_macOut_2 = (($signed(_zz__14_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_7_inner_activation;
    end else begin
      io_macOut = _14_7_inner_macOut;
    end
  end

  assign _zz__14_7_inner_macOut = ($signed(_zz__zz__14_7_inner_macOut) + $signed(_zz__zz__14_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_7_inner_activation <= 16'h0000;
      _14_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_7_inner_activation <= io_addInput;
      end else begin
        _14_7_inner_macOut <= _zz__14_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_230 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_6_inner_macOut;
  wire       [31:0]   _zz__zz__14_6_inner_macOut_1;
  wire       [31:0]   _zz__14_6_inner_macOut_1;
  wire       [31:0]   _zz__14_6_inner_macOut_2;
  reg        [15:0]   _14_6_inner_activation;
  reg        [15:0]   _14_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_6_inner_macOut;

  assign _zz__zz__14_6_inner_macOut = ($signed(io_mulInput) * $signed(_14_6_inner_activation));
  assign _zz__zz__14_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_6_inner_macOut)) ? 32'h00007fff : _zz__14_6_inner_macOut_2);
  assign _zz__14_6_inner_macOut_2 = (($signed(_zz__14_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_6_inner_activation;
    end else begin
      io_macOut = _14_6_inner_macOut;
    end
  end

  assign _zz__14_6_inner_macOut = ($signed(_zz__zz__14_6_inner_macOut) + $signed(_zz__zz__14_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_6_inner_activation <= 16'h0000;
      _14_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_6_inner_activation <= io_addInput;
      end else begin
        _14_6_inner_macOut <= _zz__14_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_229 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_5_inner_macOut;
  wire       [31:0]   _zz__zz__14_5_inner_macOut_1;
  wire       [31:0]   _zz__14_5_inner_macOut_1;
  wire       [31:0]   _zz__14_5_inner_macOut_2;
  reg        [15:0]   _14_5_inner_activation;
  reg        [15:0]   _14_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_5_inner_macOut;

  assign _zz__zz__14_5_inner_macOut = ($signed(io_mulInput) * $signed(_14_5_inner_activation));
  assign _zz__zz__14_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_5_inner_macOut)) ? 32'h00007fff : _zz__14_5_inner_macOut_2);
  assign _zz__14_5_inner_macOut_2 = (($signed(_zz__14_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_5_inner_activation;
    end else begin
      io_macOut = _14_5_inner_macOut;
    end
  end

  assign _zz__14_5_inner_macOut = ($signed(_zz__zz__14_5_inner_macOut) + $signed(_zz__zz__14_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_5_inner_activation <= 16'h0000;
      _14_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_5_inner_activation <= io_addInput;
      end else begin
        _14_5_inner_macOut <= _zz__14_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_228 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_4_inner_macOut;
  wire       [31:0]   _zz__zz__14_4_inner_macOut_1;
  wire       [31:0]   _zz__14_4_inner_macOut_1;
  wire       [31:0]   _zz__14_4_inner_macOut_2;
  reg        [15:0]   _14_4_inner_activation;
  reg        [15:0]   _14_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_4_inner_macOut;

  assign _zz__zz__14_4_inner_macOut = ($signed(io_mulInput) * $signed(_14_4_inner_activation));
  assign _zz__zz__14_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_4_inner_macOut)) ? 32'h00007fff : _zz__14_4_inner_macOut_2);
  assign _zz__14_4_inner_macOut_2 = (($signed(_zz__14_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_4_inner_activation;
    end else begin
      io_macOut = _14_4_inner_macOut;
    end
  end

  assign _zz__14_4_inner_macOut = ($signed(_zz__zz__14_4_inner_macOut) + $signed(_zz__zz__14_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_4_inner_activation <= 16'h0000;
      _14_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_4_inner_activation <= io_addInput;
      end else begin
        _14_4_inner_macOut <= _zz__14_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_227 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_3_inner_macOut;
  wire       [31:0]   _zz__zz__14_3_inner_macOut_1;
  wire       [31:0]   _zz__14_3_inner_macOut_1;
  wire       [31:0]   _zz__14_3_inner_macOut_2;
  reg        [15:0]   _14_3_inner_activation;
  reg        [15:0]   _14_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_3_inner_macOut;

  assign _zz__zz__14_3_inner_macOut = ($signed(io_mulInput) * $signed(_14_3_inner_activation));
  assign _zz__zz__14_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_3_inner_macOut)) ? 32'h00007fff : _zz__14_3_inner_macOut_2);
  assign _zz__14_3_inner_macOut_2 = (($signed(_zz__14_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_3_inner_activation;
    end else begin
      io_macOut = _14_3_inner_macOut;
    end
  end

  assign _zz__14_3_inner_macOut = ($signed(_zz__zz__14_3_inner_macOut) + $signed(_zz__zz__14_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_3_inner_activation <= 16'h0000;
      _14_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_3_inner_activation <= io_addInput;
      end else begin
        _14_3_inner_macOut <= _zz__14_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_226 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_2_inner_macOut;
  wire       [31:0]   _zz__zz__14_2_inner_macOut_1;
  wire       [31:0]   _zz__14_2_inner_macOut_1;
  wire       [31:0]   _zz__14_2_inner_macOut_2;
  reg        [15:0]   _14_2_inner_activation;
  reg        [15:0]   _14_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_2_inner_macOut;

  assign _zz__zz__14_2_inner_macOut = ($signed(io_mulInput) * $signed(_14_2_inner_activation));
  assign _zz__zz__14_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_2_inner_macOut)) ? 32'h00007fff : _zz__14_2_inner_macOut_2);
  assign _zz__14_2_inner_macOut_2 = (($signed(_zz__14_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_2_inner_activation;
    end else begin
      io_macOut = _14_2_inner_macOut;
    end
  end

  assign _zz__14_2_inner_macOut = ($signed(_zz__zz__14_2_inner_macOut) + $signed(_zz__zz__14_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_2_inner_activation <= 16'h0000;
      _14_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_2_inner_activation <= io_addInput;
      end else begin
        _14_2_inner_macOut <= _zz__14_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_225 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_1_inner_macOut;
  wire       [31:0]   _zz__zz__14_1_inner_macOut_1;
  wire       [31:0]   _zz__14_1_inner_macOut_1;
  wire       [31:0]   _zz__14_1_inner_macOut_2;
  reg        [15:0]   _14_1_inner_activation;
  reg        [15:0]   _14_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_1_inner_macOut;

  assign _zz__zz__14_1_inner_macOut = ($signed(io_mulInput) * $signed(_14_1_inner_activation));
  assign _zz__zz__14_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_1_inner_macOut)) ? 32'h00007fff : _zz__14_1_inner_macOut_2);
  assign _zz__14_1_inner_macOut_2 = (($signed(_zz__14_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_1_inner_activation;
    end else begin
      io_macOut = _14_1_inner_macOut;
    end
  end

  assign _zz__14_1_inner_macOut = ($signed(_zz__zz__14_1_inner_macOut) + $signed(_zz__zz__14_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_1_inner_activation <= 16'h0000;
      _14_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_1_inner_activation <= io_addInput;
      end else begin
        _14_1_inner_macOut <= _zz__14_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_224 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__14_0_inner_macOut;
  wire       [31:0]   _zz__zz__14_0_inner_macOut_1;
  wire       [31:0]   _zz__14_0_inner_macOut_1;
  wire       [31:0]   _zz__14_0_inner_macOut_2;
  reg        [15:0]   _14_0_inner_activation;
  reg        [15:0]   _14_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__14_0_inner_macOut;

  assign _zz__zz__14_0_inner_macOut = ($signed(io_mulInput) * $signed(_14_0_inner_activation));
  assign _zz__zz__14_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__14_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__14_0_inner_macOut)) ? 32'h00007fff : _zz__14_0_inner_macOut_2);
  assign _zz__14_0_inner_macOut_2 = (($signed(_zz__14_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__14_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _14_0_inner_activation;
    end else begin
      io_macOut = _14_0_inner_macOut;
    end
  end

  assign _zz__14_0_inner_macOut = ($signed(_zz__zz__14_0_inner_macOut) + $signed(_zz__zz__14_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _14_0_inner_activation <= 16'h0000;
      _14_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _14_0_inner_activation <= io_addInput;
      end else begin
        _14_0_inner_macOut <= _zz__14_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_223 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_15_inner_macOut;
  wire       [31:0]   _zz__zz__13_15_inner_macOut_1;
  wire       [31:0]   _zz__13_15_inner_macOut_1;
  wire       [31:0]   _zz__13_15_inner_macOut_2;
  reg        [15:0]   _13_15_inner_activation;
  reg        [15:0]   _13_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_15_inner_macOut;

  assign _zz__zz__13_15_inner_macOut = ($signed(io_mulInput) * $signed(_13_15_inner_activation));
  assign _zz__zz__13_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_15_inner_macOut)) ? 32'h00007fff : _zz__13_15_inner_macOut_2);
  assign _zz__13_15_inner_macOut_2 = (($signed(_zz__13_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_15_inner_activation;
    end else begin
      io_macOut = _13_15_inner_macOut;
    end
  end

  assign _zz__13_15_inner_macOut = ($signed(_zz__zz__13_15_inner_macOut) + $signed(_zz__zz__13_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_15_inner_activation <= 16'h0000;
      _13_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_15_inner_activation <= io_addInput;
      end else begin
        _13_15_inner_macOut <= _zz__13_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_222 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_14_inner_macOut;
  wire       [31:0]   _zz__zz__13_14_inner_macOut_1;
  wire       [31:0]   _zz__13_14_inner_macOut_1;
  wire       [31:0]   _zz__13_14_inner_macOut_2;
  reg        [15:0]   _13_14_inner_activation;
  reg        [15:0]   _13_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_14_inner_macOut;

  assign _zz__zz__13_14_inner_macOut = ($signed(io_mulInput) * $signed(_13_14_inner_activation));
  assign _zz__zz__13_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_14_inner_macOut)) ? 32'h00007fff : _zz__13_14_inner_macOut_2);
  assign _zz__13_14_inner_macOut_2 = (($signed(_zz__13_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_14_inner_activation;
    end else begin
      io_macOut = _13_14_inner_macOut;
    end
  end

  assign _zz__13_14_inner_macOut = ($signed(_zz__zz__13_14_inner_macOut) + $signed(_zz__zz__13_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_14_inner_activation <= 16'h0000;
      _13_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_14_inner_activation <= io_addInput;
      end else begin
        _13_14_inner_macOut <= _zz__13_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_221 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_13_inner_macOut;
  wire       [31:0]   _zz__zz__13_13_inner_macOut_1;
  wire       [31:0]   _zz__13_13_inner_macOut_1;
  wire       [31:0]   _zz__13_13_inner_macOut_2;
  reg        [15:0]   _13_13_inner_activation;
  reg        [15:0]   _13_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_13_inner_macOut;

  assign _zz__zz__13_13_inner_macOut = ($signed(io_mulInput) * $signed(_13_13_inner_activation));
  assign _zz__zz__13_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_13_inner_macOut)) ? 32'h00007fff : _zz__13_13_inner_macOut_2);
  assign _zz__13_13_inner_macOut_2 = (($signed(_zz__13_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_13_inner_activation;
    end else begin
      io_macOut = _13_13_inner_macOut;
    end
  end

  assign _zz__13_13_inner_macOut = ($signed(_zz__zz__13_13_inner_macOut) + $signed(_zz__zz__13_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_13_inner_activation <= 16'h0000;
      _13_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_13_inner_activation <= io_addInput;
      end else begin
        _13_13_inner_macOut <= _zz__13_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_220 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_12_inner_macOut;
  wire       [31:0]   _zz__zz__13_12_inner_macOut_1;
  wire       [31:0]   _zz__13_12_inner_macOut_1;
  wire       [31:0]   _zz__13_12_inner_macOut_2;
  reg        [15:0]   _13_12_inner_activation;
  reg        [15:0]   _13_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_12_inner_macOut;

  assign _zz__zz__13_12_inner_macOut = ($signed(io_mulInput) * $signed(_13_12_inner_activation));
  assign _zz__zz__13_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_12_inner_macOut)) ? 32'h00007fff : _zz__13_12_inner_macOut_2);
  assign _zz__13_12_inner_macOut_2 = (($signed(_zz__13_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_12_inner_activation;
    end else begin
      io_macOut = _13_12_inner_macOut;
    end
  end

  assign _zz__13_12_inner_macOut = ($signed(_zz__zz__13_12_inner_macOut) + $signed(_zz__zz__13_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_12_inner_activation <= 16'h0000;
      _13_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_12_inner_activation <= io_addInput;
      end else begin
        _13_12_inner_macOut <= _zz__13_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_219 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_11_inner_macOut;
  wire       [31:0]   _zz__zz__13_11_inner_macOut_1;
  wire       [31:0]   _zz__13_11_inner_macOut_1;
  wire       [31:0]   _zz__13_11_inner_macOut_2;
  reg        [15:0]   _13_11_inner_activation;
  reg        [15:0]   _13_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_11_inner_macOut;

  assign _zz__zz__13_11_inner_macOut = ($signed(io_mulInput) * $signed(_13_11_inner_activation));
  assign _zz__zz__13_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_11_inner_macOut)) ? 32'h00007fff : _zz__13_11_inner_macOut_2);
  assign _zz__13_11_inner_macOut_2 = (($signed(_zz__13_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_11_inner_activation;
    end else begin
      io_macOut = _13_11_inner_macOut;
    end
  end

  assign _zz__13_11_inner_macOut = ($signed(_zz__zz__13_11_inner_macOut) + $signed(_zz__zz__13_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_11_inner_activation <= 16'h0000;
      _13_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_11_inner_activation <= io_addInput;
      end else begin
        _13_11_inner_macOut <= _zz__13_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_218 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_10_inner_macOut;
  wire       [31:0]   _zz__zz__13_10_inner_macOut_1;
  wire       [31:0]   _zz__13_10_inner_macOut_1;
  wire       [31:0]   _zz__13_10_inner_macOut_2;
  reg        [15:0]   _13_10_inner_activation;
  reg        [15:0]   _13_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_10_inner_macOut;

  assign _zz__zz__13_10_inner_macOut = ($signed(io_mulInput) * $signed(_13_10_inner_activation));
  assign _zz__zz__13_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_10_inner_macOut)) ? 32'h00007fff : _zz__13_10_inner_macOut_2);
  assign _zz__13_10_inner_macOut_2 = (($signed(_zz__13_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_10_inner_activation;
    end else begin
      io_macOut = _13_10_inner_macOut;
    end
  end

  assign _zz__13_10_inner_macOut = ($signed(_zz__zz__13_10_inner_macOut) + $signed(_zz__zz__13_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_10_inner_activation <= 16'h0000;
      _13_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_10_inner_activation <= io_addInput;
      end else begin
        _13_10_inner_macOut <= _zz__13_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_217 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_9_inner_macOut;
  wire       [31:0]   _zz__zz__13_9_inner_macOut_1;
  wire       [31:0]   _zz__13_9_inner_macOut_1;
  wire       [31:0]   _zz__13_9_inner_macOut_2;
  reg        [15:0]   _13_9_inner_activation;
  reg        [15:0]   _13_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_9_inner_macOut;

  assign _zz__zz__13_9_inner_macOut = ($signed(io_mulInput) * $signed(_13_9_inner_activation));
  assign _zz__zz__13_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_9_inner_macOut)) ? 32'h00007fff : _zz__13_9_inner_macOut_2);
  assign _zz__13_9_inner_macOut_2 = (($signed(_zz__13_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_9_inner_activation;
    end else begin
      io_macOut = _13_9_inner_macOut;
    end
  end

  assign _zz__13_9_inner_macOut = ($signed(_zz__zz__13_9_inner_macOut) + $signed(_zz__zz__13_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_9_inner_activation <= 16'h0000;
      _13_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_9_inner_activation <= io_addInput;
      end else begin
        _13_9_inner_macOut <= _zz__13_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_216 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_8_inner_macOut;
  wire       [31:0]   _zz__zz__13_8_inner_macOut_1;
  wire       [31:0]   _zz__13_8_inner_macOut_1;
  wire       [31:0]   _zz__13_8_inner_macOut_2;
  reg        [15:0]   _13_8_inner_activation;
  reg        [15:0]   _13_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_8_inner_macOut;

  assign _zz__zz__13_8_inner_macOut = ($signed(io_mulInput) * $signed(_13_8_inner_activation));
  assign _zz__zz__13_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_8_inner_macOut)) ? 32'h00007fff : _zz__13_8_inner_macOut_2);
  assign _zz__13_8_inner_macOut_2 = (($signed(_zz__13_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_8_inner_activation;
    end else begin
      io_macOut = _13_8_inner_macOut;
    end
  end

  assign _zz__13_8_inner_macOut = ($signed(_zz__zz__13_8_inner_macOut) + $signed(_zz__zz__13_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_8_inner_activation <= 16'h0000;
      _13_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_8_inner_activation <= io_addInput;
      end else begin
        _13_8_inner_macOut <= _zz__13_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_215 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_7_inner_macOut;
  wire       [31:0]   _zz__zz__13_7_inner_macOut_1;
  wire       [31:0]   _zz__13_7_inner_macOut_1;
  wire       [31:0]   _zz__13_7_inner_macOut_2;
  reg        [15:0]   _13_7_inner_activation;
  reg        [15:0]   _13_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_7_inner_macOut;

  assign _zz__zz__13_7_inner_macOut = ($signed(io_mulInput) * $signed(_13_7_inner_activation));
  assign _zz__zz__13_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_7_inner_macOut)) ? 32'h00007fff : _zz__13_7_inner_macOut_2);
  assign _zz__13_7_inner_macOut_2 = (($signed(_zz__13_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_7_inner_activation;
    end else begin
      io_macOut = _13_7_inner_macOut;
    end
  end

  assign _zz__13_7_inner_macOut = ($signed(_zz__zz__13_7_inner_macOut) + $signed(_zz__zz__13_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_7_inner_activation <= 16'h0000;
      _13_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_7_inner_activation <= io_addInput;
      end else begin
        _13_7_inner_macOut <= _zz__13_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_214 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_6_inner_macOut;
  wire       [31:0]   _zz__zz__13_6_inner_macOut_1;
  wire       [31:0]   _zz__13_6_inner_macOut_1;
  wire       [31:0]   _zz__13_6_inner_macOut_2;
  reg        [15:0]   _13_6_inner_activation;
  reg        [15:0]   _13_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_6_inner_macOut;

  assign _zz__zz__13_6_inner_macOut = ($signed(io_mulInput) * $signed(_13_6_inner_activation));
  assign _zz__zz__13_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_6_inner_macOut)) ? 32'h00007fff : _zz__13_6_inner_macOut_2);
  assign _zz__13_6_inner_macOut_2 = (($signed(_zz__13_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_6_inner_activation;
    end else begin
      io_macOut = _13_6_inner_macOut;
    end
  end

  assign _zz__13_6_inner_macOut = ($signed(_zz__zz__13_6_inner_macOut) + $signed(_zz__zz__13_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_6_inner_activation <= 16'h0000;
      _13_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_6_inner_activation <= io_addInput;
      end else begin
        _13_6_inner_macOut <= _zz__13_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_213 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_5_inner_macOut;
  wire       [31:0]   _zz__zz__13_5_inner_macOut_1;
  wire       [31:0]   _zz__13_5_inner_macOut_1;
  wire       [31:0]   _zz__13_5_inner_macOut_2;
  reg        [15:0]   _13_5_inner_activation;
  reg        [15:0]   _13_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_5_inner_macOut;

  assign _zz__zz__13_5_inner_macOut = ($signed(io_mulInput) * $signed(_13_5_inner_activation));
  assign _zz__zz__13_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_5_inner_macOut)) ? 32'h00007fff : _zz__13_5_inner_macOut_2);
  assign _zz__13_5_inner_macOut_2 = (($signed(_zz__13_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_5_inner_activation;
    end else begin
      io_macOut = _13_5_inner_macOut;
    end
  end

  assign _zz__13_5_inner_macOut = ($signed(_zz__zz__13_5_inner_macOut) + $signed(_zz__zz__13_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_5_inner_activation <= 16'h0000;
      _13_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_5_inner_activation <= io_addInput;
      end else begin
        _13_5_inner_macOut <= _zz__13_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_212 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_4_inner_macOut;
  wire       [31:0]   _zz__zz__13_4_inner_macOut_1;
  wire       [31:0]   _zz__13_4_inner_macOut_1;
  wire       [31:0]   _zz__13_4_inner_macOut_2;
  reg        [15:0]   _13_4_inner_activation;
  reg        [15:0]   _13_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_4_inner_macOut;

  assign _zz__zz__13_4_inner_macOut = ($signed(io_mulInput) * $signed(_13_4_inner_activation));
  assign _zz__zz__13_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_4_inner_macOut)) ? 32'h00007fff : _zz__13_4_inner_macOut_2);
  assign _zz__13_4_inner_macOut_2 = (($signed(_zz__13_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_4_inner_activation;
    end else begin
      io_macOut = _13_4_inner_macOut;
    end
  end

  assign _zz__13_4_inner_macOut = ($signed(_zz__zz__13_4_inner_macOut) + $signed(_zz__zz__13_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_4_inner_activation <= 16'h0000;
      _13_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_4_inner_activation <= io_addInput;
      end else begin
        _13_4_inner_macOut <= _zz__13_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_211 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_3_inner_macOut;
  wire       [31:0]   _zz__zz__13_3_inner_macOut_1;
  wire       [31:0]   _zz__13_3_inner_macOut_1;
  wire       [31:0]   _zz__13_3_inner_macOut_2;
  reg        [15:0]   _13_3_inner_activation;
  reg        [15:0]   _13_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_3_inner_macOut;

  assign _zz__zz__13_3_inner_macOut = ($signed(io_mulInput) * $signed(_13_3_inner_activation));
  assign _zz__zz__13_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_3_inner_macOut)) ? 32'h00007fff : _zz__13_3_inner_macOut_2);
  assign _zz__13_3_inner_macOut_2 = (($signed(_zz__13_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_3_inner_activation;
    end else begin
      io_macOut = _13_3_inner_macOut;
    end
  end

  assign _zz__13_3_inner_macOut = ($signed(_zz__zz__13_3_inner_macOut) + $signed(_zz__zz__13_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_3_inner_activation <= 16'h0000;
      _13_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_3_inner_activation <= io_addInput;
      end else begin
        _13_3_inner_macOut <= _zz__13_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_210 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_2_inner_macOut;
  wire       [31:0]   _zz__zz__13_2_inner_macOut_1;
  wire       [31:0]   _zz__13_2_inner_macOut_1;
  wire       [31:0]   _zz__13_2_inner_macOut_2;
  reg        [15:0]   _13_2_inner_activation;
  reg        [15:0]   _13_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_2_inner_macOut;

  assign _zz__zz__13_2_inner_macOut = ($signed(io_mulInput) * $signed(_13_2_inner_activation));
  assign _zz__zz__13_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_2_inner_macOut)) ? 32'h00007fff : _zz__13_2_inner_macOut_2);
  assign _zz__13_2_inner_macOut_2 = (($signed(_zz__13_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_2_inner_activation;
    end else begin
      io_macOut = _13_2_inner_macOut;
    end
  end

  assign _zz__13_2_inner_macOut = ($signed(_zz__zz__13_2_inner_macOut) + $signed(_zz__zz__13_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_2_inner_activation <= 16'h0000;
      _13_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_2_inner_activation <= io_addInput;
      end else begin
        _13_2_inner_macOut <= _zz__13_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_209 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_1_inner_macOut;
  wire       [31:0]   _zz__zz__13_1_inner_macOut_1;
  wire       [31:0]   _zz__13_1_inner_macOut_1;
  wire       [31:0]   _zz__13_1_inner_macOut_2;
  reg        [15:0]   _13_1_inner_activation;
  reg        [15:0]   _13_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_1_inner_macOut;

  assign _zz__zz__13_1_inner_macOut = ($signed(io_mulInput) * $signed(_13_1_inner_activation));
  assign _zz__zz__13_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_1_inner_macOut)) ? 32'h00007fff : _zz__13_1_inner_macOut_2);
  assign _zz__13_1_inner_macOut_2 = (($signed(_zz__13_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_1_inner_activation;
    end else begin
      io_macOut = _13_1_inner_macOut;
    end
  end

  assign _zz__13_1_inner_macOut = ($signed(_zz__zz__13_1_inner_macOut) + $signed(_zz__zz__13_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_1_inner_activation <= 16'h0000;
      _13_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_1_inner_activation <= io_addInput;
      end else begin
        _13_1_inner_macOut <= _zz__13_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_208 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__13_0_inner_macOut;
  wire       [31:0]   _zz__zz__13_0_inner_macOut_1;
  wire       [31:0]   _zz__13_0_inner_macOut_1;
  wire       [31:0]   _zz__13_0_inner_macOut_2;
  reg        [15:0]   _13_0_inner_activation;
  reg        [15:0]   _13_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__13_0_inner_macOut;

  assign _zz__zz__13_0_inner_macOut = ($signed(io_mulInput) * $signed(_13_0_inner_activation));
  assign _zz__zz__13_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__13_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__13_0_inner_macOut)) ? 32'h00007fff : _zz__13_0_inner_macOut_2);
  assign _zz__13_0_inner_macOut_2 = (($signed(_zz__13_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__13_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _13_0_inner_activation;
    end else begin
      io_macOut = _13_0_inner_macOut;
    end
  end

  assign _zz__13_0_inner_macOut = ($signed(_zz__zz__13_0_inner_macOut) + $signed(_zz__zz__13_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _13_0_inner_activation <= 16'h0000;
      _13_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _13_0_inner_activation <= io_addInput;
      end else begin
        _13_0_inner_macOut <= _zz__13_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_207 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_15_inner_macOut;
  wire       [31:0]   _zz__zz__12_15_inner_macOut_1;
  wire       [31:0]   _zz__12_15_inner_macOut_1;
  wire       [31:0]   _zz__12_15_inner_macOut_2;
  reg        [15:0]   _12_15_inner_activation;
  reg        [15:0]   _12_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_15_inner_macOut;

  assign _zz__zz__12_15_inner_macOut = ($signed(io_mulInput) * $signed(_12_15_inner_activation));
  assign _zz__zz__12_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_15_inner_macOut)) ? 32'h00007fff : _zz__12_15_inner_macOut_2);
  assign _zz__12_15_inner_macOut_2 = (($signed(_zz__12_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_15_inner_activation;
    end else begin
      io_macOut = _12_15_inner_macOut;
    end
  end

  assign _zz__12_15_inner_macOut = ($signed(_zz__zz__12_15_inner_macOut) + $signed(_zz__zz__12_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_15_inner_activation <= 16'h0000;
      _12_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_15_inner_activation <= io_addInput;
      end else begin
        _12_15_inner_macOut <= _zz__12_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_206 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_14_inner_macOut;
  wire       [31:0]   _zz__zz__12_14_inner_macOut_1;
  wire       [31:0]   _zz__12_14_inner_macOut_1;
  wire       [31:0]   _zz__12_14_inner_macOut_2;
  reg        [15:0]   _12_14_inner_activation;
  reg        [15:0]   _12_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_14_inner_macOut;

  assign _zz__zz__12_14_inner_macOut = ($signed(io_mulInput) * $signed(_12_14_inner_activation));
  assign _zz__zz__12_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_14_inner_macOut)) ? 32'h00007fff : _zz__12_14_inner_macOut_2);
  assign _zz__12_14_inner_macOut_2 = (($signed(_zz__12_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_14_inner_activation;
    end else begin
      io_macOut = _12_14_inner_macOut;
    end
  end

  assign _zz__12_14_inner_macOut = ($signed(_zz__zz__12_14_inner_macOut) + $signed(_zz__zz__12_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_14_inner_activation <= 16'h0000;
      _12_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_14_inner_activation <= io_addInput;
      end else begin
        _12_14_inner_macOut <= _zz__12_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_205 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_13_inner_macOut;
  wire       [31:0]   _zz__zz__12_13_inner_macOut_1;
  wire       [31:0]   _zz__12_13_inner_macOut_1;
  wire       [31:0]   _zz__12_13_inner_macOut_2;
  reg        [15:0]   _12_13_inner_activation;
  reg        [15:0]   _12_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_13_inner_macOut;

  assign _zz__zz__12_13_inner_macOut = ($signed(io_mulInput) * $signed(_12_13_inner_activation));
  assign _zz__zz__12_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_13_inner_macOut)) ? 32'h00007fff : _zz__12_13_inner_macOut_2);
  assign _zz__12_13_inner_macOut_2 = (($signed(_zz__12_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_13_inner_activation;
    end else begin
      io_macOut = _12_13_inner_macOut;
    end
  end

  assign _zz__12_13_inner_macOut = ($signed(_zz__zz__12_13_inner_macOut) + $signed(_zz__zz__12_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_13_inner_activation <= 16'h0000;
      _12_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_13_inner_activation <= io_addInput;
      end else begin
        _12_13_inner_macOut <= _zz__12_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_204 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_12_inner_macOut;
  wire       [31:0]   _zz__zz__12_12_inner_macOut_1;
  wire       [31:0]   _zz__12_12_inner_macOut_1;
  wire       [31:0]   _zz__12_12_inner_macOut_2;
  reg        [15:0]   _12_12_inner_activation;
  reg        [15:0]   _12_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_12_inner_macOut;

  assign _zz__zz__12_12_inner_macOut = ($signed(io_mulInput) * $signed(_12_12_inner_activation));
  assign _zz__zz__12_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_12_inner_macOut)) ? 32'h00007fff : _zz__12_12_inner_macOut_2);
  assign _zz__12_12_inner_macOut_2 = (($signed(_zz__12_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_12_inner_activation;
    end else begin
      io_macOut = _12_12_inner_macOut;
    end
  end

  assign _zz__12_12_inner_macOut = ($signed(_zz__zz__12_12_inner_macOut) + $signed(_zz__zz__12_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_12_inner_activation <= 16'h0000;
      _12_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_12_inner_activation <= io_addInput;
      end else begin
        _12_12_inner_macOut <= _zz__12_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_203 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_11_inner_macOut;
  wire       [31:0]   _zz__zz__12_11_inner_macOut_1;
  wire       [31:0]   _zz__12_11_inner_macOut_1;
  wire       [31:0]   _zz__12_11_inner_macOut_2;
  reg        [15:0]   _12_11_inner_activation;
  reg        [15:0]   _12_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_11_inner_macOut;

  assign _zz__zz__12_11_inner_macOut = ($signed(io_mulInput) * $signed(_12_11_inner_activation));
  assign _zz__zz__12_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_11_inner_macOut)) ? 32'h00007fff : _zz__12_11_inner_macOut_2);
  assign _zz__12_11_inner_macOut_2 = (($signed(_zz__12_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_11_inner_activation;
    end else begin
      io_macOut = _12_11_inner_macOut;
    end
  end

  assign _zz__12_11_inner_macOut = ($signed(_zz__zz__12_11_inner_macOut) + $signed(_zz__zz__12_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_11_inner_activation <= 16'h0000;
      _12_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_11_inner_activation <= io_addInput;
      end else begin
        _12_11_inner_macOut <= _zz__12_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_202 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_10_inner_macOut;
  wire       [31:0]   _zz__zz__12_10_inner_macOut_1;
  wire       [31:0]   _zz__12_10_inner_macOut_1;
  wire       [31:0]   _zz__12_10_inner_macOut_2;
  reg        [15:0]   _12_10_inner_activation;
  reg        [15:0]   _12_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_10_inner_macOut;

  assign _zz__zz__12_10_inner_macOut = ($signed(io_mulInput) * $signed(_12_10_inner_activation));
  assign _zz__zz__12_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_10_inner_macOut)) ? 32'h00007fff : _zz__12_10_inner_macOut_2);
  assign _zz__12_10_inner_macOut_2 = (($signed(_zz__12_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_10_inner_activation;
    end else begin
      io_macOut = _12_10_inner_macOut;
    end
  end

  assign _zz__12_10_inner_macOut = ($signed(_zz__zz__12_10_inner_macOut) + $signed(_zz__zz__12_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_10_inner_activation <= 16'h0000;
      _12_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_10_inner_activation <= io_addInput;
      end else begin
        _12_10_inner_macOut <= _zz__12_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_201 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_9_inner_macOut;
  wire       [31:0]   _zz__zz__12_9_inner_macOut_1;
  wire       [31:0]   _zz__12_9_inner_macOut_1;
  wire       [31:0]   _zz__12_9_inner_macOut_2;
  reg        [15:0]   _12_9_inner_activation;
  reg        [15:0]   _12_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_9_inner_macOut;

  assign _zz__zz__12_9_inner_macOut = ($signed(io_mulInput) * $signed(_12_9_inner_activation));
  assign _zz__zz__12_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_9_inner_macOut)) ? 32'h00007fff : _zz__12_9_inner_macOut_2);
  assign _zz__12_9_inner_macOut_2 = (($signed(_zz__12_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_9_inner_activation;
    end else begin
      io_macOut = _12_9_inner_macOut;
    end
  end

  assign _zz__12_9_inner_macOut = ($signed(_zz__zz__12_9_inner_macOut) + $signed(_zz__zz__12_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_9_inner_activation <= 16'h0000;
      _12_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_9_inner_activation <= io_addInput;
      end else begin
        _12_9_inner_macOut <= _zz__12_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_200 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_8_inner_macOut;
  wire       [31:0]   _zz__zz__12_8_inner_macOut_1;
  wire       [31:0]   _zz__12_8_inner_macOut_1;
  wire       [31:0]   _zz__12_8_inner_macOut_2;
  reg        [15:0]   _12_8_inner_activation;
  reg        [15:0]   _12_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_8_inner_macOut;

  assign _zz__zz__12_8_inner_macOut = ($signed(io_mulInput) * $signed(_12_8_inner_activation));
  assign _zz__zz__12_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_8_inner_macOut)) ? 32'h00007fff : _zz__12_8_inner_macOut_2);
  assign _zz__12_8_inner_macOut_2 = (($signed(_zz__12_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_8_inner_activation;
    end else begin
      io_macOut = _12_8_inner_macOut;
    end
  end

  assign _zz__12_8_inner_macOut = ($signed(_zz__zz__12_8_inner_macOut) + $signed(_zz__zz__12_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_8_inner_activation <= 16'h0000;
      _12_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_8_inner_activation <= io_addInput;
      end else begin
        _12_8_inner_macOut <= _zz__12_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_199 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_7_inner_macOut;
  wire       [31:0]   _zz__zz__12_7_inner_macOut_1;
  wire       [31:0]   _zz__12_7_inner_macOut_1;
  wire       [31:0]   _zz__12_7_inner_macOut_2;
  reg        [15:0]   _12_7_inner_activation;
  reg        [15:0]   _12_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_7_inner_macOut;

  assign _zz__zz__12_7_inner_macOut = ($signed(io_mulInput) * $signed(_12_7_inner_activation));
  assign _zz__zz__12_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_7_inner_macOut)) ? 32'h00007fff : _zz__12_7_inner_macOut_2);
  assign _zz__12_7_inner_macOut_2 = (($signed(_zz__12_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_7_inner_activation;
    end else begin
      io_macOut = _12_7_inner_macOut;
    end
  end

  assign _zz__12_7_inner_macOut = ($signed(_zz__zz__12_7_inner_macOut) + $signed(_zz__zz__12_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_7_inner_activation <= 16'h0000;
      _12_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_7_inner_activation <= io_addInput;
      end else begin
        _12_7_inner_macOut <= _zz__12_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_198 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_6_inner_macOut;
  wire       [31:0]   _zz__zz__12_6_inner_macOut_1;
  wire       [31:0]   _zz__12_6_inner_macOut_1;
  wire       [31:0]   _zz__12_6_inner_macOut_2;
  reg        [15:0]   _12_6_inner_activation;
  reg        [15:0]   _12_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_6_inner_macOut;

  assign _zz__zz__12_6_inner_macOut = ($signed(io_mulInput) * $signed(_12_6_inner_activation));
  assign _zz__zz__12_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_6_inner_macOut)) ? 32'h00007fff : _zz__12_6_inner_macOut_2);
  assign _zz__12_6_inner_macOut_2 = (($signed(_zz__12_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_6_inner_activation;
    end else begin
      io_macOut = _12_6_inner_macOut;
    end
  end

  assign _zz__12_6_inner_macOut = ($signed(_zz__zz__12_6_inner_macOut) + $signed(_zz__zz__12_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_6_inner_activation <= 16'h0000;
      _12_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_6_inner_activation <= io_addInput;
      end else begin
        _12_6_inner_macOut <= _zz__12_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_197 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_5_inner_macOut;
  wire       [31:0]   _zz__zz__12_5_inner_macOut_1;
  wire       [31:0]   _zz__12_5_inner_macOut_1;
  wire       [31:0]   _zz__12_5_inner_macOut_2;
  reg        [15:0]   _12_5_inner_activation;
  reg        [15:0]   _12_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_5_inner_macOut;

  assign _zz__zz__12_5_inner_macOut = ($signed(io_mulInput) * $signed(_12_5_inner_activation));
  assign _zz__zz__12_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_5_inner_macOut)) ? 32'h00007fff : _zz__12_5_inner_macOut_2);
  assign _zz__12_5_inner_macOut_2 = (($signed(_zz__12_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_5_inner_activation;
    end else begin
      io_macOut = _12_5_inner_macOut;
    end
  end

  assign _zz__12_5_inner_macOut = ($signed(_zz__zz__12_5_inner_macOut) + $signed(_zz__zz__12_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_5_inner_activation <= 16'h0000;
      _12_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_5_inner_activation <= io_addInput;
      end else begin
        _12_5_inner_macOut <= _zz__12_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_196 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_4_inner_macOut;
  wire       [31:0]   _zz__zz__12_4_inner_macOut_1;
  wire       [31:0]   _zz__12_4_inner_macOut_1;
  wire       [31:0]   _zz__12_4_inner_macOut_2;
  reg        [15:0]   _12_4_inner_activation;
  reg        [15:0]   _12_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_4_inner_macOut;

  assign _zz__zz__12_4_inner_macOut = ($signed(io_mulInput) * $signed(_12_4_inner_activation));
  assign _zz__zz__12_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_4_inner_macOut)) ? 32'h00007fff : _zz__12_4_inner_macOut_2);
  assign _zz__12_4_inner_macOut_2 = (($signed(_zz__12_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_4_inner_activation;
    end else begin
      io_macOut = _12_4_inner_macOut;
    end
  end

  assign _zz__12_4_inner_macOut = ($signed(_zz__zz__12_4_inner_macOut) + $signed(_zz__zz__12_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_4_inner_activation <= 16'h0000;
      _12_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_4_inner_activation <= io_addInput;
      end else begin
        _12_4_inner_macOut <= _zz__12_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_195 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_3_inner_macOut;
  wire       [31:0]   _zz__zz__12_3_inner_macOut_1;
  wire       [31:0]   _zz__12_3_inner_macOut_1;
  wire       [31:0]   _zz__12_3_inner_macOut_2;
  reg        [15:0]   _12_3_inner_activation;
  reg        [15:0]   _12_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_3_inner_macOut;

  assign _zz__zz__12_3_inner_macOut = ($signed(io_mulInput) * $signed(_12_3_inner_activation));
  assign _zz__zz__12_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_3_inner_macOut)) ? 32'h00007fff : _zz__12_3_inner_macOut_2);
  assign _zz__12_3_inner_macOut_2 = (($signed(_zz__12_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_3_inner_activation;
    end else begin
      io_macOut = _12_3_inner_macOut;
    end
  end

  assign _zz__12_3_inner_macOut = ($signed(_zz__zz__12_3_inner_macOut) + $signed(_zz__zz__12_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_3_inner_activation <= 16'h0000;
      _12_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_3_inner_activation <= io_addInput;
      end else begin
        _12_3_inner_macOut <= _zz__12_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_194 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_2_inner_macOut;
  wire       [31:0]   _zz__zz__12_2_inner_macOut_1;
  wire       [31:0]   _zz__12_2_inner_macOut_1;
  wire       [31:0]   _zz__12_2_inner_macOut_2;
  reg        [15:0]   _12_2_inner_activation;
  reg        [15:0]   _12_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_2_inner_macOut;

  assign _zz__zz__12_2_inner_macOut = ($signed(io_mulInput) * $signed(_12_2_inner_activation));
  assign _zz__zz__12_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_2_inner_macOut)) ? 32'h00007fff : _zz__12_2_inner_macOut_2);
  assign _zz__12_2_inner_macOut_2 = (($signed(_zz__12_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_2_inner_activation;
    end else begin
      io_macOut = _12_2_inner_macOut;
    end
  end

  assign _zz__12_2_inner_macOut = ($signed(_zz__zz__12_2_inner_macOut) + $signed(_zz__zz__12_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_2_inner_activation <= 16'h0000;
      _12_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_2_inner_activation <= io_addInput;
      end else begin
        _12_2_inner_macOut <= _zz__12_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_193 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_1_inner_macOut;
  wire       [31:0]   _zz__zz__12_1_inner_macOut_1;
  wire       [31:0]   _zz__12_1_inner_macOut_1;
  wire       [31:0]   _zz__12_1_inner_macOut_2;
  reg        [15:0]   _12_1_inner_activation;
  reg        [15:0]   _12_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_1_inner_macOut;

  assign _zz__zz__12_1_inner_macOut = ($signed(io_mulInput) * $signed(_12_1_inner_activation));
  assign _zz__zz__12_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_1_inner_macOut)) ? 32'h00007fff : _zz__12_1_inner_macOut_2);
  assign _zz__12_1_inner_macOut_2 = (($signed(_zz__12_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_1_inner_activation;
    end else begin
      io_macOut = _12_1_inner_macOut;
    end
  end

  assign _zz__12_1_inner_macOut = ($signed(_zz__zz__12_1_inner_macOut) + $signed(_zz__zz__12_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_1_inner_activation <= 16'h0000;
      _12_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_1_inner_activation <= io_addInput;
      end else begin
        _12_1_inner_macOut <= _zz__12_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_192 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__12_0_inner_macOut;
  wire       [31:0]   _zz__zz__12_0_inner_macOut_1;
  wire       [31:0]   _zz__12_0_inner_macOut_1;
  wire       [31:0]   _zz__12_0_inner_macOut_2;
  reg        [15:0]   _12_0_inner_activation;
  reg        [15:0]   _12_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__12_0_inner_macOut;

  assign _zz__zz__12_0_inner_macOut = ($signed(io_mulInput) * $signed(_12_0_inner_activation));
  assign _zz__zz__12_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__12_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__12_0_inner_macOut)) ? 32'h00007fff : _zz__12_0_inner_macOut_2);
  assign _zz__12_0_inner_macOut_2 = (($signed(_zz__12_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__12_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _12_0_inner_activation;
    end else begin
      io_macOut = _12_0_inner_macOut;
    end
  end

  assign _zz__12_0_inner_macOut = ($signed(_zz__zz__12_0_inner_macOut) + $signed(_zz__zz__12_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _12_0_inner_activation <= 16'h0000;
      _12_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _12_0_inner_activation <= io_addInput;
      end else begin
        _12_0_inner_macOut <= _zz__12_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_191 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_15_inner_macOut;
  wire       [31:0]   _zz__zz__11_15_inner_macOut_1;
  wire       [31:0]   _zz__11_15_inner_macOut_1;
  wire       [31:0]   _zz__11_15_inner_macOut_2;
  reg        [15:0]   _11_15_inner_activation;
  reg        [15:0]   _11_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_15_inner_macOut;

  assign _zz__zz__11_15_inner_macOut = ($signed(io_mulInput) * $signed(_11_15_inner_activation));
  assign _zz__zz__11_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_15_inner_macOut)) ? 32'h00007fff : _zz__11_15_inner_macOut_2);
  assign _zz__11_15_inner_macOut_2 = (($signed(_zz__11_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_15_inner_activation;
    end else begin
      io_macOut = _11_15_inner_macOut;
    end
  end

  assign _zz__11_15_inner_macOut = ($signed(_zz__zz__11_15_inner_macOut) + $signed(_zz__zz__11_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_15_inner_activation <= 16'h0000;
      _11_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_15_inner_activation <= io_addInput;
      end else begin
        _11_15_inner_macOut <= _zz__11_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_190 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_14_inner_macOut;
  wire       [31:0]   _zz__zz__11_14_inner_macOut_1;
  wire       [31:0]   _zz__11_14_inner_macOut_1;
  wire       [31:0]   _zz__11_14_inner_macOut_2;
  reg        [15:0]   _11_14_inner_activation;
  reg        [15:0]   _11_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_14_inner_macOut;

  assign _zz__zz__11_14_inner_macOut = ($signed(io_mulInput) * $signed(_11_14_inner_activation));
  assign _zz__zz__11_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_14_inner_macOut)) ? 32'h00007fff : _zz__11_14_inner_macOut_2);
  assign _zz__11_14_inner_macOut_2 = (($signed(_zz__11_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_14_inner_activation;
    end else begin
      io_macOut = _11_14_inner_macOut;
    end
  end

  assign _zz__11_14_inner_macOut = ($signed(_zz__zz__11_14_inner_macOut) + $signed(_zz__zz__11_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_14_inner_activation <= 16'h0000;
      _11_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_14_inner_activation <= io_addInput;
      end else begin
        _11_14_inner_macOut <= _zz__11_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_189 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_13_inner_macOut;
  wire       [31:0]   _zz__zz__11_13_inner_macOut_1;
  wire       [31:0]   _zz__11_13_inner_macOut_1;
  wire       [31:0]   _zz__11_13_inner_macOut_2;
  reg        [15:0]   _11_13_inner_activation;
  reg        [15:0]   _11_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_13_inner_macOut;

  assign _zz__zz__11_13_inner_macOut = ($signed(io_mulInput) * $signed(_11_13_inner_activation));
  assign _zz__zz__11_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_13_inner_macOut)) ? 32'h00007fff : _zz__11_13_inner_macOut_2);
  assign _zz__11_13_inner_macOut_2 = (($signed(_zz__11_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_13_inner_activation;
    end else begin
      io_macOut = _11_13_inner_macOut;
    end
  end

  assign _zz__11_13_inner_macOut = ($signed(_zz__zz__11_13_inner_macOut) + $signed(_zz__zz__11_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_13_inner_activation <= 16'h0000;
      _11_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_13_inner_activation <= io_addInput;
      end else begin
        _11_13_inner_macOut <= _zz__11_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_188 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_12_inner_macOut;
  wire       [31:0]   _zz__zz__11_12_inner_macOut_1;
  wire       [31:0]   _zz__11_12_inner_macOut_1;
  wire       [31:0]   _zz__11_12_inner_macOut_2;
  reg        [15:0]   _11_12_inner_activation;
  reg        [15:0]   _11_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_12_inner_macOut;

  assign _zz__zz__11_12_inner_macOut = ($signed(io_mulInput) * $signed(_11_12_inner_activation));
  assign _zz__zz__11_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_12_inner_macOut)) ? 32'h00007fff : _zz__11_12_inner_macOut_2);
  assign _zz__11_12_inner_macOut_2 = (($signed(_zz__11_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_12_inner_activation;
    end else begin
      io_macOut = _11_12_inner_macOut;
    end
  end

  assign _zz__11_12_inner_macOut = ($signed(_zz__zz__11_12_inner_macOut) + $signed(_zz__zz__11_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_12_inner_activation <= 16'h0000;
      _11_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_12_inner_activation <= io_addInput;
      end else begin
        _11_12_inner_macOut <= _zz__11_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_187 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_11_inner_macOut;
  wire       [31:0]   _zz__zz__11_11_inner_macOut_1;
  wire       [31:0]   _zz__11_11_inner_macOut_1;
  wire       [31:0]   _zz__11_11_inner_macOut_2;
  reg        [15:0]   _11_11_inner_activation;
  reg        [15:0]   _11_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_11_inner_macOut;

  assign _zz__zz__11_11_inner_macOut = ($signed(io_mulInput) * $signed(_11_11_inner_activation));
  assign _zz__zz__11_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_11_inner_macOut)) ? 32'h00007fff : _zz__11_11_inner_macOut_2);
  assign _zz__11_11_inner_macOut_2 = (($signed(_zz__11_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_11_inner_activation;
    end else begin
      io_macOut = _11_11_inner_macOut;
    end
  end

  assign _zz__11_11_inner_macOut = ($signed(_zz__zz__11_11_inner_macOut) + $signed(_zz__zz__11_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_11_inner_activation <= 16'h0000;
      _11_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_11_inner_activation <= io_addInput;
      end else begin
        _11_11_inner_macOut <= _zz__11_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_186 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_10_inner_macOut;
  wire       [31:0]   _zz__zz__11_10_inner_macOut_1;
  wire       [31:0]   _zz__11_10_inner_macOut_1;
  wire       [31:0]   _zz__11_10_inner_macOut_2;
  reg        [15:0]   _11_10_inner_activation;
  reg        [15:0]   _11_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_10_inner_macOut;

  assign _zz__zz__11_10_inner_macOut = ($signed(io_mulInput) * $signed(_11_10_inner_activation));
  assign _zz__zz__11_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_10_inner_macOut)) ? 32'h00007fff : _zz__11_10_inner_macOut_2);
  assign _zz__11_10_inner_macOut_2 = (($signed(_zz__11_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_10_inner_activation;
    end else begin
      io_macOut = _11_10_inner_macOut;
    end
  end

  assign _zz__11_10_inner_macOut = ($signed(_zz__zz__11_10_inner_macOut) + $signed(_zz__zz__11_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_10_inner_activation <= 16'h0000;
      _11_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_10_inner_activation <= io_addInput;
      end else begin
        _11_10_inner_macOut <= _zz__11_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_185 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_9_inner_macOut;
  wire       [31:0]   _zz__zz__11_9_inner_macOut_1;
  wire       [31:0]   _zz__11_9_inner_macOut_1;
  wire       [31:0]   _zz__11_9_inner_macOut_2;
  reg        [15:0]   _11_9_inner_activation;
  reg        [15:0]   _11_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_9_inner_macOut;

  assign _zz__zz__11_9_inner_macOut = ($signed(io_mulInput) * $signed(_11_9_inner_activation));
  assign _zz__zz__11_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_9_inner_macOut)) ? 32'h00007fff : _zz__11_9_inner_macOut_2);
  assign _zz__11_9_inner_macOut_2 = (($signed(_zz__11_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_9_inner_activation;
    end else begin
      io_macOut = _11_9_inner_macOut;
    end
  end

  assign _zz__11_9_inner_macOut = ($signed(_zz__zz__11_9_inner_macOut) + $signed(_zz__zz__11_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_9_inner_activation <= 16'h0000;
      _11_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_9_inner_activation <= io_addInput;
      end else begin
        _11_9_inner_macOut <= _zz__11_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_184 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_8_inner_macOut;
  wire       [31:0]   _zz__zz__11_8_inner_macOut_1;
  wire       [31:0]   _zz__11_8_inner_macOut_1;
  wire       [31:0]   _zz__11_8_inner_macOut_2;
  reg        [15:0]   _11_8_inner_activation;
  reg        [15:0]   _11_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_8_inner_macOut;

  assign _zz__zz__11_8_inner_macOut = ($signed(io_mulInput) * $signed(_11_8_inner_activation));
  assign _zz__zz__11_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_8_inner_macOut)) ? 32'h00007fff : _zz__11_8_inner_macOut_2);
  assign _zz__11_8_inner_macOut_2 = (($signed(_zz__11_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_8_inner_activation;
    end else begin
      io_macOut = _11_8_inner_macOut;
    end
  end

  assign _zz__11_8_inner_macOut = ($signed(_zz__zz__11_8_inner_macOut) + $signed(_zz__zz__11_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_8_inner_activation <= 16'h0000;
      _11_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_8_inner_activation <= io_addInput;
      end else begin
        _11_8_inner_macOut <= _zz__11_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_183 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_7_inner_macOut;
  wire       [31:0]   _zz__zz__11_7_inner_macOut_1;
  wire       [31:0]   _zz__11_7_inner_macOut_1;
  wire       [31:0]   _zz__11_7_inner_macOut_2;
  reg        [15:0]   _11_7_inner_activation;
  reg        [15:0]   _11_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_7_inner_macOut;

  assign _zz__zz__11_7_inner_macOut = ($signed(io_mulInput) * $signed(_11_7_inner_activation));
  assign _zz__zz__11_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_7_inner_macOut)) ? 32'h00007fff : _zz__11_7_inner_macOut_2);
  assign _zz__11_7_inner_macOut_2 = (($signed(_zz__11_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_7_inner_activation;
    end else begin
      io_macOut = _11_7_inner_macOut;
    end
  end

  assign _zz__11_7_inner_macOut = ($signed(_zz__zz__11_7_inner_macOut) + $signed(_zz__zz__11_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_7_inner_activation <= 16'h0000;
      _11_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_7_inner_activation <= io_addInput;
      end else begin
        _11_7_inner_macOut <= _zz__11_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_182 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_6_inner_macOut;
  wire       [31:0]   _zz__zz__11_6_inner_macOut_1;
  wire       [31:0]   _zz__11_6_inner_macOut_1;
  wire       [31:0]   _zz__11_6_inner_macOut_2;
  reg        [15:0]   _11_6_inner_activation;
  reg        [15:0]   _11_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_6_inner_macOut;

  assign _zz__zz__11_6_inner_macOut = ($signed(io_mulInput) * $signed(_11_6_inner_activation));
  assign _zz__zz__11_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_6_inner_macOut)) ? 32'h00007fff : _zz__11_6_inner_macOut_2);
  assign _zz__11_6_inner_macOut_2 = (($signed(_zz__11_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_6_inner_activation;
    end else begin
      io_macOut = _11_6_inner_macOut;
    end
  end

  assign _zz__11_6_inner_macOut = ($signed(_zz__zz__11_6_inner_macOut) + $signed(_zz__zz__11_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_6_inner_activation <= 16'h0000;
      _11_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_6_inner_activation <= io_addInput;
      end else begin
        _11_6_inner_macOut <= _zz__11_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_181 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_5_inner_macOut;
  wire       [31:0]   _zz__zz__11_5_inner_macOut_1;
  wire       [31:0]   _zz__11_5_inner_macOut_1;
  wire       [31:0]   _zz__11_5_inner_macOut_2;
  reg        [15:0]   _11_5_inner_activation;
  reg        [15:0]   _11_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_5_inner_macOut;

  assign _zz__zz__11_5_inner_macOut = ($signed(io_mulInput) * $signed(_11_5_inner_activation));
  assign _zz__zz__11_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_5_inner_macOut)) ? 32'h00007fff : _zz__11_5_inner_macOut_2);
  assign _zz__11_5_inner_macOut_2 = (($signed(_zz__11_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_5_inner_activation;
    end else begin
      io_macOut = _11_5_inner_macOut;
    end
  end

  assign _zz__11_5_inner_macOut = ($signed(_zz__zz__11_5_inner_macOut) + $signed(_zz__zz__11_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_5_inner_activation <= 16'h0000;
      _11_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_5_inner_activation <= io_addInput;
      end else begin
        _11_5_inner_macOut <= _zz__11_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_180 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_4_inner_macOut;
  wire       [31:0]   _zz__zz__11_4_inner_macOut_1;
  wire       [31:0]   _zz__11_4_inner_macOut_1;
  wire       [31:0]   _zz__11_4_inner_macOut_2;
  reg        [15:0]   _11_4_inner_activation;
  reg        [15:0]   _11_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_4_inner_macOut;

  assign _zz__zz__11_4_inner_macOut = ($signed(io_mulInput) * $signed(_11_4_inner_activation));
  assign _zz__zz__11_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_4_inner_macOut)) ? 32'h00007fff : _zz__11_4_inner_macOut_2);
  assign _zz__11_4_inner_macOut_2 = (($signed(_zz__11_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_4_inner_activation;
    end else begin
      io_macOut = _11_4_inner_macOut;
    end
  end

  assign _zz__11_4_inner_macOut = ($signed(_zz__zz__11_4_inner_macOut) + $signed(_zz__zz__11_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_4_inner_activation <= 16'h0000;
      _11_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_4_inner_activation <= io_addInput;
      end else begin
        _11_4_inner_macOut <= _zz__11_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_179 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_3_inner_macOut;
  wire       [31:0]   _zz__zz__11_3_inner_macOut_1;
  wire       [31:0]   _zz__11_3_inner_macOut_1;
  wire       [31:0]   _zz__11_3_inner_macOut_2;
  reg        [15:0]   _11_3_inner_activation;
  reg        [15:0]   _11_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_3_inner_macOut;

  assign _zz__zz__11_3_inner_macOut = ($signed(io_mulInput) * $signed(_11_3_inner_activation));
  assign _zz__zz__11_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_3_inner_macOut)) ? 32'h00007fff : _zz__11_3_inner_macOut_2);
  assign _zz__11_3_inner_macOut_2 = (($signed(_zz__11_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_3_inner_activation;
    end else begin
      io_macOut = _11_3_inner_macOut;
    end
  end

  assign _zz__11_3_inner_macOut = ($signed(_zz__zz__11_3_inner_macOut) + $signed(_zz__zz__11_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_3_inner_activation <= 16'h0000;
      _11_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_3_inner_activation <= io_addInput;
      end else begin
        _11_3_inner_macOut <= _zz__11_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_178 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_2_inner_macOut;
  wire       [31:0]   _zz__zz__11_2_inner_macOut_1;
  wire       [31:0]   _zz__11_2_inner_macOut_1;
  wire       [31:0]   _zz__11_2_inner_macOut_2;
  reg        [15:0]   _11_2_inner_activation;
  reg        [15:0]   _11_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_2_inner_macOut;

  assign _zz__zz__11_2_inner_macOut = ($signed(io_mulInput) * $signed(_11_2_inner_activation));
  assign _zz__zz__11_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_2_inner_macOut)) ? 32'h00007fff : _zz__11_2_inner_macOut_2);
  assign _zz__11_2_inner_macOut_2 = (($signed(_zz__11_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_2_inner_activation;
    end else begin
      io_macOut = _11_2_inner_macOut;
    end
  end

  assign _zz__11_2_inner_macOut = ($signed(_zz__zz__11_2_inner_macOut) + $signed(_zz__zz__11_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_2_inner_activation <= 16'h0000;
      _11_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_2_inner_activation <= io_addInput;
      end else begin
        _11_2_inner_macOut <= _zz__11_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_177 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_1_inner_macOut;
  wire       [31:0]   _zz__zz__11_1_inner_macOut_1;
  wire       [31:0]   _zz__11_1_inner_macOut_1;
  wire       [31:0]   _zz__11_1_inner_macOut_2;
  reg        [15:0]   _11_1_inner_activation;
  reg        [15:0]   _11_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_1_inner_macOut;

  assign _zz__zz__11_1_inner_macOut = ($signed(io_mulInput) * $signed(_11_1_inner_activation));
  assign _zz__zz__11_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_1_inner_macOut)) ? 32'h00007fff : _zz__11_1_inner_macOut_2);
  assign _zz__11_1_inner_macOut_2 = (($signed(_zz__11_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_1_inner_activation;
    end else begin
      io_macOut = _11_1_inner_macOut;
    end
  end

  assign _zz__11_1_inner_macOut = ($signed(_zz__zz__11_1_inner_macOut) + $signed(_zz__zz__11_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_1_inner_activation <= 16'h0000;
      _11_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_1_inner_activation <= io_addInput;
      end else begin
        _11_1_inner_macOut <= _zz__11_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_176 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__11_0_inner_macOut;
  wire       [31:0]   _zz__zz__11_0_inner_macOut_1;
  wire       [31:0]   _zz__11_0_inner_macOut_1;
  wire       [31:0]   _zz__11_0_inner_macOut_2;
  reg        [15:0]   _11_0_inner_activation;
  reg        [15:0]   _11_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__11_0_inner_macOut;

  assign _zz__zz__11_0_inner_macOut = ($signed(io_mulInput) * $signed(_11_0_inner_activation));
  assign _zz__zz__11_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__11_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__11_0_inner_macOut)) ? 32'h00007fff : _zz__11_0_inner_macOut_2);
  assign _zz__11_0_inner_macOut_2 = (($signed(_zz__11_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__11_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _11_0_inner_activation;
    end else begin
      io_macOut = _11_0_inner_macOut;
    end
  end

  assign _zz__11_0_inner_macOut = ($signed(_zz__zz__11_0_inner_macOut) + $signed(_zz__zz__11_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _11_0_inner_activation <= 16'h0000;
      _11_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _11_0_inner_activation <= io_addInput;
      end else begin
        _11_0_inner_macOut <= _zz__11_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_175 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_15_inner_macOut;
  wire       [31:0]   _zz__zz__10_15_inner_macOut_1;
  wire       [31:0]   _zz__10_15_inner_macOut_1;
  wire       [31:0]   _zz__10_15_inner_macOut_2;
  reg        [15:0]   _10_15_inner_activation;
  reg        [15:0]   _10_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_15_inner_macOut;

  assign _zz__zz__10_15_inner_macOut = ($signed(io_mulInput) * $signed(_10_15_inner_activation));
  assign _zz__zz__10_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_15_inner_macOut)) ? 32'h00007fff : _zz__10_15_inner_macOut_2);
  assign _zz__10_15_inner_macOut_2 = (($signed(_zz__10_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_15_inner_activation;
    end else begin
      io_macOut = _10_15_inner_macOut;
    end
  end

  assign _zz__10_15_inner_macOut = ($signed(_zz__zz__10_15_inner_macOut) + $signed(_zz__zz__10_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_15_inner_activation <= 16'h0000;
      _10_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_15_inner_activation <= io_addInput;
      end else begin
        _10_15_inner_macOut <= _zz__10_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_174 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_14_inner_macOut;
  wire       [31:0]   _zz__zz__10_14_inner_macOut_1;
  wire       [31:0]   _zz__10_14_inner_macOut_1;
  wire       [31:0]   _zz__10_14_inner_macOut_2;
  reg        [15:0]   _10_14_inner_activation;
  reg        [15:0]   _10_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_14_inner_macOut;

  assign _zz__zz__10_14_inner_macOut = ($signed(io_mulInput) * $signed(_10_14_inner_activation));
  assign _zz__zz__10_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_14_inner_macOut)) ? 32'h00007fff : _zz__10_14_inner_macOut_2);
  assign _zz__10_14_inner_macOut_2 = (($signed(_zz__10_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_14_inner_activation;
    end else begin
      io_macOut = _10_14_inner_macOut;
    end
  end

  assign _zz__10_14_inner_macOut = ($signed(_zz__zz__10_14_inner_macOut) + $signed(_zz__zz__10_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_14_inner_activation <= 16'h0000;
      _10_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_14_inner_activation <= io_addInput;
      end else begin
        _10_14_inner_macOut <= _zz__10_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_173 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_13_inner_macOut;
  wire       [31:0]   _zz__zz__10_13_inner_macOut_1;
  wire       [31:0]   _zz__10_13_inner_macOut_1;
  wire       [31:0]   _zz__10_13_inner_macOut_2;
  reg        [15:0]   _10_13_inner_activation;
  reg        [15:0]   _10_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_13_inner_macOut;

  assign _zz__zz__10_13_inner_macOut = ($signed(io_mulInput) * $signed(_10_13_inner_activation));
  assign _zz__zz__10_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_13_inner_macOut)) ? 32'h00007fff : _zz__10_13_inner_macOut_2);
  assign _zz__10_13_inner_macOut_2 = (($signed(_zz__10_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_13_inner_activation;
    end else begin
      io_macOut = _10_13_inner_macOut;
    end
  end

  assign _zz__10_13_inner_macOut = ($signed(_zz__zz__10_13_inner_macOut) + $signed(_zz__zz__10_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_13_inner_activation <= 16'h0000;
      _10_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_13_inner_activation <= io_addInput;
      end else begin
        _10_13_inner_macOut <= _zz__10_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_172 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_12_inner_macOut;
  wire       [31:0]   _zz__zz__10_12_inner_macOut_1;
  wire       [31:0]   _zz__10_12_inner_macOut_1;
  wire       [31:0]   _zz__10_12_inner_macOut_2;
  reg        [15:0]   _10_12_inner_activation;
  reg        [15:0]   _10_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_12_inner_macOut;

  assign _zz__zz__10_12_inner_macOut = ($signed(io_mulInput) * $signed(_10_12_inner_activation));
  assign _zz__zz__10_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_12_inner_macOut)) ? 32'h00007fff : _zz__10_12_inner_macOut_2);
  assign _zz__10_12_inner_macOut_2 = (($signed(_zz__10_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_12_inner_activation;
    end else begin
      io_macOut = _10_12_inner_macOut;
    end
  end

  assign _zz__10_12_inner_macOut = ($signed(_zz__zz__10_12_inner_macOut) + $signed(_zz__zz__10_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_12_inner_activation <= 16'h0000;
      _10_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_12_inner_activation <= io_addInput;
      end else begin
        _10_12_inner_macOut <= _zz__10_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_171 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_11_inner_macOut;
  wire       [31:0]   _zz__zz__10_11_inner_macOut_1;
  wire       [31:0]   _zz__10_11_inner_macOut_1;
  wire       [31:0]   _zz__10_11_inner_macOut_2;
  reg        [15:0]   _10_11_inner_activation;
  reg        [15:0]   _10_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_11_inner_macOut;

  assign _zz__zz__10_11_inner_macOut = ($signed(io_mulInput) * $signed(_10_11_inner_activation));
  assign _zz__zz__10_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_11_inner_macOut)) ? 32'h00007fff : _zz__10_11_inner_macOut_2);
  assign _zz__10_11_inner_macOut_2 = (($signed(_zz__10_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_11_inner_activation;
    end else begin
      io_macOut = _10_11_inner_macOut;
    end
  end

  assign _zz__10_11_inner_macOut = ($signed(_zz__zz__10_11_inner_macOut) + $signed(_zz__zz__10_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_11_inner_activation <= 16'h0000;
      _10_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_11_inner_activation <= io_addInput;
      end else begin
        _10_11_inner_macOut <= _zz__10_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_170 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_10_inner_macOut;
  wire       [31:0]   _zz__zz__10_10_inner_macOut_1;
  wire       [31:0]   _zz__10_10_inner_macOut_1;
  wire       [31:0]   _zz__10_10_inner_macOut_2;
  reg        [15:0]   _10_10_inner_activation;
  reg        [15:0]   _10_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_10_inner_macOut;

  assign _zz__zz__10_10_inner_macOut = ($signed(io_mulInput) * $signed(_10_10_inner_activation));
  assign _zz__zz__10_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_10_inner_macOut)) ? 32'h00007fff : _zz__10_10_inner_macOut_2);
  assign _zz__10_10_inner_macOut_2 = (($signed(_zz__10_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_10_inner_activation;
    end else begin
      io_macOut = _10_10_inner_macOut;
    end
  end

  assign _zz__10_10_inner_macOut = ($signed(_zz__zz__10_10_inner_macOut) + $signed(_zz__zz__10_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_10_inner_activation <= 16'h0000;
      _10_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_10_inner_activation <= io_addInput;
      end else begin
        _10_10_inner_macOut <= _zz__10_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_169 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_9_inner_macOut;
  wire       [31:0]   _zz__zz__10_9_inner_macOut_1;
  wire       [31:0]   _zz__10_9_inner_macOut_1;
  wire       [31:0]   _zz__10_9_inner_macOut_2;
  reg        [15:0]   _10_9_inner_activation;
  reg        [15:0]   _10_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_9_inner_macOut;

  assign _zz__zz__10_9_inner_macOut = ($signed(io_mulInput) * $signed(_10_9_inner_activation));
  assign _zz__zz__10_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_9_inner_macOut)) ? 32'h00007fff : _zz__10_9_inner_macOut_2);
  assign _zz__10_9_inner_macOut_2 = (($signed(_zz__10_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_9_inner_activation;
    end else begin
      io_macOut = _10_9_inner_macOut;
    end
  end

  assign _zz__10_9_inner_macOut = ($signed(_zz__zz__10_9_inner_macOut) + $signed(_zz__zz__10_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_9_inner_activation <= 16'h0000;
      _10_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_9_inner_activation <= io_addInput;
      end else begin
        _10_9_inner_macOut <= _zz__10_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_168 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_8_inner_macOut;
  wire       [31:0]   _zz__zz__10_8_inner_macOut_1;
  wire       [31:0]   _zz__10_8_inner_macOut_1;
  wire       [31:0]   _zz__10_8_inner_macOut_2;
  reg        [15:0]   _10_8_inner_activation;
  reg        [15:0]   _10_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_8_inner_macOut;

  assign _zz__zz__10_8_inner_macOut = ($signed(io_mulInput) * $signed(_10_8_inner_activation));
  assign _zz__zz__10_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_8_inner_macOut)) ? 32'h00007fff : _zz__10_8_inner_macOut_2);
  assign _zz__10_8_inner_macOut_2 = (($signed(_zz__10_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_8_inner_activation;
    end else begin
      io_macOut = _10_8_inner_macOut;
    end
  end

  assign _zz__10_8_inner_macOut = ($signed(_zz__zz__10_8_inner_macOut) + $signed(_zz__zz__10_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_8_inner_activation <= 16'h0000;
      _10_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_8_inner_activation <= io_addInput;
      end else begin
        _10_8_inner_macOut <= _zz__10_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_167 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_7_inner_macOut;
  wire       [31:0]   _zz__zz__10_7_inner_macOut_1;
  wire       [31:0]   _zz__10_7_inner_macOut_1;
  wire       [31:0]   _zz__10_7_inner_macOut_2;
  reg        [15:0]   _10_7_inner_activation;
  reg        [15:0]   _10_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_7_inner_macOut;

  assign _zz__zz__10_7_inner_macOut = ($signed(io_mulInput) * $signed(_10_7_inner_activation));
  assign _zz__zz__10_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_7_inner_macOut)) ? 32'h00007fff : _zz__10_7_inner_macOut_2);
  assign _zz__10_7_inner_macOut_2 = (($signed(_zz__10_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_7_inner_activation;
    end else begin
      io_macOut = _10_7_inner_macOut;
    end
  end

  assign _zz__10_7_inner_macOut = ($signed(_zz__zz__10_7_inner_macOut) + $signed(_zz__zz__10_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_7_inner_activation <= 16'h0000;
      _10_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_7_inner_activation <= io_addInput;
      end else begin
        _10_7_inner_macOut <= _zz__10_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_166 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_6_inner_macOut;
  wire       [31:0]   _zz__zz__10_6_inner_macOut_1;
  wire       [31:0]   _zz__10_6_inner_macOut_1;
  wire       [31:0]   _zz__10_6_inner_macOut_2;
  reg        [15:0]   _10_6_inner_activation;
  reg        [15:0]   _10_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_6_inner_macOut;

  assign _zz__zz__10_6_inner_macOut = ($signed(io_mulInput) * $signed(_10_6_inner_activation));
  assign _zz__zz__10_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_6_inner_macOut)) ? 32'h00007fff : _zz__10_6_inner_macOut_2);
  assign _zz__10_6_inner_macOut_2 = (($signed(_zz__10_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_6_inner_activation;
    end else begin
      io_macOut = _10_6_inner_macOut;
    end
  end

  assign _zz__10_6_inner_macOut = ($signed(_zz__zz__10_6_inner_macOut) + $signed(_zz__zz__10_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_6_inner_activation <= 16'h0000;
      _10_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_6_inner_activation <= io_addInput;
      end else begin
        _10_6_inner_macOut <= _zz__10_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_165 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_5_inner_macOut;
  wire       [31:0]   _zz__zz__10_5_inner_macOut_1;
  wire       [31:0]   _zz__10_5_inner_macOut_1;
  wire       [31:0]   _zz__10_5_inner_macOut_2;
  reg        [15:0]   _10_5_inner_activation;
  reg        [15:0]   _10_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_5_inner_macOut;

  assign _zz__zz__10_5_inner_macOut = ($signed(io_mulInput) * $signed(_10_5_inner_activation));
  assign _zz__zz__10_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_5_inner_macOut)) ? 32'h00007fff : _zz__10_5_inner_macOut_2);
  assign _zz__10_5_inner_macOut_2 = (($signed(_zz__10_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_5_inner_activation;
    end else begin
      io_macOut = _10_5_inner_macOut;
    end
  end

  assign _zz__10_5_inner_macOut = ($signed(_zz__zz__10_5_inner_macOut) + $signed(_zz__zz__10_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_5_inner_activation <= 16'h0000;
      _10_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_5_inner_activation <= io_addInput;
      end else begin
        _10_5_inner_macOut <= _zz__10_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_164 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_4_inner_macOut;
  wire       [31:0]   _zz__zz__10_4_inner_macOut_1;
  wire       [31:0]   _zz__10_4_inner_macOut_1;
  wire       [31:0]   _zz__10_4_inner_macOut_2;
  reg        [15:0]   _10_4_inner_activation;
  reg        [15:0]   _10_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_4_inner_macOut;

  assign _zz__zz__10_4_inner_macOut = ($signed(io_mulInput) * $signed(_10_4_inner_activation));
  assign _zz__zz__10_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_4_inner_macOut)) ? 32'h00007fff : _zz__10_4_inner_macOut_2);
  assign _zz__10_4_inner_macOut_2 = (($signed(_zz__10_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_4_inner_activation;
    end else begin
      io_macOut = _10_4_inner_macOut;
    end
  end

  assign _zz__10_4_inner_macOut = ($signed(_zz__zz__10_4_inner_macOut) + $signed(_zz__zz__10_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_4_inner_activation <= 16'h0000;
      _10_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_4_inner_activation <= io_addInput;
      end else begin
        _10_4_inner_macOut <= _zz__10_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_163 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_3_inner_macOut;
  wire       [31:0]   _zz__zz__10_3_inner_macOut_1;
  wire       [31:0]   _zz__10_3_inner_macOut_1;
  wire       [31:0]   _zz__10_3_inner_macOut_2;
  reg        [15:0]   _10_3_inner_activation;
  reg        [15:0]   _10_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_3_inner_macOut;

  assign _zz__zz__10_3_inner_macOut = ($signed(io_mulInput) * $signed(_10_3_inner_activation));
  assign _zz__zz__10_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_3_inner_macOut)) ? 32'h00007fff : _zz__10_3_inner_macOut_2);
  assign _zz__10_3_inner_macOut_2 = (($signed(_zz__10_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_3_inner_activation;
    end else begin
      io_macOut = _10_3_inner_macOut;
    end
  end

  assign _zz__10_3_inner_macOut = ($signed(_zz__zz__10_3_inner_macOut) + $signed(_zz__zz__10_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_3_inner_activation <= 16'h0000;
      _10_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_3_inner_activation <= io_addInput;
      end else begin
        _10_3_inner_macOut <= _zz__10_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_162 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_2_inner_macOut;
  wire       [31:0]   _zz__zz__10_2_inner_macOut_1;
  wire       [31:0]   _zz__10_2_inner_macOut_1;
  wire       [31:0]   _zz__10_2_inner_macOut_2;
  reg        [15:0]   _10_2_inner_activation;
  reg        [15:0]   _10_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_2_inner_macOut;

  assign _zz__zz__10_2_inner_macOut = ($signed(io_mulInput) * $signed(_10_2_inner_activation));
  assign _zz__zz__10_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_2_inner_macOut)) ? 32'h00007fff : _zz__10_2_inner_macOut_2);
  assign _zz__10_2_inner_macOut_2 = (($signed(_zz__10_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_2_inner_activation;
    end else begin
      io_macOut = _10_2_inner_macOut;
    end
  end

  assign _zz__10_2_inner_macOut = ($signed(_zz__zz__10_2_inner_macOut) + $signed(_zz__zz__10_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_2_inner_activation <= 16'h0000;
      _10_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_2_inner_activation <= io_addInput;
      end else begin
        _10_2_inner_macOut <= _zz__10_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_161 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_1_inner_macOut;
  wire       [31:0]   _zz__zz__10_1_inner_macOut_1;
  wire       [31:0]   _zz__10_1_inner_macOut_1;
  wire       [31:0]   _zz__10_1_inner_macOut_2;
  reg        [15:0]   _10_1_inner_activation;
  reg        [15:0]   _10_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_1_inner_macOut;

  assign _zz__zz__10_1_inner_macOut = ($signed(io_mulInput) * $signed(_10_1_inner_activation));
  assign _zz__zz__10_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_1_inner_macOut)) ? 32'h00007fff : _zz__10_1_inner_macOut_2);
  assign _zz__10_1_inner_macOut_2 = (($signed(_zz__10_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_1_inner_activation;
    end else begin
      io_macOut = _10_1_inner_macOut;
    end
  end

  assign _zz__10_1_inner_macOut = ($signed(_zz__zz__10_1_inner_macOut) + $signed(_zz__zz__10_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_1_inner_activation <= 16'h0000;
      _10_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_1_inner_activation <= io_addInput;
      end else begin
        _10_1_inner_macOut <= _zz__10_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_160 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__10_0_inner_macOut;
  wire       [31:0]   _zz__zz__10_0_inner_macOut_1;
  wire       [31:0]   _zz__10_0_inner_macOut_1;
  wire       [31:0]   _zz__10_0_inner_macOut_2;
  reg        [15:0]   _10_0_inner_activation;
  reg        [15:0]   _10_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__10_0_inner_macOut;

  assign _zz__zz__10_0_inner_macOut = ($signed(io_mulInput) * $signed(_10_0_inner_activation));
  assign _zz__zz__10_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__10_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__10_0_inner_macOut)) ? 32'h00007fff : _zz__10_0_inner_macOut_2);
  assign _zz__10_0_inner_macOut_2 = (($signed(_zz__10_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__10_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _10_0_inner_activation;
    end else begin
      io_macOut = _10_0_inner_macOut;
    end
  end

  assign _zz__10_0_inner_macOut = ($signed(_zz__zz__10_0_inner_macOut) + $signed(_zz__zz__10_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _10_0_inner_activation <= 16'h0000;
      _10_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _10_0_inner_activation <= io_addInput;
      end else begin
        _10_0_inner_macOut <= _zz__10_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_159 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_15_inner_macOut;
  wire       [31:0]   _zz__zz__9_15_inner_macOut_1;
  wire       [31:0]   _zz__9_15_inner_macOut_1;
  wire       [31:0]   _zz__9_15_inner_macOut_2;
  reg        [15:0]   _9_15_inner_activation;
  reg        [15:0]   _9_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_15_inner_macOut;

  assign _zz__zz__9_15_inner_macOut = ($signed(io_mulInput) * $signed(_9_15_inner_activation));
  assign _zz__zz__9_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_15_inner_macOut)) ? 32'h00007fff : _zz__9_15_inner_macOut_2);
  assign _zz__9_15_inner_macOut_2 = (($signed(_zz__9_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_15_inner_activation;
    end else begin
      io_macOut = _9_15_inner_macOut;
    end
  end

  assign _zz__9_15_inner_macOut = ($signed(_zz__zz__9_15_inner_macOut) + $signed(_zz__zz__9_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_15_inner_activation <= 16'h0000;
      _9_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_15_inner_activation <= io_addInput;
      end else begin
        _9_15_inner_macOut <= _zz__9_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_158 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_14_inner_macOut;
  wire       [31:0]   _zz__zz__9_14_inner_macOut_1;
  wire       [31:0]   _zz__9_14_inner_macOut_1;
  wire       [31:0]   _zz__9_14_inner_macOut_2;
  reg        [15:0]   _9_14_inner_activation;
  reg        [15:0]   _9_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_14_inner_macOut;

  assign _zz__zz__9_14_inner_macOut = ($signed(io_mulInput) * $signed(_9_14_inner_activation));
  assign _zz__zz__9_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_14_inner_macOut)) ? 32'h00007fff : _zz__9_14_inner_macOut_2);
  assign _zz__9_14_inner_macOut_2 = (($signed(_zz__9_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_14_inner_activation;
    end else begin
      io_macOut = _9_14_inner_macOut;
    end
  end

  assign _zz__9_14_inner_macOut = ($signed(_zz__zz__9_14_inner_macOut) + $signed(_zz__zz__9_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_14_inner_activation <= 16'h0000;
      _9_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_14_inner_activation <= io_addInput;
      end else begin
        _9_14_inner_macOut <= _zz__9_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_157 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_13_inner_macOut;
  wire       [31:0]   _zz__zz__9_13_inner_macOut_1;
  wire       [31:0]   _zz__9_13_inner_macOut_1;
  wire       [31:0]   _zz__9_13_inner_macOut_2;
  reg        [15:0]   _9_13_inner_activation;
  reg        [15:0]   _9_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_13_inner_macOut;

  assign _zz__zz__9_13_inner_macOut = ($signed(io_mulInput) * $signed(_9_13_inner_activation));
  assign _zz__zz__9_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_13_inner_macOut)) ? 32'h00007fff : _zz__9_13_inner_macOut_2);
  assign _zz__9_13_inner_macOut_2 = (($signed(_zz__9_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_13_inner_activation;
    end else begin
      io_macOut = _9_13_inner_macOut;
    end
  end

  assign _zz__9_13_inner_macOut = ($signed(_zz__zz__9_13_inner_macOut) + $signed(_zz__zz__9_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_13_inner_activation <= 16'h0000;
      _9_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_13_inner_activation <= io_addInput;
      end else begin
        _9_13_inner_macOut <= _zz__9_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_156 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_12_inner_macOut;
  wire       [31:0]   _zz__zz__9_12_inner_macOut_1;
  wire       [31:0]   _zz__9_12_inner_macOut_1;
  wire       [31:0]   _zz__9_12_inner_macOut_2;
  reg        [15:0]   _9_12_inner_activation;
  reg        [15:0]   _9_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_12_inner_macOut;

  assign _zz__zz__9_12_inner_macOut = ($signed(io_mulInput) * $signed(_9_12_inner_activation));
  assign _zz__zz__9_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_12_inner_macOut)) ? 32'h00007fff : _zz__9_12_inner_macOut_2);
  assign _zz__9_12_inner_macOut_2 = (($signed(_zz__9_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_12_inner_activation;
    end else begin
      io_macOut = _9_12_inner_macOut;
    end
  end

  assign _zz__9_12_inner_macOut = ($signed(_zz__zz__9_12_inner_macOut) + $signed(_zz__zz__9_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_12_inner_activation <= 16'h0000;
      _9_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_12_inner_activation <= io_addInput;
      end else begin
        _9_12_inner_macOut <= _zz__9_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_155 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_11_inner_macOut;
  wire       [31:0]   _zz__zz__9_11_inner_macOut_1;
  wire       [31:0]   _zz__9_11_inner_macOut_1;
  wire       [31:0]   _zz__9_11_inner_macOut_2;
  reg        [15:0]   _9_11_inner_activation;
  reg        [15:0]   _9_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_11_inner_macOut;

  assign _zz__zz__9_11_inner_macOut = ($signed(io_mulInput) * $signed(_9_11_inner_activation));
  assign _zz__zz__9_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_11_inner_macOut)) ? 32'h00007fff : _zz__9_11_inner_macOut_2);
  assign _zz__9_11_inner_macOut_2 = (($signed(_zz__9_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_11_inner_activation;
    end else begin
      io_macOut = _9_11_inner_macOut;
    end
  end

  assign _zz__9_11_inner_macOut = ($signed(_zz__zz__9_11_inner_macOut) + $signed(_zz__zz__9_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_11_inner_activation <= 16'h0000;
      _9_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_11_inner_activation <= io_addInput;
      end else begin
        _9_11_inner_macOut <= _zz__9_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_154 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_10_inner_macOut;
  wire       [31:0]   _zz__zz__9_10_inner_macOut_1;
  wire       [31:0]   _zz__9_10_inner_macOut_1;
  wire       [31:0]   _zz__9_10_inner_macOut_2;
  reg        [15:0]   _9_10_inner_activation;
  reg        [15:0]   _9_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_10_inner_macOut;

  assign _zz__zz__9_10_inner_macOut = ($signed(io_mulInput) * $signed(_9_10_inner_activation));
  assign _zz__zz__9_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_10_inner_macOut)) ? 32'h00007fff : _zz__9_10_inner_macOut_2);
  assign _zz__9_10_inner_macOut_2 = (($signed(_zz__9_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_10_inner_activation;
    end else begin
      io_macOut = _9_10_inner_macOut;
    end
  end

  assign _zz__9_10_inner_macOut = ($signed(_zz__zz__9_10_inner_macOut) + $signed(_zz__zz__9_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_10_inner_activation <= 16'h0000;
      _9_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_10_inner_activation <= io_addInput;
      end else begin
        _9_10_inner_macOut <= _zz__9_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_153 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_9_inner_macOut;
  wire       [31:0]   _zz__zz__9_9_inner_macOut_1;
  wire       [31:0]   _zz__9_9_inner_macOut_1;
  wire       [31:0]   _zz__9_9_inner_macOut_2;
  reg        [15:0]   _9_9_inner_activation;
  reg        [15:0]   _9_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_9_inner_macOut;

  assign _zz__zz__9_9_inner_macOut = ($signed(io_mulInput) * $signed(_9_9_inner_activation));
  assign _zz__zz__9_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_9_inner_macOut)) ? 32'h00007fff : _zz__9_9_inner_macOut_2);
  assign _zz__9_9_inner_macOut_2 = (($signed(_zz__9_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_9_inner_activation;
    end else begin
      io_macOut = _9_9_inner_macOut;
    end
  end

  assign _zz__9_9_inner_macOut = ($signed(_zz__zz__9_9_inner_macOut) + $signed(_zz__zz__9_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_9_inner_activation <= 16'h0000;
      _9_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_9_inner_activation <= io_addInput;
      end else begin
        _9_9_inner_macOut <= _zz__9_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_152 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_8_inner_macOut;
  wire       [31:0]   _zz__zz__9_8_inner_macOut_1;
  wire       [31:0]   _zz__9_8_inner_macOut_1;
  wire       [31:0]   _zz__9_8_inner_macOut_2;
  reg        [15:0]   _9_8_inner_activation;
  reg        [15:0]   _9_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_8_inner_macOut;

  assign _zz__zz__9_8_inner_macOut = ($signed(io_mulInput) * $signed(_9_8_inner_activation));
  assign _zz__zz__9_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_8_inner_macOut)) ? 32'h00007fff : _zz__9_8_inner_macOut_2);
  assign _zz__9_8_inner_macOut_2 = (($signed(_zz__9_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_8_inner_activation;
    end else begin
      io_macOut = _9_8_inner_macOut;
    end
  end

  assign _zz__9_8_inner_macOut = ($signed(_zz__zz__9_8_inner_macOut) + $signed(_zz__zz__9_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_8_inner_activation <= 16'h0000;
      _9_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_8_inner_activation <= io_addInput;
      end else begin
        _9_8_inner_macOut <= _zz__9_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_151 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_7_inner_macOut;
  wire       [31:0]   _zz__zz__9_7_inner_macOut_1;
  wire       [31:0]   _zz__9_7_inner_macOut_1;
  wire       [31:0]   _zz__9_7_inner_macOut_2;
  reg        [15:0]   _9_7_inner_activation;
  reg        [15:0]   _9_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_7_inner_macOut;

  assign _zz__zz__9_7_inner_macOut = ($signed(io_mulInput) * $signed(_9_7_inner_activation));
  assign _zz__zz__9_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_7_inner_macOut)) ? 32'h00007fff : _zz__9_7_inner_macOut_2);
  assign _zz__9_7_inner_macOut_2 = (($signed(_zz__9_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_7_inner_activation;
    end else begin
      io_macOut = _9_7_inner_macOut;
    end
  end

  assign _zz__9_7_inner_macOut = ($signed(_zz__zz__9_7_inner_macOut) + $signed(_zz__zz__9_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_7_inner_activation <= 16'h0000;
      _9_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_7_inner_activation <= io_addInput;
      end else begin
        _9_7_inner_macOut <= _zz__9_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_150 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_6_inner_macOut;
  wire       [31:0]   _zz__zz__9_6_inner_macOut_1;
  wire       [31:0]   _zz__9_6_inner_macOut_1;
  wire       [31:0]   _zz__9_6_inner_macOut_2;
  reg        [15:0]   _9_6_inner_activation;
  reg        [15:0]   _9_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_6_inner_macOut;

  assign _zz__zz__9_6_inner_macOut = ($signed(io_mulInput) * $signed(_9_6_inner_activation));
  assign _zz__zz__9_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_6_inner_macOut)) ? 32'h00007fff : _zz__9_6_inner_macOut_2);
  assign _zz__9_6_inner_macOut_2 = (($signed(_zz__9_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_6_inner_activation;
    end else begin
      io_macOut = _9_6_inner_macOut;
    end
  end

  assign _zz__9_6_inner_macOut = ($signed(_zz__zz__9_6_inner_macOut) + $signed(_zz__zz__9_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_6_inner_activation <= 16'h0000;
      _9_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_6_inner_activation <= io_addInput;
      end else begin
        _9_6_inner_macOut <= _zz__9_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_149 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_5_inner_macOut;
  wire       [31:0]   _zz__zz__9_5_inner_macOut_1;
  wire       [31:0]   _zz__9_5_inner_macOut_1;
  wire       [31:0]   _zz__9_5_inner_macOut_2;
  reg        [15:0]   _9_5_inner_activation;
  reg        [15:0]   _9_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_5_inner_macOut;

  assign _zz__zz__9_5_inner_macOut = ($signed(io_mulInput) * $signed(_9_5_inner_activation));
  assign _zz__zz__9_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_5_inner_macOut)) ? 32'h00007fff : _zz__9_5_inner_macOut_2);
  assign _zz__9_5_inner_macOut_2 = (($signed(_zz__9_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_5_inner_activation;
    end else begin
      io_macOut = _9_5_inner_macOut;
    end
  end

  assign _zz__9_5_inner_macOut = ($signed(_zz__zz__9_5_inner_macOut) + $signed(_zz__zz__9_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_5_inner_activation <= 16'h0000;
      _9_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_5_inner_activation <= io_addInput;
      end else begin
        _9_5_inner_macOut <= _zz__9_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_148 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_4_inner_macOut;
  wire       [31:0]   _zz__zz__9_4_inner_macOut_1;
  wire       [31:0]   _zz__9_4_inner_macOut_1;
  wire       [31:0]   _zz__9_4_inner_macOut_2;
  reg        [15:0]   _9_4_inner_activation;
  reg        [15:0]   _9_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_4_inner_macOut;

  assign _zz__zz__9_4_inner_macOut = ($signed(io_mulInput) * $signed(_9_4_inner_activation));
  assign _zz__zz__9_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_4_inner_macOut)) ? 32'h00007fff : _zz__9_4_inner_macOut_2);
  assign _zz__9_4_inner_macOut_2 = (($signed(_zz__9_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_4_inner_activation;
    end else begin
      io_macOut = _9_4_inner_macOut;
    end
  end

  assign _zz__9_4_inner_macOut = ($signed(_zz__zz__9_4_inner_macOut) + $signed(_zz__zz__9_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_4_inner_activation <= 16'h0000;
      _9_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_4_inner_activation <= io_addInput;
      end else begin
        _9_4_inner_macOut <= _zz__9_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_147 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_3_inner_macOut;
  wire       [31:0]   _zz__zz__9_3_inner_macOut_1;
  wire       [31:0]   _zz__9_3_inner_macOut_1;
  wire       [31:0]   _zz__9_3_inner_macOut_2;
  reg        [15:0]   _9_3_inner_activation;
  reg        [15:0]   _9_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_3_inner_macOut;

  assign _zz__zz__9_3_inner_macOut = ($signed(io_mulInput) * $signed(_9_3_inner_activation));
  assign _zz__zz__9_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_3_inner_macOut)) ? 32'h00007fff : _zz__9_3_inner_macOut_2);
  assign _zz__9_3_inner_macOut_2 = (($signed(_zz__9_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_3_inner_activation;
    end else begin
      io_macOut = _9_3_inner_macOut;
    end
  end

  assign _zz__9_3_inner_macOut = ($signed(_zz__zz__9_3_inner_macOut) + $signed(_zz__zz__9_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_3_inner_activation <= 16'h0000;
      _9_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_3_inner_activation <= io_addInput;
      end else begin
        _9_3_inner_macOut <= _zz__9_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_146 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_2_inner_macOut;
  wire       [31:0]   _zz__zz__9_2_inner_macOut_1;
  wire       [31:0]   _zz__9_2_inner_macOut_1;
  wire       [31:0]   _zz__9_2_inner_macOut_2;
  reg        [15:0]   _9_2_inner_activation;
  reg        [15:0]   _9_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_2_inner_macOut;

  assign _zz__zz__9_2_inner_macOut = ($signed(io_mulInput) * $signed(_9_2_inner_activation));
  assign _zz__zz__9_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_2_inner_macOut)) ? 32'h00007fff : _zz__9_2_inner_macOut_2);
  assign _zz__9_2_inner_macOut_2 = (($signed(_zz__9_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_2_inner_activation;
    end else begin
      io_macOut = _9_2_inner_macOut;
    end
  end

  assign _zz__9_2_inner_macOut = ($signed(_zz__zz__9_2_inner_macOut) + $signed(_zz__zz__9_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_2_inner_activation <= 16'h0000;
      _9_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_2_inner_activation <= io_addInput;
      end else begin
        _9_2_inner_macOut <= _zz__9_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_145 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_1_inner_macOut;
  wire       [31:0]   _zz__zz__9_1_inner_macOut_1;
  wire       [31:0]   _zz__9_1_inner_macOut_1;
  wire       [31:0]   _zz__9_1_inner_macOut_2;
  reg        [15:0]   _9_1_inner_activation;
  reg        [15:0]   _9_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_1_inner_macOut;

  assign _zz__zz__9_1_inner_macOut = ($signed(io_mulInput) * $signed(_9_1_inner_activation));
  assign _zz__zz__9_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_1_inner_macOut)) ? 32'h00007fff : _zz__9_1_inner_macOut_2);
  assign _zz__9_1_inner_macOut_2 = (($signed(_zz__9_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_1_inner_activation;
    end else begin
      io_macOut = _9_1_inner_macOut;
    end
  end

  assign _zz__9_1_inner_macOut = ($signed(_zz__zz__9_1_inner_macOut) + $signed(_zz__zz__9_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_1_inner_activation <= 16'h0000;
      _9_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_1_inner_activation <= io_addInput;
      end else begin
        _9_1_inner_macOut <= _zz__9_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_144 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__9_0_inner_macOut;
  wire       [31:0]   _zz__zz__9_0_inner_macOut_1;
  wire       [31:0]   _zz__9_0_inner_macOut_1;
  wire       [31:0]   _zz__9_0_inner_macOut_2;
  reg        [15:0]   _9_0_inner_activation;
  reg        [15:0]   _9_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__9_0_inner_macOut;

  assign _zz__zz__9_0_inner_macOut = ($signed(io_mulInput) * $signed(_9_0_inner_activation));
  assign _zz__zz__9_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__9_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__9_0_inner_macOut)) ? 32'h00007fff : _zz__9_0_inner_macOut_2);
  assign _zz__9_0_inner_macOut_2 = (($signed(_zz__9_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__9_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _9_0_inner_activation;
    end else begin
      io_macOut = _9_0_inner_macOut;
    end
  end

  assign _zz__9_0_inner_macOut = ($signed(_zz__zz__9_0_inner_macOut) + $signed(_zz__zz__9_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _9_0_inner_activation <= 16'h0000;
      _9_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _9_0_inner_activation <= io_addInput;
      end else begin
        _9_0_inner_macOut <= _zz__9_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_143 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_15_inner_macOut;
  wire       [31:0]   _zz__zz__8_15_inner_macOut_1;
  wire       [31:0]   _zz__8_15_inner_macOut_1;
  wire       [31:0]   _zz__8_15_inner_macOut_2;
  reg        [15:0]   _8_15_inner_activation;
  reg        [15:0]   _8_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_15_inner_macOut;

  assign _zz__zz__8_15_inner_macOut = ($signed(io_mulInput) * $signed(_8_15_inner_activation));
  assign _zz__zz__8_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_15_inner_macOut)) ? 32'h00007fff : _zz__8_15_inner_macOut_2);
  assign _zz__8_15_inner_macOut_2 = (($signed(_zz__8_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_15_inner_activation;
    end else begin
      io_macOut = _8_15_inner_macOut;
    end
  end

  assign _zz__8_15_inner_macOut = ($signed(_zz__zz__8_15_inner_macOut) + $signed(_zz__zz__8_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_15_inner_activation <= 16'h0000;
      _8_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_15_inner_activation <= io_addInput;
      end else begin
        _8_15_inner_macOut <= _zz__8_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_142 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_14_inner_macOut;
  wire       [31:0]   _zz__zz__8_14_inner_macOut_1;
  wire       [31:0]   _zz__8_14_inner_macOut_1;
  wire       [31:0]   _zz__8_14_inner_macOut_2;
  reg        [15:0]   _8_14_inner_activation;
  reg        [15:0]   _8_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_14_inner_macOut;

  assign _zz__zz__8_14_inner_macOut = ($signed(io_mulInput) * $signed(_8_14_inner_activation));
  assign _zz__zz__8_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_14_inner_macOut)) ? 32'h00007fff : _zz__8_14_inner_macOut_2);
  assign _zz__8_14_inner_macOut_2 = (($signed(_zz__8_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_14_inner_activation;
    end else begin
      io_macOut = _8_14_inner_macOut;
    end
  end

  assign _zz__8_14_inner_macOut = ($signed(_zz__zz__8_14_inner_macOut) + $signed(_zz__zz__8_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_14_inner_activation <= 16'h0000;
      _8_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_14_inner_activation <= io_addInput;
      end else begin
        _8_14_inner_macOut <= _zz__8_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_141 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_13_inner_macOut;
  wire       [31:0]   _zz__zz__8_13_inner_macOut_1;
  wire       [31:0]   _zz__8_13_inner_macOut_1;
  wire       [31:0]   _zz__8_13_inner_macOut_2;
  reg        [15:0]   _8_13_inner_activation;
  reg        [15:0]   _8_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_13_inner_macOut;

  assign _zz__zz__8_13_inner_macOut = ($signed(io_mulInput) * $signed(_8_13_inner_activation));
  assign _zz__zz__8_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_13_inner_macOut)) ? 32'h00007fff : _zz__8_13_inner_macOut_2);
  assign _zz__8_13_inner_macOut_2 = (($signed(_zz__8_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_13_inner_activation;
    end else begin
      io_macOut = _8_13_inner_macOut;
    end
  end

  assign _zz__8_13_inner_macOut = ($signed(_zz__zz__8_13_inner_macOut) + $signed(_zz__zz__8_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_13_inner_activation <= 16'h0000;
      _8_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_13_inner_activation <= io_addInput;
      end else begin
        _8_13_inner_macOut <= _zz__8_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_140 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_12_inner_macOut;
  wire       [31:0]   _zz__zz__8_12_inner_macOut_1;
  wire       [31:0]   _zz__8_12_inner_macOut_1;
  wire       [31:0]   _zz__8_12_inner_macOut_2;
  reg        [15:0]   _8_12_inner_activation;
  reg        [15:0]   _8_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_12_inner_macOut;

  assign _zz__zz__8_12_inner_macOut = ($signed(io_mulInput) * $signed(_8_12_inner_activation));
  assign _zz__zz__8_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_12_inner_macOut)) ? 32'h00007fff : _zz__8_12_inner_macOut_2);
  assign _zz__8_12_inner_macOut_2 = (($signed(_zz__8_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_12_inner_activation;
    end else begin
      io_macOut = _8_12_inner_macOut;
    end
  end

  assign _zz__8_12_inner_macOut = ($signed(_zz__zz__8_12_inner_macOut) + $signed(_zz__zz__8_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_12_inner_activation <= 16'h0000;
      _8_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_12_inner_activation <= io_addInput;
      end else begin
        _8_12_inner_macOut <= _zz__8_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_139 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_11_inner_macOut;
  wire       [31:0]   _zz__zz__8_11_inner_macOut_1;
  wire       [31:0]   _zz__8_11_inner_macOut_1;
  wire       [31:0]   _zz__8_11_inner_macOut_2;
  reg        [15:0]   _8_11_inner_activation;
  reg        [15:0]   _8_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_11_inner_macOut;

  assign _zz__zz__8_11_inner_macOut = ($signed(io_mulInput) * $signed(_8_11_inner_activation));
  assign _zz__zz__8_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_11_inner_macOut)) ? 32'h00007fff : _zz__8_11_inner_macOut_2);
  assign _zz__8_11_inner_macOut_2 = (($signed(_zz__8_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_11_inner_activation;
    end else begin
      io_macOut = _8_11_inner_macOut;
    end
  end

  assign _zz__8_11_inner_macOut = ($signed(_zz__zz__8_11_inner_macOut) + $signed(_zz__zz__8_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_11_inner_activation <= 16'h0000;
      _8_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_11_inner_activation <= io_addInput;
      end else begin
        _8_11_inner_macOut <= _zz__8_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_138 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_10_inner_macOut;
  wire       [31:0]   _zz__zz__8_10_inner_macOut_1;
  wire       [31:0]   _zz__8_10_inner_macOut_1;
  wire       [31:0]   _zz__8_10_inner_macOut_2;
  reg        [15:0]   _8_10_inner_activation;
  reg        [15:0]   _8_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_10_inner_macOut;

  assign _zz__zz__8_10_inner_macOut = ($signed(io_mulInput) * $signed(_8_10_inner_activation));
  assign _zz__zz__8_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_10_inner_macOut)) ? 32'h00007fff : _zz__8_10_inner_macOut_2);
  assign _zz__8_10_inner_macOut_2 = (($signed(_zz__8_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_10_inner_activation;
    end else begin
      io_macOut = _8_10_inner_macOut;
    end
  end

  assign _zz__8_10_inner_macOut = ($signed(_zz__zz__8_10_inner_macOut) + $signed(_zz__zz__8_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_10_inner_activation <= 16'h0000;
      _8_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_10_inner_activation <= io_addInput;
      end else begin
        _8_10_inner_macOut <= _zz__8_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_137 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_9_inner_macOut;
  wire       [31:0]   _zz__zz__8_9_inner_macOut_1;
  wire       [31:0]   _zz__8_9_inner_macOut_1;
  wire       [31:0]   _zz__8_9_inner_macOut_2;
  reg        [15:0]   _8_9_inner_activation;
  reg        [15:0]   _8_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_9_inner_macOut;

  assign _zz__zz__8_9_inner_macOut = ($signed(io_mulInput) * $signed(_8_9_inner_activation));
  assign _zz__zz__8_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_9_inner_macOut)) ? 32'h00007fff : _zz__8_9_inner_macOut_2);
  assign _zz__8_9_inner_macOut_2 = (($signed(_zz__8_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_9_inner_activation;
    end else begin
      io_macOut = _8_9_inner_macOut;
    end
  end

  assign _zz__8_9_inner_macOut = ($signed(_zz__zz__8_9_inner_macOut) + $signed(_zz__zz__8_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_9_inner_activation <= 16'h0000;
      _8_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_9_inner_activation <= io_addInput;
      end else begin
        _8_9_inner_macOut <= _zz__8_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_136 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_8_inner_macOut;
  wire       [31:0]   _zz__zz__8_8_inner_macOut_1;
  wire       [31:0]   _zz__8_8_inner_macOut_1;
  wire       [31:0]   _zz__8_8_inner_macOut_2;
  reg        [15:0]   _8_8_inner_activation;
  reg        [15:0]   _8_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_8_inner_macOut;

  assign _zz__zz__8_8_inner_macOut = ($signed(io_mulInput) * $signed(_8_8_inner_activation));
  assign _zz__zz__8_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_8_inner_macOut)) ? 32'h00007fff : _zz__8_8_inner_macOut_2);
  assign _zz__8_8_inner_macOut_2 = (($signed(_zz__8_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_8_inner_activation;
    end else begin
      io_macOut = _8_8_inner_macOut;
    end
  end

  assign _zz__8_8_inner_macOut = ($signed(_zz__zz__8_8_inner_macOut) + $signed(_zz__zz__8_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_8_inner_activation <= 16'h0000;
      _8_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_8_inner_activation <= io_addInput;
      end else begin
        _8_8_inner_macOut <= _zz__8_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_135 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_7_inner_macOut;
  wire       [31:0]   _zz__zz__8_7_inner_macOut_1;
  wire       [31:0]   _zz__8_7_inner_macOut_1;
  wire       [31:0]   _zz__8_7_inner_macOut_2;
  reg        [15:0]   _8_7_inner_activation;
  reg        [15:0]   _8_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_7_inner_macOut;

  assign _zz__zz__8_7_inner_macOut = ($signed(io_mulInput) * $signed(_8_7_inner_activation));
  assign _zz__zz__8_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_7_inner_macOut)) ? 32'h00007fff : _zz__8_7_inner_macOut_2);
  assign _zz__8_7_inner_macOut_2 = (($signed(_zz__8_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_7_inner_activation;
    end else begin
      io_macOut = _8_7_inner_macOut;
    end
  end

  assign _zz__8_7_inner_macOut = ($signed(_zz__zz__8_7_inner_macOut) + $signed(_zz__zz__8_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_7_inner_activation <= 16'h0000;
      _8_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_7_inner_activation <= io_addInput;
      end else begin
        _8_7_inner_macOut <= _zz__8_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_134 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_6_inner_macOut;
  wire       [31:0]   _zz__zz__8_6_inner_macOut_1;
  wire       [31:0]   _zz__8_6_inner_macOut_1;
  wire       [31:0]   _zz__8_6_inner_macOut_2;
  reg        [15:0]   _8_6_inner_activation;
  reg        [15:0]   _8_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_6_inner_macOut;

  assign _zz__zz__8_6_inner_macOut = ($signed(io_mulInput) * $signed(_8_6_inner_activation));
  assign _zz__zz__8_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_6_inner_macOut)) ? 32'h00007fff : _zz__8_6_inner_macOut_2);
  assign _zz__8_6_inner_macOut_2 = (($signed(_zz__8_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_6_inner_activation;
    end else begin
      io_macOut = _8_6_inner_macOut;
    end
  end

  assign _zz__8_6_inner_macOut = ($signed(_zz__zz__8_6_inner_macOut) + $signed(_zz__zz__8_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_6_inner_activation <= 16'h0000;
      _8_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_6_inner_activation <= io_addInput;
      end else begin
        _8_6_inner_macOut <= _zz__8_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_133 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_5_inner_macOut;
  wire       [31:0]   _zz__zz__8_5_inner_macOut_1;
  wire       [31:0]   _zz__8_5_inner_macOut_1;
  wire       [31:0]   _zz__8_5_inner_macOut_2;
  reg        [15:0]   _8_5_inner_activation;
  reg        [15:0]   _8_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_5_inner_macOut;

  assign _zz__zz__8_5_inner_macOut = ($signed(io_mulInput) * $signed(_8_5_inner_activation));
  assign _zz__zz__8_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_5_inner_macOut)) ? 32'h00007fff : _zz__8_5_inner_macOut_2);
  assign _zz__8_5_inner_macOut_2 = (($signed(_zz__8_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_5_inner_activation;
    end else begin
      io_macOut = _8_5_inner_macOut;
    end
  end

  assign _zz__8_5_inner_macOut = ($signed(_zz__zz__8_5_inner_macOut) + $signed(_zz__zz__8_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_5_inner_activation <= 16'h0000;
      _8_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_5_inner_activation <= io_addInput;
      end else begin
        _8_5_inner_macOut <= _zz__8_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_132 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_4_inner_macOut;
  wire       [31:0]   _zz__zz__8_4_inner_macOut_1;
  wire       [31:0]   _zz__8_4_inner_macOut_1;
  wire       [31:0]   _zz__8_4_inner_macOut_2;
  reg        [15:0]   _8_4_inner_activation;
  reg        [15:0]   _8_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_4_inner_macOut;

  assign _zz__zz__8_4_inner_macOut = ($signed(io_mulInput) * $signed(_8_4_inner_activation));
  assign _zz__zz__8_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_4_inner_macOut)) ? 32'h00007fff : _zz__8_4_inner_macOut_2);
  assign _zz__8_4_inner_macOut_2 = (($signed(_zz__8_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_4_inner_activation;
    end else begin
      io_macOut = _8_4_inner_macOut;
    end
  end

  assign _zz__8_4_inner_macOut = ($signed(_zz__zz__8_4_inner_macOut) + $signed(_zz__zz__8_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_4_inner_activation <= 16'h0000;
      _8_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_4_inner_activation <= io_addInput;
      end else begin
        _8_4_inner_macOut <= _zz__8_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_131 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_3_inner_macOut;
  wire       [31:0]   _zz__zz__8_3_inner_macOut_1;
  wire       [31:0]   _zz__8_3_inner_macOut_1;
  wire       [31:0]   _zz__8_3_inner_macOut_2;
  reg        [15:0]   _8_3_inner_activation;
  reg        [15:0]   _8_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_3_inner_macOut;

  assign _zz__zz__8_3_inner_macOut = ($signed(io_mulInput) * $signed(_8_3_inner_activation));
  assign _zz__zz__8_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_3_inner_macOut)) ? 32'h00007fff : _zz__8_3_inner_macOut_2);
  assign _zz__8_3_inner_macOut_2 = (($signed(_zz__8_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_3_inner_activation;
    end else begin
      io_macOut = _8_3_inner_macOut;
    end
  end

  assign _zz__8_3_inner_macOut = ($signed(_zz__zz__8_3_inner_macOut) + $signed(_zz__zz__8_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_3_inner_activation <= 16'h0000;
      _8_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_3_inner_activation <= io_addInput;
      end else begin
        _8_3_inner_macOut <= _zz__8_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_130 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_2_inner_macOut;
  wire       [31:0]   _zz__zz__8_2_inner_macOut_1;
  wire       [31:0]   _zz__8_2_inner_macOut_1;
  wire       [31:0]   _zz__8_2_inner_macOut_2;
  reg        [15:0]   _8_2_inner_activation;
  reg        [15:0]   _8_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_2_inner_macOut;

  assign _zz__zz__8_2_inner_macOut = ($signed(io_mulInput) * $signed(_8_2_inner_activation));
  assign _zz__zz__8_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_2_inner_macOut)) ? 32'h00007fff : _zz__8_2_inner_macOut_2);
  assign _zz__8_2_inner_macOut_2 = (($signed(_zz__8_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_2_inner_activation;
    end else begin
      io_macOut = _8_2_inner_macOut;
    end
  end

  assign _zz__8_2_inner_macOut = ($signed(_zz__zz__8_2_inner_macOut) + $signed(_zz__zz__8_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_2_inner_activation <= 16'h0000;
      _8_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_2_inner_activation <= io_addInput;
      end else begin
        _8_2_inner_macOut <= _zz__8_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_129 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_1_inner_macOut;
  wire       [31:0]   _zz__zz__8_1_inner_macOut_1;
  wire       [31:0]   _zz__8_1_inner_macOut_1;
  wire       [31:0]   _zz__8_1_inner_macOut_2;
  reg        [15:0]   _8_1_inner_activation;
  reg        [15:0]   _8_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_1_inner_macOut;

  assign _zz__zz__8_1_inner_macOut = ($signed(io_mulInput) * $signed(_8_1_inner_activation));
  assign _zz__zz__8_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_1_inner_macOut)) ? 32'h00007fff : _zz__8_1_inner_macOut_2);
  assign _zz__8_1_inner_macOut_2 = (($signed(_zz__8_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_1_inner_activation;
    end else begin
      io_macOut = _8_1_inner_macOut;
    end
  end

  assign _zz__8_1_inner_macOut = ($signed(_zz__zz__8_1_inner_macOut) + $signed(_zz__zz__8_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_1_inner_activation <= 16'h0000;
      _8_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_1_inner_activation <= io_addInput;
      end else begin
        _8_1_inner_macOut <= _zz__8_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_128 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__8_0_inner_macOut;
  wire       [31:0]   _zz__zz__8_0_inner_macOut_1;
  wire       [31:0]   _zz__8_0_inner_macOut_1;
  wire       [31:0]   _zz__8_0_inner_macOut_2;
  reg        [15:0]   _8_0_inner_activation;
  reg        [15:0]   _8_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__8_0_inner_macOut;

  assign _zz__zz__8_0_inner_macOut = ($signed(io_mulInput) * $signed(_8_0_inner_activation));
  assign _zz__zz__8_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__8_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__8_0_inner_macOut)) ? 32'h00007fff : _zz__8_0_inner_macOut_2);
  assign _zz__8_0_inner_macOut_2 = (($signed(_zz__8_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__8_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _8_0_inner_activation;
    end else begin
      io_macOut = _8_0_inner_macOut;
    end
  end

  assign _zz__8_0_inner_macOut = ($signed(_zz__zz__8_0_inner_macOut) + $signed(_zz__zz__8_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _8_0_inner_activation <= 16'h0000;
      _8_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _8_0_inner_activation <= io_addInput;
      end else begin
        _8_0_inner_macOut <= _zz__8_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_127 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_15_inner_macOut;
  wire       [31:0]   _zz__zz__7_15_inner_macOut_1;
  wire       [31:0]   _zz__7_15_inner_macOut_1;
  wire       [31:0]   _zz__7_15_inner_macOut_2;
  reg        [15:0]   _7_15_inner_activation;
  reg        [15:0]   _7_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_15_inner_macOut;

  assign _zz__zz__7_15_inner_macOut = ($signed(io_mulInput) * $signed(_7_15_inner_activation));
  assign _zz__zz__7_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_15_inner_macOut)) ? 32'h00007fff : _zz__7_15_inner_macOut_2);
  assign _zz__7_15_inner_macOut_2 = (($signed(_zz__7_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_15_inner_activation;
    end else begin
      io_macOut = _7_15_inner_macOut;
    end
  end

  assign _zz__7_15_inner_macOut = ($signed(_zz__zz__7_15_inner_macOut) + $signed(_zz__zz__7_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_15_inner_activation <= 16'h0000;
      _7_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_15_inner_activation <= io_addInput;
      end else begin
        _7_15_inner_macOut <= _zz__7_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_126 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_14_inner_macOut;
  wire       [31:0]   _zz__zz__7_14_inner_macOut_1;
  wire       [31:0]   _zz__7_14_inner_macOut_1;
  wire       [31:0]   _zz__7_14_inner_macOut_2;
  reg        [15:0]   _7_14_inner_activation;
  reg        [15:0]   _7_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_14_inner_macOut;

  assign _zz__zz__7_14_inner_macOut = ($signed(io_mulInput) * $signed(_7_14_inner_activation));
  assign _zz__zz__7_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_14_inner_macOut)) ? 32'h00007fff : _zz__7_14_inner_macOut_2);
  assign _zz__7_14_inner_macOut_2 = (($signed(_zz__7_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_14_inner_activation;
    end else begin
      io_macOut = _7_14_inner_macOut;
    end
  end

  assign _zz__7_14_inner_macOut = ($signed(_zz__zz__7_14_inner_macOut) + $signed(_zz__zz__7_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_14_inner_activation <= 16'h0000;
      _7_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_14_inner_activation <= io_addInput;
      end else begin
        _7_14_inner_macOut <= _zz__7_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_125 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_13_inner_macOut;
  wire       [31:0]   _zz__zz__7_13_inner_macOut_1;
  wire       [31:0]   _zz__7_13_inner_macOut_1;
  wire       [31:0]   _zz__7_13_inner_macOut_2;
  reg        [15:0]   _7_13_inner_activation;
  reg        [15:0]   _7_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_13_inner_macOut;

  assign _zz__zz__7_13_inner_macOut = ($signed(io_mulInput) * $signed(_7_13_inner_activation));
  assign _zz__zz__7_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_13_inner_macOut)) ? 32'h00007fff : _zz__7_13_inner_macOut_2);
  assign _zz__7_13_inner_macOut_2 = (($signed(_zz__7_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_13_inner_activation;
    end else begin
      io_macOut = _7_13_inner_macOut;
    end
  end

  assign _zz__7_13_inner_macOut = ($signed(_zz__zz__7_13_inner_macOut) + $signed(_zz__zz__7_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_13_inner_activation <= 16'h0000;
      _7_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_13_inner_activation <= io_addInput;
      end else begin
        _7_13_inner_macOut <= _zz__7_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_124 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_12_inner_macOut;
  wire       [31:0]   _zz__zz__7_12_inner_macOut_1;
  wire       [31:0]   _zz__7_12_inner_macOut_1;
  wire       [31:0]   _zz__7_12_inner_macOut_2;
  reg        [15:0]   _7_12_inner_activation;
  reg        [15:0]   _7_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_12_inner_macOut;

  assign _zz__zz__7_12_inner_macOut = ($signed(io_mulInput) * $signed(_7_12_inner_activation));
  assign _zz__zz__7_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_12_inner_macOut)) ? 32'h00007fff : _zz__7_12_inner_macOut_2);
  assign _zz__7_12_inner_macOut_2 = (($signed(_zz__7_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_12_inner_activation;
    end else begin
      io_macOut = _7_12_inner_macOut;
    end
  end

  assign _zz__7_12_inner_macOut = ($signed(_zz__zz__7_12_inner_macOut) + $signed(_zz__zz__7_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_12_inner_activation <= 16'h0000;
      _7_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_12_inner_activation <= io_addInput;
      end else begin
        _7_12_inner_macOut <= _zz__7_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_123 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_11_inner_macOut;
  wire       [31:0]   _zz__zz__7_11_inner_macOut_1;
  wire       [31:0]   _zz__7_11_inner_macOut_1;
  wire       [31:0]   _zz__7_11_inner_macOut_2;
  reg        [15:0]   _7_11_inner_activation;
  reg        [15:0]   _7_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_11_inner_macOut;

  assign _zz__zz__7_11_inner_macOut = ($signed(io_mulInput) * $signed(_7_11_inner_activation));
  assign _zz__zz__7_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_11_inner_macOut)) ? 32'h00007fff : _zz__7_11_inner_macOut_2);
  assign _zz__7_11_inner_macOut_2 = (($signed(_zz__7_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_11_inner_activation;
    end else begin
      io_macOut = _7_11_inner_macOut;
    end
  end

  assign _zz__7_11_inner_macOut = ($signed(_zz__zz__7_11_inner_macOut) + $signed(_zz__zz__7_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_11_inner_activation <= 16'h0000;
      _7_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_11_inner_activation <= io_addInput;
      end else begin
        _7_11_inner_macOut <= _zz__7_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_122 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_10_inner_macOut;
  wire       [31:0]   _zz__zz__7_10_inner_macOut_1;
  wire       [31:0]   _zz__7_10_inner_macOut_1;
  wire       [31:0]   _zz__7_10_inner_macOut_2;
  reg        [15:0]   _7_10_inner_activation;
  reg        [15:0]   _7_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_10_inner_macOut;

  assign _zz__zz__7_10_inner_macOut = ($signed(io_mulInput) * $signed(_7_10_inner_activation));
  assign _zz__zz__7_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_10_inner_macOut)) ? 32'h00007fff : _zz__7_10_inner_macOut_2);
  assign _zz__7_10_inner_macOut_2 = (($signed(_zz__7_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_10_inner_activation;
    end else begin
      io_macOut = _7_10_inner_macOut;
    end
  end

  assign _zz__7_10_inner_macOut = ($signed(_zz__zz__7_10_inner_macOut) + $signed(_zz__zz__7_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_10_inner_activation <= 16'h0000;
      _7_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_10_inner_activation <= io_addInput;
      end else begin
        _7_10_inner_macOut <= _zz__7_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_121 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_9_inner_macOut;
  wire       [31:0]   _zz__zz__7_9_inner_macOut_1;
  wire       [31:0]   _zz__7_9_inner_macOut_1;
  wire       [31:0]   _zz__7_9_inner_macOut_2;
  reg        [15:0]   _7_9_inner_activation;
  reg        [15:0]   _7_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_9_inner_macOut;

  assign _zz__zz__7_9_inner_macOut = ($signed(io_mulInput) * $signed(_7_9_inner_activation));
  assign _zz__zz__7_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_9_inner_macOut)) ? 32'h00007fff : _zz__7_9_inner_macOut_2);
  assign _zz__7_9_inner_macOut_2 = (($signed(_zz__7_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_9_inner_activation;
    end else begin
      io_macOut = _7_9_inner_macOut;
    end
  end

  assign _zz__7_9_inner_macOut = ($signed(_zz__zz__7_9_inner_macOut) + $signed(_zz__zz__7_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_9_inner_activation <= 16'h0000;
      _7_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_9_inner_activation <= io_addInput;
      end else begin
        _7_9_inner_macOut <= _zz__7_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_120 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_8_inner_macOut;
  wire       [31:0]   _zz__zz__7_8_inner_macOut_1;
  wire       [31:0]   _zz__7_8_inner_macOut_1;
  wire       [31:0]   _zz__7_8_inner_macOut_2;
  reg        [15:0]   _7_8_inner_activation;
  reg        [15:0]   _7_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_8_inner_macOut;

  assign _zz__zz__7_8_inner_macOut = ($signed(io_mulInput) * $signed(_7_8_inner_activation));
  assign _zz__zz__7_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_8_inner_macOut)) ? 32'h00007fff : _zz__7_8_inner_macOut_2);
  assign _zz__7_8_inner_macOut_2 = (($signed(_zz__7_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_8_inner_activation;
    end else begin
      io_macOut = _7_8_inner_macOut;
    end
  end

  assign _zz__7_8_inner_macOut = ($signed(_zz__zz__7_8_inner_macOut) + $signed(_zz__zz__7_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_8_inner_activation <= 16'h0000;
      _7_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_8_inner_activation <= io_addInput;
      end else begin
        _7_8_inner_macOut <= _zz__7_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_119 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_7_inner_macOut;
  wire       [31:0]   _zz__zz__7_7_inner_macOut_1;
  wire       [31:0]   _zz__7_7_inner_macOut_1;
  wire       [31:0]   _zz__7_7_inner_macOut_2;
  reg        [15:0]   _7_7_inner_activation;
  reg        [15:0]   _7_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_7_inner_macOut;

  assign _zz__zz__7_7_inner_macOut = ($signed(io_mulInput) * $signed(_7_7_inner_activation));
  assign _zz__zz__7_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_7_inner_macOut)) ? 32'h00007fff : _zz__7_7_inner_macOut_2);
  assign _zz__7_7_inner_macOut_2 = (($signed(_zz__7_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_7_inner_activation;
    end else begin
      io_macOut = _7_7_inner_macOut;
    end
  end

  assign _zz__7_7_inner_macOut = ($signed(_zz__zz__7_7_inner_macOut) + $signed(_zz__zz__7_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_7_inner_activation <= 16'h0000;
      _7_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_7_inner_activation <= io_addInput;
      end else begin
        _7_7_inner_macOut <= _zz__7_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_118 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_6_inner_macOut;
  wire       [31:0]   _zz__zz__7_6_inner_macOut_1;
  wire       [31:0]   _zz__7_6_inner_macOut_1;
  wire       [31:0]   _zz__7_6_inner_macOut_2;
  reg        [15:0]   _7_6_inner_activation;
  reg        [15:0]   _7_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_6_inner_macOut;

  assign _zz__zz__7_6_inner_macOut = ($signed(io_mulInput) * $signed(_7_6_inner_activation));
  assign _zz__zz__7_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_6_inner_macOut)) ? 32'h00007fff : _zz__7_6_inner_macOut_2);
  assign _zz__7_6_inner_macOut_2 = (($signed(_zz__7_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_6_inner_activation;
    end else begin
      io_macOut = _7_6_inner_macOut;
    end
  end

  assign _zz__7_6_inner_macOut = ($signed(_zz__zz__7_6_inner_macOut) + $signed(_zz__zz__7_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_6_inner_activation <= 16'h0000;
      _7_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_6_inner_activation <= io_addInput;
      end else begin
        _7_6_inner_macOut <= _zz__7_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_117 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_5_inner_macOut;
  wire       [31:0]   _zz__zz__7_5_inner_macOut_1;
  wire       [31:0]   _zz__7_5_inner_macOut_1;
  wire       [31:0]   _zz__7_5_inner_macOut_2;
  reg        [15:0]   _7_5_inner_activation;
  reg        [15:0]   _7_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_5_inner_macOut;

  assign _zz__zz__7_5_inner_macOut = ($signed(io_mulInput) * $signed(_7_5_inner_activation));
  assign _zz__zz__7_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_5_inner_macOut)) ? 32'h00007fff : _zz__7_5_inner_macOut_2);
  assign _zz__7_5_inner_macOut_2 = (($signed(_zz__7_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_5_inner_activation;
    end else begin
      io_macOut = _7_5_inner_macOut;
    end
  end

  assign _zz__7_5_inner_macOut = ($signed(_zz__zz__7_5_inner_macOut) + $signed(_zz__zz__7_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_5_inner_activation <= 16'h0000;
      _7_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_5_inner_activation <= io_addInput;
      end else begin
        _7_5_inner_macOut <= _zz__7_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_116 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_4_inner_macOut;
  wire       [31:0]   _zz__zz__7_4_inner_macOut_1;
  wire       [31:0]   _zz__7_4_inner_macOut_1;
  wire       [31:0]   _zz__7_4_inner_macOut_2;
  reg        [15:0]   _7_4_inner_activation;
  reg        [15:0]   _7_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_4_inner_macOut;

  assign _zz__zz__7_4_inner_macOut = ($signed(io_mulInput) * $signed(_7_4_inner_activation));
  assign _zz__zz__7_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_4_inner_macOut)) ? 32'h00007fff : _zz__7_4_inner_macOut_2);
  assign _zz__7_4_inner_macOut_2 = (($signed(_zz__7_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_4_inner_activation;
    end else begin
      io_macOut = _7_4_inner_macOut;
    end
  end

  assign _zz__7_4_inner_macOut = ($signed(_zz__zz__7_4_inner_macOut) + $signed(_zz__zz__7_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_4_inner_activation <= 16'h0000;
      _7_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_4_inner_activation <= io_addInput;
      end else begin
        _7_4_inner_macOut <= _zz__7_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_115 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_3_inner_macOut;
  wire       [31:0]   _zz__zz__7_3_inner_macOut_1;
  wire       [31:0]   _zz__7_3_inner_macOut_1;
  wire       [31:0]   _zz__7_3_inner_macOut_2;
  reg        [15:0]   _7_3_inner_activation;
  reg        [15:0]   _7_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_3_inner_macOut;

  assign _zz__zz__7_3_inner_macOut = ($signed(io_mulInput) * $signed(_7_3_inner_activation));
  assign _zz__zz__7_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_3_inner_macOut)) ? 32'h00007fff : _zz__7_3_inner_macOut_2);
  assign _zz__7_3_inner_macOut_2 = (($signed(_zz__7_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_3_inner_activation;
    end else begin
      io_macOut = _7_3_inner_macOut;
    end
  end

  assign _zz__7_3_inner_macOut = ($signed(_zz__zz__7_3_inner_macOut) + $signed(_zz__zz__7_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_3_inner_activation <= 16'h0000;
      _7_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_3_inner_activation <= io_addInput;
      end else begin
        _7_3_inner_macOut <= _zz__7_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_114 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_2_inner_macOut;
  wire       [31:0]   _zz__zz__7_2_inner_macOut_1;
  wire       [31:0]   _zz__7_2_inner_macOut_1;
  wire       [31:0]   _zz__7_2_inner_macOut_2;
  reg        [15:0]   _7_2_inner_activation;
  reg        [15:0]   _7_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_2_inner_macOut;

  assign _zz__zz__7_2_inner_macOut = ($signed(io_mulInput) * $signed(_7_2_inner_activation));
  assign _zz__zz__7_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_2_inner_macOut)) ? 32'h00007fff : _zz__7_2_inner_macOut_2);
  assign _zz__7_2_inner_macOut_2 = (($signed(_zz__7_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_2_inner_activation;
    end else begin
      io_macOut = _7_2_inner_macOut;
    end
  end

  assign _zz__7_2_inner_macOut = ($signed(_zz__zz__7_2_inner_macOut) + $signed(_zz__zz__7_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_2_inner_activation <= 16'h0000;
      _7_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_2_inner_activation <= io_addInput;
      end else begin
        _7_2_inner_macOut <= _zz__7_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_113 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_1_inner_macOut;
  wire       [31:0]   _zz__zz__7_1_inner_macOut_1;
  wire       [31:0]   _zz__7_1_inner_macOut_1;
  wire       [31:0]   _zz__7_1_inner_macOut_2;
  reg        [15:0]   _7_1_inner_activation;
  reg        [15:0]   _7_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_1_inner_macOut;

  assign _zz__zz__7_1_inner_macOut = ($signed(io_mulInput) * $signed(_7_1_inner_activation));
  assign _zz__zz__7_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_1_inner_macOut)) ? 32'h00007fff : _zz__7_1_inner_macOut_2);
  assign _zz__7_1_inner_macOut_2 = (($signed(_zz__7_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_1_inner_activation;
    end else begin
      io_macOut = _7_1_inner_macOut;
    end
  end

  assign _zz__7_1_inner_macOut = ($signed(_zz__zz__7_1_inner_macOut) + $signed(_zz__zz__7_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_1_inner_activation <= 16'h0000;
      _7_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_1_inner_activation <= io_addInput;
      end else begin
        _7_1_inner_macOut <= _zz__7_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_112 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__7_0_inner_macOut;
  wire       [31:0]   _zz__zz__7_0_inner_macOut_1;
  wire       [31:0]   _zz__7_0_inner_macOut_1;
  wire       [31:0]   _zz__7_0_inner_macOut_2;
  reg        [15:0]   _7_0_inner_activation;
  reg        [15:0]   _7_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__7_0_inner_macOut;

  assign _zz__zz__7_0_inner_macOut = ($signed(io_mulInput) * $signed(_7_0_inner_activation));
  assign _zz__zz__7_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__7_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__7_0_inner_macOut)) ? 32'h00007fff : _zz__7_0_inner_macOut_2);
  assign _zz__7_0_inner_macOut_2 = (($signed(_zz__7_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__7_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _7_0_inner_activation;
    end else begin
      io_macOut = _7_0_inner_macOut;
    end
  end

  assign _zz__7_0_inner_macOut = ($signed(_zz__zz__7_0_inner_macOut) + $signed(_zz__zz__7_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _7_0_inner_activation <= 16'h0000;
      _7_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _7_0_inner_activation <= io_addInput;
      end else begin
        _7_0_inner_macOut <= _zz__7_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_111 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_15_inner_macOut;
  wire       [31:0]   _zz__zz__6_15_inner_macOut_1;
  wire       [31:0]   _zz__6_15_inner_macOut_1;
  wire       [31:0]   _zz__6_15_inner_macOut_2;
  reg        [15:0]   _6_15_inner_activation;
  reg        [15:0]   _6_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_15_inner_macOut;

  assign _zz__zz__6_15_inner_macOut = ($signed(io_mulInput) * $signed(_6_15_inner_activation));
  assign _zz__zz__6_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_15_inner_macOut)) ? 32'h00007fff : _zz__6_15_inner_macOut_2);
  assign _zz__6_15_inner_macOut_2 = (($signed(_zz__6_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_15_inner_activation;
    end else begin
      io_macOut = _6_15_inner_macOut;
    end
  end

  assign _zz__6_15_inner_macOut = ($signed(_zz__zz__6_15_inner_macOut) + $signed(_zz__zz__6_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_15_inner_activation <= 16'h0000;
      _6_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_15_inner_activation <= io_addInput;
      end else begin
        _6_15_inner_macOut <= _zz__6_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_110 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_14_inner_macOut;
  wire       [31:0]   _zz__zz__6_14_inner_macOut_1;
  wire       [31:0]   _zz__6_14_inner_macOut_1;
  wire       [31:0]   _zz__6_14_inner_macOut_2;
  reg        [15:0]   _6_14_inner_activation;
  reg        [15:0]   _6_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_14_inner_macOut;

  assign _zz__zz__6_14_inner_macOut = ($signed(io_mulInput) * $signed(_6_14_inner_activation));
  assign _zz__zz__6_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_14_inner_macOut)) ? 32'h00007fff : _zz__6_14_inner_macOut_2);
  assign _zz__6_14_inner_macOut_2 = (($signed(_zz__6_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_14_inner_activation;
    end else begin
      io_macOut = _6_14_inner_macOut;
    end
  end

  assign _zz__6_14_inner_macOut = ($signed(_zz__zz__6_14_inner_macOut) + $signed(_zz__zz__6_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_14_inner_activation <= 16'h0000;
      _6_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_14_inner_activation <= io_addInput;
      end else begin
        _6_14_inner_macOut <= _zz__6_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_109 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_13_inner_macOut;
  wire       [31:0]   _zz__zz__6_13_inner_macOut_1;
  wire       [31:0]   _zz__6_13_inner_macOut_1;
  wire       [31:0]   _zz__6_13_inner_macOut_2;
  reg        [15:0]   _6_13_inner_activation;
  reg        [15:0]   _6_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_13_inner_macOut;

  assign _zz__zz__6_13_inner_macOut = ($signed(io_mulInput) * $signed(_6_13_inner_activation));
  assign _zz__zz__6_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_13_inner_macOut)) ? 32'h00007fff : _zz__6_13_inner_macOut_2);
  assign _zz__6_13_inner_macOut_2 = (($signed(_zz__6_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_13_inner_activation;
    end else begin
      io_macOut = _6_13_inner_macOut;
    end
  end

  assign _zz__6_13_inner_macOut = ($signed(_zz__zz__6_13_inner_macOut) + $signed(_zz__zz__6_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_13_inner_activation <= 16'h0000;
      _6_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_13_inner_activation <= io_addInput;
      end else begin
        _6_13_inner_macOut <= _zz__6_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_108 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_12_inner_macOut;
  wire       [31:0]   _zz__zz__6_12_inner_macOut_1;
  wire       [31:0]   _zz__6_12_inner_macOut_1;
  wire       [31:0]   _zz__6_12_inner_macOut_2;
  reg        [15:0]   _6_12_inner_activation;
  reg        [15:0]   _6_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_12_inner_macOut;

  assign _zz__zz__6_12_inner_macOut = ($signed(io_mulInput) * $signed(_6_12_inner_activation));
  assign _zz__zz__6_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_12_inner_macOut)) ? 32'h00007fff : _zz__6_12_inner_macOut_2);
  assign _zz__6_12_inner_macOut_2 = (($signed(_zz__6_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_12_inner_activation;
    end else begin
      io_macOut = _6_12_inner_macOut;
    end
  end

  assign _zz__6_12_inner_macOut = ($signed(_zz__zz__6_12_inner_macOut) + $signed(_zz__zz__6_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_12_inner_activation <= 16'h0000;
      _6_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_12_inner_activation <= io_addInput;
      end else begin
        _6_12_inner_macOut <= _zz__6_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_107 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_11_inner_macOut;
  wire       [31:0]   _zz__zz__6_11_inner_macOut_1;
  wire       [31:0]   _zz__6_11_inner_macOut_1;
  wire       [31:0]   _zz__6_11_inner_macOut_2;
  reg        [15:0]   _6_11_inner_activation;
  reg        [15:0]   _6_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_11_inner_macOut;

  assign _zz__zz__6_11_inner_macOut = ($signed(io_mulInput) * $signed(_6_11_inner_activation));
  assign _zz__zz__6_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_11_inner_macOut)) ? 32'h00007fff : _zz__6_11_inner_macOut_2);
  assign _zz__6_11_inner_macOut_2 = (($signed(_zz__6_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_11_inner_activation;
    end else begin
      io_macOut = _6_11_inner_macOut;
    end
  end

  assign _zz__6_11_inner_macOut = ($signed(_zz__zz__6_11_inner_macOut) + $signed(_zz__zz__6_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_11_inner_activation <= 16'h0000;
      _6_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_11_inner_activation <= io_addInput;
      end else begin
        _6_11_inner_macOut <= _zz__6_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_106 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_10_inner_macOut;
  wire       [31:0]   _zz__zz__6_10_inner_macOut_1;
  wire       [31:0]   _zz__6_10_inner_macOut_1;
  wire       [31:0]   _zz__6_10_inner_macOut_2;
  reg        [15:0]   _6_10_inner_activation;
  reg        [15:0]   _6_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_10_inner_macOut;

  assign _zz__zz__6_10_inner_macOut = ($signed(io_mulInput) * $signed(_6_10_inner_activation));
  assign _zz__zz__6_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_10_inner_macOut)) ? 32'h00007fff : _zz__6_10_inner_macOut_2);
  assign _zz__6_10_inner_macOut_2 = (($signed(_zz__6_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_10_inner_activation;
    end else begin
      io_macOut = _6_10_inner_macOut;
    end
  end

  assign _zz__6_10_inner_macOut = ($signed(_zz__zz__6_10_inner_macOut) + $signed(_zz__zz__6_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_10_inner_activation <= 16'h0000;
      _6_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_10_inner_activation <= io_addInput;
      end else begin
        _6_10_inner_macOut <= _zz__6_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_105 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_9_inner_macOut;
  wire       [31:0]   _zz__zz__6_9_inner_macOut_1;
  wire       [31:0]   _zz__6_9_inner_macOut_1;
  wire       [31:0]   _zz__6_9_inner_macOut_2;
  reg        [15:0]   _6_9_inner_activation;
  reg        [15:0]   _6_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_9_inner_macOut;

  assign _zz__zz__6_9_inner_macOut = ($signed(io_mulInput) * $signed(_6_9_inner_activation));
  assign _zz__zz__6_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_9_inner_macOut)) ? 32'h00007fff : _zz__6_9_inner_macOut_2);
  assign _zz__6_9_inner_macOut_2 = (($signed(_zz__6_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_9_inner_activation;
    end else begin
      io_macOut = _6_9_inner_macOut;
    end
  end

  assign _zz__6_9_inner_macOut = ($signed(_zz__zz__6_9_inner_macOut) + $signed(_zz__zz__6_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_9_inner_activation <= 16'h0000;
      _6_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_9_inner_activation <= io_addInput;
      end else begin
        _6_9_inner_macOut <= _zz__6_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_104 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_8_inner_macOut;
  wire       [31:0]   _zz__zz__6_8_inner_macOut_1;
  wire       [31:0]   _zz__6_8_inner_macOut_1;
  wire       [31:0]   _zz__6_8_inner_macOut_2;
  reg        [15:0]   _6_8_inner_activation;
  reg        [15:0]   _6_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_8_inner_macOut;

  assign _zz__zz__6_8_inner_macOut = ($signed(io_mulInput) * $signed(_6_8_inner_activation));
  assign _zz__zz__6_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_8_inner_macOut)) ? 32'h00007fff : _zz__6_8_inner_macOut_2);
  assign _zz__6_8_inner_macOut_2 = (($signed(_zz__6_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_8_inner_activation;
    end else begin
      io_macOut = _6_8_inner_macOut;
    end
  end

  assign _zz__6_8_inner_macOut = ($signed(_zz__zz__6_8_inner_macOut) + $signed(_zz__zz__6_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_8_inner_activation <= 16'h0000;
      _6_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_8_inner_activation <= io_addInput;
      end else begin
        _6_8_inner_macOut <= _zz__6_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_103 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_7_inner_macOut;
  wire       [31:0]   _zz__zz__6_7_inner_macOut_1;
  wire       [31:0]   _zz__6_7_inner_macOut_1;
  wire       [31:0]   _zz__6_7_inner_macOut_2;
  reg        [15:0]   _6_7_inner_activation;
  reg        [15:0]   _6_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_7_inner_macOut;

  assign _zz__zz__6_7_inner_macOut = ($signed(io_mulInput) * $signed(_6_7_inner_activation));
  assign _zz__zz__6_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_7_inner_macOut)) ? 32'h00007fff : _zz__6_7_inner_macOut_2);
  assign _zz__6_7_inner_macOut_2 = (($signed(_zz__6_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_7_inner_activation;
    end else begin
      io_macOut = _6_7_inner_macOut;
    end
  end

  assign _zz__6_7_inner_macOut = ($signed(_zz__zz__6_7_inner_macOut) + $signed(_zz__zz__6_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_7_inner_activation <= 16'h0000;
      _6_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_7_inner_activation <= io_addInput;
      end else begin
        _6_7_inner_macOut <= _zz__6_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_102 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_6_inner_macOut;
  wire       [31:0]   _zz__zz__6_6_inner_macOut_1;
  wire       [31:0]   _zz__6_6_inner_macOut_1;
  wire       [31:0]   _zz__6_6_inner_macOut_2;
  reg        [15:0]   _6_6_inner_activation;
  reg        [15:0]   _6_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_6_inner_macOut;

  assign _zz__zz__6_6_inner_macOut = ($signed(io_mulInput) * $signed(_6_6_inner_activation));
  assign _zz__zz__6_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_6_inner_macOut)) ? 32'h00007fff : _zz__6_6_inner_macOut_2);
  assign _zz__6_6_inner_macOut_2 = (($signed(_zz__6_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_6_inner_activation;
    end else begin
      io_macOut = _6_6_inner_macOut;
    end
  end

  assign _zz__6_6_inner_macOut = ($signed(_zz__zz__6_6_inner_macOut) + $signed(_zz__zz__6_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_6_inner_activation <= 16'h0000;
      _6_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_6_inner_activation <= io_addInput;
      end else begin
        _6_6_inner_macOut <= _zz__6_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_101 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_5_inner_macOut;
  wire       [31:0]   _zz__zz__6_5_inner_macOut_1;
  wire       [31:0]   _zz__6_5_inner_macOut_1;
  wire       [31:0]   _zz__6_5_inner_macOut_2;
  reg        [15:0]   _6_5_inner_activation;
  reg        [15:0]   _6_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_5_inner_macOut;

  assign _zz__zz__6_5_inner_macOut = ($signed(io_mulInput) * $signed(_6_5_inner_activation));
  assign _zz__zz__6_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_5_inner_macOut)) ? 32'h00007fff : _zz__6_5_inner_macOut_2);
  assign _zz__6_5_inner_macOut_2 = (($signed(_zz__6_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_5_inner_activation;
    end else begin
      io_macOut = _6_5_inner_macOut;
    end
  end

  assign _zz__6_5_inner_macOut = ($signed(_zz__zz__6_5_inner_macOut) + $signed(_zz__zz__6_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_5_inner_activation <= 16'h0000;
      _6_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_5_inner_activation <= io_addInput;
      end else begin
        _6_5_inner_macOut <= _zz__6_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_100 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_4_inner_macOut;
  wire       [31:0]   _zz__zz__6_4_inner_macOut_1;
  wire       [31:0]   _zz__6_4_inner_macOut_1;
  wire       [31:0]   _zz__6_4_inner_macOut_2;
  reg        [15:0]   _6_4_inner_activation;
  reg        [15:0]   _6_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_4_inner_macOut;

  assign _zz__zz__6_4_inner_macOut = ($signed(io_mulInput) * $signed(_6_4_inner_activation));
  assign _zz__zz__6_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_4_inner_macOut)) ? 32'h00007fff : _zz__6_4_inner_macOut_2);
  assign _zz__6_4_inner_macOut_2 = (($signed(_zz__6_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_4_inner_activation;
    end else begin
      io_macOut = _6_4_inner_macOut;
    end
  end

  assign _zz__6_4_inner_macOut = ($signed(_zz__zz__6_4_inner_macOut) + $signed(_zz__zz__6_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_4_inner_activation <= 16'h0000;
      _6_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_4_inner_activation <= io_addInput;
      end else begin
        _6_4_inner_macOut <= _zz__6_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_99 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_3_inner_macOut;
  wire       [31:0]   _zz__zz__6_3_inner_macOut_1;
  wire       [31:0]   _zz__6_3_inner_macOut_1;
  wire       [31:0]   _zz__6_3_inner_macOut_2;
  reg        [15:0]   _6_3_inner_activation;
  reg        [15:0]   _6_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_3_inner_macOut;

  assign _zz__zz__6_3_inner_macOut = ($signed(io_mulInput) * $signed(_6_3_inner_activation));
  assign _zz__zz__6_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_3_inner_macOut)) ? 32'h00007fff : _zz__6_3_inner_macOut_2);
  assign _zz__6_3_inner_macOut_2 = (($signed(_zz__6_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_3_inner_activation;
    end else begin
      io_macOut = _6_3_inner_macOut;
    end
  end

  assign _zz__6_3_inner_macOut = ($signed(_zz__zz__6_3_inner_macOut) + $signed(_zz__zz__6_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_3_inner_activation <= 16'h0000;
      _6_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_3_inner_activation <= io_addInput;
      end else begin
        _6_3_inner_macOut <= _zz__6_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_98 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_2_inner_macOut;
  wire       [31:0]   _zz__zz__6_2_inner_macOut_1;
  wire       [31:0]   _zz__6_2_inner_macOut_1;
  wire       [31:0]   _zz__6_2_inner_macOut_2;
  reg        [15:0]   _6_2_inner_activation;
  reg        [15:0]   _6_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_2_inner_macOut;

  assign _zz__zz__6_2_inner_macOut = ($signed(io_mulInput) * $signed(_6_2_inner_activation));
  assign _zz__zz__6_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_2_inner_macOut)) ? 32'h00007fff : _zz__6_2_inner_macOut_2);
  assign _zz__6_2_inner_macOut_2 = (($signed(_zz__6_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_2_inner_activation;
    end else begin
      io_macOut = _6_2_inner_macOut;
    end
  end

  assign _zz__6_2_inner_macOut = ($signed(_zz__zz__6_2_inner_macOut) + $signed(_zz__zz__6_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_2_inner_activation <= 16'h0000;
      _6_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_2_inner_activation <= io_addInput;
      end else begin
        _6_2_inner_macOut <= _zz__6_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_97 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_1_inner_macOut;
  wire       [31:0]   _zz__zz__6_1_inner_macOut_1;
  wire       [31:0]   _zz__6_1_inner_macOut_1;
  wire       [31:0]   _zz__6_1_inner_macOut_2;
  reg        [15:0]   _6_1_inner_activation;
  reg        [15:0]   _6_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_1_inner_macOut;

  assign _zz__zz__6_1_inner_macOut = ($signed(io_mulInput) * $signed(_6_1_inner_activation));
  assign _zz__zz__6_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_1_inner_macOut)) ? 32'h00007fff : _zz__6_1_inner_macOut_2);
  assign _zz__6_1_inner_macOut_2 = (($signed(_zz__6_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_1_inner_activation;
    end else begin
      io_macOut = _6_1_inner_macOut;
    end
  end

  assign _zz__6_1_inner_macOut = ($signed(_zz__zz__6_1_inner_macOut) + $signed(_zz__zz__6_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_1_inner_activation <= 16'h0000;
      _6_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_1_inner_activation <= io_addInput;
      end else begin
        _6_1_inner_macOut <= _zz__6_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_96 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__6_0_inner_macOut;
  wire       [31:0]   _zz__zz__6_0_inner_macOut_1;
  wire       [31:0]   _zz__6_0_inner_macOut_1;
  wire       [31:0]   _zz__6_0_inner_macOut_2;
  reg        [15:0]   _6_0_inner_activation;
  reg        [15:0]   _6_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__6_0_inner_macOut;

  assign _zz__zz__6_0_inner_macOut = ($signed(io_mulInput) * $signed(_6_0_inner_activation));
  assign _zz__zz__6_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__6_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__6_0_inner_macOut)) ? 32'h00007fff : _zz__6_0_inner_macOut_2);
  assign _zz__6_0_inner_macOut_2 = (($signed(_zz__6_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__6_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _6_0_inner_activation;
    end else begin
      io_macOut = _6_0_inner_macOut;
    end
  end

  assign _zz__6_0_inner_macOut = ($signed(_zz__zz__6_0_inner_macOut) + $signed(_zz__zz__6_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _6_0_inner_activation <= 16'h0000;
      _6_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _6_0_inner_activation <= io_addInput;
      end else begin
        _6_0_inner_macOut <= _zz__6_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_95 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_15_inner_macOut;
  wire       [31:0]   _zz__zz__5_15_inner_macOut_1;
  wire       [31:0]   _zz__5_15_inner_macOut_1;
  wire       [31:0]   _zz__5_15_inner_macOut_2;
  reg        [15:0]   _5_15_inner_activation;
  reg        [15:0]   _5_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_15_inner_macOut;

  assign _zz__zz__5_15_inner_macOut = ($signed(io_mulInput) * $signed(_5_15_inner_activation));
  assign _zz__zz__5_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_15_inner_macOut)) ? 32'h00007fff : _zz__5_15_inner_macOut_2);
  assign _zz__5_15_inner_macOut_2 = (($signed(_zz__5_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_15_inner_activation;
    end else begin
      io_macOut = _5_15_inner_macOut;
    end
  end

  assign _zz__5_15_inner_macOut = ($signed(_zz__zz__5_15_inner_macOut) + $signed(_zz__zz__5_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_15_inner_activation <= 16'h0000;
      _5_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_15_inner_activation <= io_addInput;
      end else begin
        _5_15_inner_macOut <= _zz__5_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_94 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_14_inner_macOut;
  wire       [31:0]   _zz__zz__5_14_inner_macOut_1;
  wire       [31:0]   _zz__5_14_inner_macOut_1;
  wire       [31:0]   _zz__5_14_inner_macOut_2;
  reg        [15:0]   _5_14_inner_activation;
  reg        [15:0]   _5_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_14_inner_macOut;

  assign _zz__zz__5_14_inner_macOut = ($signed(io_mulInput) * $signed(_5_14_inner_activation));
  assign _zz__zz__5_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_14_inner_macOut)) ? 32'h00007fff : _zz__5_14_inner_macOut_2);
  assign _zz__5_14_inner_macOut_2 = (($signed(_zz__5_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_14_inner_activation;
    end else begin
      io_macOut = _5_14_inner_macOut;
    end
  end

  assign _zz__5_14_inner_macOut = ($signed(_zz__zz__5_14_inner_macOut) + $signed(_zz__zz__5_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_14_inner_activation <= 16'h0000;
      _5_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_14_inner_activation <= io_addInput;
      end else begin
        _5_14_inner_macOut <= _zz__5_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_93 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_13_inner_macOut;
  wire       [31:0]   _zz__zz__5_13_inner_macOut_1;
  wire       [31:0]   _zz__5_13_inner_macOut_1;
  wire       [31:0]   _zz__5_13_inner_macOut_2;
  reg        [15:0]   _5_13_inner_activation;
  reg        [15:0]   _5_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_13_inner_macOut;

  assign _zz__zz__5_13_inner_macOut = ($signed(io_mulInput) * $signed(_5_13_inner_activation));
  assign _zz__zz__5_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_13_inner_macOut)) ? 32'h00007fff : _zz__5_13_inner_macOut_2);
  assign _zz__5_13_inner_macOut_2 = (($signed(_zz__5_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_13_inner_activation;
    end else begin
      io_macOut = _5_13_inner_macOut;
    end
  end

  assign _zz__5_13_inner_macOut = ($signed(_zz__zz__5_13_inner_macOut) + $signed(_zz__zz__5_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_13_inner_activation <= 16'h0000;
      _5_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_13_inner_activation <= io_addInput;
      end else begin
        _5_13_inner_macOut <= _zz__5_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_92 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_12_inner_macOut;
  wire       [31:0]   _zz__zz__5_12_inner_macOut_1;
  wire       [31:0]   _zz__5_12_inner_macOut_1;
  wire       [31:0]   _zz__5_12_inner_macOut_2;
  reg        [15:0]   _5_12_inner_activation;
  reg        [15:0]   _5_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_12_inner_macOut;

  assign _zz__zz__5_12_inner_macOut = ($signed(io_mulInput) * $signed(_5_12_inner_activation));
  assign _zz__zz__5_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_12_inner_macOut)) ? 32'h00007fff : _zz__5_12_inner_macOut_2);
  assign _zz__5_12_inner_macOut_2 = (($signed(_zz__5_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_12_inner_activation;
    end else begin
      io_macOut = _5_12_inner_macOut;
    end
  end

  assign _zz__5_12_inner_macOut = ($signed(_zz__zz__5_12_inner_macOut) + $signed(_zz__zz__5_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_12_inner_activation <= 16'h0000;
      _5_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_12_inner_activation <= io_addInput;
      end else begin
        _5_12_inner_macOut <= _zz__5_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_91 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_11_inner_macOut;
  wire       [31:0]   _zz__zz__5_11_inner_macOut_1;
  wire       [31:0]   _zz__5_11_inner_macOut_1;
  wire       [31:0]   _zz__5_11_inner_macOut_2;
  reg        [15:0]   _5_11_inner_activation;
  reg        [15:0]   _5_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_11_inner_macOut;

  assign _zz__zz__5_11_inner_macOut = ($signed(io_mulInput) * $signed(_5_11_inner_activation));
  assign _zz__zz__5_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_11_inner_macOut)) ? 32'h00007fff : _zz__5_11_inner_macOut_2);
  assign _zz__5_11_inner_macOut_2 = (($signed(_zz__5_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_11_inner_activation;
    end else begin
      io_macOut = _5_11_inner_macOut;
    end
  end

  assign _zz__5_11_inner_macOut = ($signed(_zz__zz__5_11_inner_macOut) + $signed(_zz__zz__5_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_11_inner_activation <= 16'h0000;
      _5_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_11_inner_activation <= io_addInput;
      end else begin
        _5_11_inner_macOut <= _zz__5_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_90 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_10_inner_macOut;
  wire       [31:0]   _zz__zz__5_10_inner_macOut_1;
  wire       [31:0]   _zz__5_10_inner_macOut_1;
  wire       [31:0]   _zz__5_10_inner_macOut_2;
  reg        [15:0]   _5_10_inner_activation;
  reg        [15:0]   _5_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_10_inner_macOut;

  assign _zz__zz__5_10_inner_macOut = ($signed(io_mulInput) * $signed(_5_10_inner_activation));
  assign _zz__zz__5_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_10_inner_macOut)) ? 32'h00007fff : _zz__5_10_inner_macOut_2);
  assign _zz__5_10_inner_macOut_2 = (($signed(_zz__5_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_10_inner_activation;
    end else begin
      io_macOut = _5_10_inner_macOut;
    end
  end

  assign _zz__5_10_inner_macOut = ($signed(_zz__zz__5_10_inner_macOut) + $signed(_zz__zz__5_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_10_inner_activation <= 16'h0000;
      _5_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_10_inner_activation <= io_addInput;
      end else begin
        _5_10_inner_macOut <= _zz__5_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_89 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_9_inner_macOut;
  wire       [31:0]   _zz__zz__5_9_inner_macOut_1;
  wire       [31:0]   _zz__5_9_inner_macOut_1;
  wire       [31:0]   _zz__5_9_inner_macOut_2;
  reg        [15:0]   _5_9_inner_activation;
  reg        [15:0]   _5_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_9_inner_macOut;

  assign _zz__zz__5_9_inner_macOut = ($signed(io_mulInput) * $signed(_5_9_inner_activation));
  assign _zz__zz__5_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_9_inner_macOut)) ? 32'h00007fff : _zz__5_9_inner_macOut_2);
  assign _zz__5_9_inner_macOut_2 = (($signed(_zz__5_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_9_inner_activation;
    end else begin
      io_macOut = _5_9_inner_macOut;
    end
  end

  assign _zz__5_9_inner_macOut = ($signed(_zz__zz__5_9_inner_macOut) + $signed(_zz__zz__5_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_9_inner_activation <= 16'h0000;
      _5_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_9_inner_activation <= io_addInput;
      end else begin
        _5_9_inner_macOut <= _zz__5_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_88 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_8_inner_macOut;
  wire       [31:0]   _zz__zz__5_8_inner_macOut_1;
  wire       [31:0]   _zz__5_8_inner_macOut_1;
  wire       [31:0]   _zz__5_8_inner_macOut_2;
  reg        [15:0]   _5_8_inner_activation;
  reg        [15:0]   _5_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_8_inner_macOut;

  assign _zz__zz__5_8_inner_macOut = ($signed(io_mulInput) * $signed(_5_8_inner_activation));
  assign _zz__zz__5_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_8_inner_macOut)) ? 32'h00007fff : _zz__5_8_inner_macOut_2);
  assign _zz__5_8_inner_macOut_2 = (($signed(_zz__5_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_8_inner_activation;
    end else begin
      io_macOut = _5_8_inner_macOut;
    end
  end

  assign _zz__5_8_inner_macOut = ($signed(_zz__zz__5_8_inner_macOut) + $signed(_zz__zz__5_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_8_inner_activation <= 16'h0000;
      _5_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_8_inner_activation <= io_addInput;
      end else begin
        _5_8_inner_macOut <= _zz__5_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_87 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_7_inner_macOut;
  wire       [31:0]   _zz__zz__5_7_inner_macOut_1;
  wire       [31:0]   _zz__5_7_inner_macOut_1;
  wire       [31:0]   _zz__5_7_inner_macOut_2;
  reg        [15:0]   _5_7_inner_activation;
  reg        [15:0]   _5_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_7_inner_macOut;

  assign _zz__zz__5_7_inner_macOut = ($signed(io_mulInput) * $signed(_5_7_inner_activation));
  assign _zz__zz__5_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_7_inner_macOut)) ? 32'h00007fff : _zz__5_7_inner_macOut_2);
  assign _zz__5_7_inner_macOut_2 = (($signed(_zz__5_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_7_inner_activation;
    end else begin
      io_macOut = _5_7_inner_macOut;
    end
  end

  assign _zz__5_7_inner_macOut = ($signed(_zz__zz__5_7_inner_macOut) + $signed(_zz__zz__5_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_7_inner_activation <= 16'h0000;
      _5_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_7_inner_activation <= io_addInput;
      end else begin
        _5_7_inner_macOut <= _zz__5_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_86 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_6_inner_macOut;
  wire       [31:0]   _zz__zz__5_6_inner_macOut_1;
  wire       [31:0]   _zz__5_6_inner_macOut_1;
  wire       [31:0]   _zz__5_6_inner_macOut_2;
  reg        [15:0]   _5_6_inner_activation;
  reg        [15:0]   _5_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_6_inner_macOut;

  assign _zz__zz__5_6_inner_macOut = ($signed(io_mulInput) * $signed(_5_6_inner_activation));
  assign _zz__zz__5_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_6_inner_macOut)) ? 32'h00007fff : _zz__5_6_inner_macOut_2);
  assign _zz__5_6_inner_macOut_2 = (($signed(_zz__5_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_6_inner_activation;
    end else begin
      io_macOut = _5_6_inner_macOut;
    end
  end

  assign _zz__5_6_inner_macOut = ($signed(_zz__zz__5_6_inner_macOut) + $signed(_zz__zz__5_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_6_inner_activation <= 16'h0000;
      _5_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_6_inner_activation <= io_addInput;
      end else begin
        _5_6_inner_macOut <= _zz__5_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_85 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_5_inner_macOut;
  wire       [31:0]   _zz__zz__5_5_inner_macOut_1;
  wire       [31:0]   _zz__5_5_inner_macOut_1;
  wire       [31:0]   _zz__5_5_inner_macOut_2;
  reg        [15:0]   _5_5_inner_activation;
  reg        [15:0]   _5_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_5_inner_macOut;

  assign _zz__zz__5_5_inner_macOut = ($signed(io_mulInput) * $signed(_5_5_inner_activation));
  assign _zz__zz__5_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_5_inner_macOut)) ? 32'h00007fff : _zz__5_5_inner_macOut_2);
  assign _zz__5_5_inner_macOut_2 = (($signed(_zz__5_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_5_inner_activation;
    end else begin
      io_macOut = _5_5_inner_macOut;
    end
  end

  assign _zz__5_5_inner_macOut = ($signed(_zz__zz__5_5_inner_macOut) + $signed(_zz__zz__5_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_5_inner_activation <= 16'h0000;
      _5_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_5_inner_activation <= io_addInput;
      end else begin
        _5_5_inner_macOut <= _zz__5_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_84 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_4_inner_macOut;
  wire       [31:0]   _zz__zz__5_4_inner_macOut_1;
  wire       [31:0]   _zz__5_4_inner_macOut_1;
  wire       [31:0]   _zz__5_4_inner_macOut_2;
  reg        [15:0]   _5_4_inner_activation;
  reg        [15:0]   _5_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_4_inner_macOut;

  assign _zz__zz__5_4_inner_macOut = ($signed(io_mulInput) * $signed(_5_4_inner_activation));
  assign _zz__zz__5_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_4_inner_macOut)) ? 32'h00007fff : _zz__5_4_inner_macOut_2);
  assign _zz__5_4_inner_macOut_2 = (($signed(_zz__5_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_4_inner_activation;
    end else begin
      io_macOut = _5_4_inner_macOut;
    end
  end

  assign _zz__5_4_inner_macOut = ($signed(_zz__zz__5_4_inner_macOut) + $signed(_zz__zz__5_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_4_inner_activation <= 16'h0000;
      _5_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_4_inner_activation <= io_addInput;
      end else begin
        _5_4_inner_macOut <= _zz__5_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_83 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_3_inner_macOut;
  wire       [31:0]   _zz__zz__5_3_inner_macOut_1;
  wire       [31:0]   _zz__5_3_inner_macOut_1;
  wire       [31:0]   _zz__5_3_inner_macOut_2;
  reg        [15:0]   _5_3_inner_activation;
  reg        [15:0]   _5_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_3_inner_macOut;

  assign _zz__zz__5_3_inner_macOut = ($signed(io_mulInput) * $signed(_5_3_inner_activation));
  assign _zz__zz__5_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_3_inner_macOut)) ? 32'h00007fff : _zz__5_3_inner_macOut_2);
  assign _zz__5_3_inner_macOut_2 = (($signed(_zz__5_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_3_inner_activation;
    end else begin
      io_macOut = _5_3_inner_macOut;
    end
  end

  assign _zz__5_3_inner_macOut = ($signed(_zz__zz__5_3_inner_macOut) + $signed(_zz__zz__5_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_3_inner_activation <= 16'h0000;
      _5_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_3_inner_activation <= io_addInput;
      end else begin
        _5_3_inner_macOut <= _zz__5_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_82 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_2_inner_macOut;
  wire       [31:0]   _zz__zz__5_2_inner_macOut_1;
  wire       [31:0]   _zz__5_2_inner_macOut_1;
  wire       [31:0]   _zz__5_2_inner_macOut_2;
  reg        [15:0]   _5_2_inner_activation;
  reg        [15:0]   _5_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_2_inner_macOut;

  assign _zz__zz__5_2_inner_macOut = ($signed(io_mulInput) * $signed(_5_2_inner_activation));
  assign _zz__zz__5_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_2_inner_macOut)) ? 32'h00007fff : _zz__5_2_inner_macOut_2);
  assign _zz__5_2_inner_macOut_2 = (($signed(_zz__5_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_2_inner_activation;
    end else begin
      io_macOut = _5_2_inner_macOut;
    end
  end

  assign _zz__5_2_inner_macOut = ($signed(_zz__zz__5_2_inner_macOut) + $signed(_zz__zz__5_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_2_inner_activation <= 16'h0000;
      _5_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_2_inner_activation <= io_addInput;
      end else begin
        _5_2_inner_macOut <= _zz__5_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_81 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_1_inner_macOut;
  wire       [31:0]   _zz__zz__5_1_inner_macOut_1;
  wire       [31:0]   _zz__5_1_inner_macOut_1;
  wire       [31:0]   _zz__5_1_inner_macOut_2;
  reg        [15:0]   _5_1_inner_activation;
  reg        [15:0]   _5_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_1_inner_macOut;

  assign _zz__zz__5_1_inner_macOut = ($signed(io_mulInput) * $signed(_5_1_inner_activation));
  assign _zz__zz__5_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_1_inner_macOut)) ? 32'h00007fff : _zz__5_1_inner_macOut_2);
  assign _zz__5_1_inner_macOut_2 = (($signed(_zz__5_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_1_inner_activation;
    end else begin
      io_macOut = _5_1_inner_macOut;
    end
  end

  assign _zz__5_1_inner_macOut = ($signed(_zz__zz__5_1_inner_macOut) + $signed(_zz__zz__5_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_1_inner_activation <= 16'h0000;
      _5_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_1_inner_activation <= io_addInput;
      end else begin
        _5_1_inner_macOut <= _zz__5_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_80 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__5_0_inner_macOut;
  wire       [31:0]   _zz__zz__5_0_inner_macOut_1;
  wire       [31:0]   _zz__5_0_inner_macOut_1;
  wire       [31:0]   _zz__5_0_inner_macOut_2;
  reg        [15:0]   _5_0_inner_activation;
  reg        [15:0]   _5_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__5_0_inner_macOut;

  assign _zz__zz__5_0_inner_macOut = ($signed(io_mulInput) * $signed(_5_0_inner_activation));
  assign _zz__zz__5_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__5_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__5_0_inner_macOut)) ? 32'h00007fff : _zz__5_0_inner_macOut_2);
  assign _zz__5_0_inner_macOut_2 = (($signed(_zz__5_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__5_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _5_0_inner_activation;
    end else begin
      io_macOut = _5_0_inner_macOut;
    end
  end

  assign _zz__5_0_inner_macOut = ($signed(_zz__zz__5_0_inner_macOut) + $signed(_zz__zz__5_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _5_0_inner_activation <= 16'h0000;
      _5_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _5_0_inner_activation <= io_addInput;
      end else begin
        _5_0_inner_macOut <= _zz__5_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_79 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_15_inner_macOut;
  wire       [31:0]   _zz__zz__4_15_inner_macOut_1;
  wire       [31:0]   _zz__4_15_inner_macOut_1;
  wire       [31:0]   _zz__4_15_inner_macOut_2;
  reg        [15:0]   _4_15_inner_activation;
  reg        [15:0]   _4_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_15_inner_macOut;

  assign _zz__zz__4_15_inner_macOut = ($signed(io_mulInput) * $signed(_4_15_inner_activation));
  assign _zz__zz__4_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_15_inner_macOut)) ? 32'h00007fff : _zz__4_15_inner_macOut_2);
  assign _zz__4_15_inner_macOut_2 = (($signed(_zz__4_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_15_inner_activation;
    end else begin
      io_macOut = _4_15_inner_macOut;
    end
  end

  assign _zz__4_15_inner_macOut = ($signed(_zz__zz__4_15_inner_macOut) + $signed(_zz__zz__4_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_15_inner_activation <= 16'h0000;
      _4_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_15_inner_activation <= io_addInput;
      end else begin
        _4_15_inner_macOut <= _zz__4_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_78 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_14_inner_macOut;
  wire       [31:0]   _zz__zz__4_14_inner_macOut_1;
  wire       [31:0]   _zz__4_14_inner_macOut_1;
  wire       [31:0]   _zz__4_14_inner_macOut_2;
  reg        [15:0]   _4_14_inner_activation;
  reg        [15:0]   _4_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_14_inner_macOut;

  assign _zz__zz__4_14_inner_macOut = ($signed(io_mulInput) * $signed(_4_14_inner_activation));
  assign _zz__zz__4_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_14_inner_macOut)) ? 32'h00007fff : _zz__4_14_inner_macOut_2);
  assign _zz__4_14_inner_macOut_2 = (($signed(_zz__4_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_14_inner_activation;
    end else begin
      io_macOut = _4_14_inner_macOut;
    end
  end

  assign _zz__4_14_inner_macOut = ($signed(_zz__zz__4_14_inner_macOut) + $signed(_zz__zz__4_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_14_inner_activation <= 16'h0000;
      _4_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_14_inner_activation <= io_addInput;
      end else begin
        _4_14_inner_macOut <= _zz__4_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_77 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_13_inner_macOut;
  wire       [31:0]   _zz__zz__4_13_inner_macOut_1;
  wire       [31:0]   _zz__4_13_inner_macOut_1;
  wire       [31:0]   _zz__4_13_inner_macOut_2;
  reg        [15:0]   _4_13_inner_activation;
  reg        [15:0]   _4_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_13_inner_macOut;

  assign _zz__zz__4_13_inner_macOut = ($signed(io_mulInput) * $signed(_4_13_inner_activation));
  assign _zz__zz__4_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_13_inner_macOut)) ? 32'h00007fff : _zz__4_13_inner_macOut_2);
  assign _zz__4_13_inner_macOut_2 = (($signed(_zz__4_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_13_inner_activation;
    end else begin
      io_macOut = _4_13_inner_macOut;
    end
  end

  assign _zz__4_13_inner_macOut = ($signed(_zz__zz__4_13_inner_macOut) + $signed(_zz__zz__4_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_13_inner_activation <= 16'h0000;
      _4_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_13_inner_activation <= io_addInput;
      end else begin
        _4_13_inner_macOut <= _zz__4_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_76 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_12_inner_macOut;
  wire       [31:0]   _zz__zz__4_12_inner_macOut_1;
  wire       [31:0]   _zz__4_12_inner_macOut_1;
  wire       [31:0]   _zz__4_12_inner_macOut_2;
  reg        [15:0]   _4_12_inner_activation;
  reg        [15:0]   _4_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_12_inner_macOut;

  assign _zz__zz__4_12_inner_macOut = ($signed(io_mulInput) * $signed(_4_12_inner_activation));
  assign _zz__zz__4_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_12_inner_macOut)) ? 32'h00007fff : _zz__4_12_inner_macOut_2);
  assign _zz__4_12_inner_macOut_2 = (($signed(_zz__4_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_12_inner_activation;
    end else begin
      io_macOut = _4_12_inner_macOut;
    end
  end

  assign _zz__4_12_inner_macOut = ($signed(_zz__zz__4_12_inner_macOut) + $signed(_zz__zz__4_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_12_inner_activation <= 16'h0000;
      _4_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_12_inner_activation <= io_addInput;
      end else begin
        _4_12_inner_macOut <= _zz__4_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_75 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_11_inner_macOut;
  wire       [31:0]   _zz__zz__4_11_inner_macOut_1;
  wire       [31:0]   _zz__4_11_inner_macOut_1;
  wire       [31:0]   _zz__4_11_inner_macOut_2;
  reg        [15:0]   _4_11_inner_activation;
  reg        [15:0]   _4_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_11_inner_macOut;

  assign _zz__zz__4_11_inner_macOut = ($signed(io_mulInput) * $signed(_4_11_inner_activation));
  assign _zz__zz__4_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_11_inner_macOut)) ? 32'h00007fff : _zz__4_11_inner_macOut_2);
  assign _zz__4_11_inner_macOut_2 = (($signed(_zz__4_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_11_inner_activation;
    end else begin
      io_macOut = _4_11_inner_macOut;
    end
  end

  assign _zz__4_11_inner_macOut = ($signed(_zz__zz__4_11_inner_macOut) + $signed(_zz__zz__4_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_11_inner_activation <= 16'h0000;
      _4_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_11_inner_activation <= io_addInput;
      end else begin
        _4_11_inner_macOut <= _zz__4_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_74 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_10_inner_macOut;
  wire       [31:0]   _zz__zz__4_10_inner_macOut_1;
  wire       [31:0]   _zz__4_10_inner_macOut_1;
  wire       [31:0]   _zz__4_10_inner_macOut_2;
  reg        [15:0]   _4_10_inner_activation;
  reg        [15:0]   _4_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_10_inner_macOut;

  assign _zz__zz__4_10_inner_macOut = ($signed(io_mulInput) * $signed(_4_10_inner_activation));
  assign _zz__zz__4_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_10_inner_macOut)) ? 32'h00007fff : _zz__4_10_inner_macOut_2);
  assign _zz__4_10_inner_macOut_2 = (($signed(_zz__4_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_10_inner_activation;
    end else begin
      io_macOut = _4_10_inner_macOut;
    end
  end

  assign _zz__4_10_inner_macOut = ($signed(_zz__zz__4_10_inner_macOut) + $signed(_zz__zz__4_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_10_inner_activation <= 16'h0000;
      _4_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_10_inner_activation <= io_addInput;
      end else begin
        _4_10_inner_macOut <= _zz__4_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_73 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_9_inner_macOut;
  wire       [31:0]   _zz__zz__4_9_inner_macOut_1;
  wire       [31:0]   _zz__4_9_inner_macOut_1;
  wire       [31:0]   _zz__4_9_inner_macOut_2;
  reg        [15:0]   _4_9_inner_activation;
  reg        [15:0]   _4_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_9_inner_macOut;

  assign _zz__zz__4_9_inner_macOut = ($signed(io_mulInput) * $signed(_4_9_inner_activation));
  assign _zz__zz__4_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_9_inner_macOut)) ? 32'h00007fff : _zz__4_9_inner_macOut_2);
  assign _zz__4_9_inner_macOut_2 = (($signed(_zz__4_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_9_inner_activation;
    end else begin
      io_macOut = _4_9_inner_macOut;
    end
  end

  assign _zz__4_9_inner_macOut = ($signed(_zz__zz__4_9_inner_macOut) + $signed(_zz__zz__4_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_9_inner_activation <= 16'h0000;
      _4_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_9_inner_activation <= io_addInput;
      end else begin
        _4_9_inner_macOut <= _zz__4_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_72 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_8_inner_macOut;
  wire       [31:0]   _zz__zz__4_8_inner_macOut_1;
  wire       [31:0]   _zz__4_8_inner_macOut_1;
  wire       [31:0]   _zz__4_8_inner_macOut_2;
  reg        [15:0]   _4_8_inner_activation;
  reg        [15:0]   _4_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_8_inner_macOut;

  assign _zz__zz__4_8_inner_macOut = ($signed(io_mulInput) * $signed(_4_8_inner_activation));
  assign _zz__zz__4_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_8_inner_macOut)) ? 32'h00007fff : _zz__4_8_inner_macOut_2);
  assign _zz__4_8_inner_macOut_2 = (($signed(_zz__4_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_8_inner_activation;
    end else begin
      io_macOut = _4_8_inner_macOut;
    end
  end

  assign _zz__4_8_inner_macOut = ($signed(_zz__zz__4_8_inner_macOut) + $signed(_zz__zz__4_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_8_inner_activation <= 16'h0000;
      _4_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_8_inner_activation <= io_addInput;
      end else begin
        _4_8_inner_macOut <= _zz__4_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_71 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_7_inner_macOut;
  wire       [31:0]   _zz__zz__4_7_inner_macOut_1;
  wire       [31:0]   _zz__4_7_inner_macOut_1;
  wire       [31:0]   _zz__4_7_inner_macOut_2;
  reg        [15:0]   _4_7_inner_activation;
  reg        [15:0]   _4_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_7_inner_macOut;

  assign _zz__zz__4_7_inner_macOut = ($signed(io_mulInput) * $signed(_4_7_inner_activation));
  assign _zz__zz__4_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_7_inner_macOut)) ? 32'h00007fff : _zz__4_7_inner_macOut_2);
  assign _zz__4_7_inner_macOut_2 = (($signed(_zz__4_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_7_inner_activation;
    end else begin
      io_macOut = _4_7_inner_macOut;
    end
  end

  assign _zz__4_7_inner_macOut = ($signed(_zz__zz__4_7_inner_macOut) + $signed(_zz__zz__4_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_7_inner_activation <= 16'h0000;
      _4_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_7_inner_activation <= io_addInput;
      end else begin
        _4_7_inner_macOut <= _zz__4_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_70 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_6_inner_macOut;
  wire       [31:0]   _zz__zz__4_6_inner_macOut_1;
  wire       [31:0]   _zz__4_6_inner_macOut_1;
  wire       [31:0]   _zz__4_6_inner_macOut_2;
  reg        [15:0]   _4_6_inner_activation;
  reg        [15:0]   _4_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_6_inner_macOut;

  assign _zz__zz__4_6_inner_macOut = ($signed(io_mulInput) * $signed(_4_6_inner_activation));
  assign _zz__zz__4_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_6_inner_macOut)) ? 32'h00007fff : _zz__4_6_inner_macOut_2);
  assign _zz__4_6_inner_macOut_2 = (($signed(_zz__4_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_6_inner_activation;
    end else begin
      io_macOut = _4_6_inner_macOut;
    end
  end

  assign _zz__4_6_inner_macOut = ($signed(_zz__zz__4_6_inner_macOut) + $signed(_zz__zz__4_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_6_inner_activation <= 16'h0000;
      _4_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_6_inner_activation <= io_addInput;
      end else begin
        _4_6_inner_macOut <= _zz__4_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_69 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_5_inner_macOut;
  wire       [31:0]   _zz__zz__4_5_inner_macOut_1;
  wire       [31:0]   _zz__4_5_inner_macOut_1;
  wire       [31:0]   _zz__4_5_inner_macOut_2;
  reg        [15:0]   _4_5_inner_activation;
  reg        [15:0]   _4_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_5_inner_macOut;

  assign _zz__zz__4_5_inner_macOut = ($signed(io_mulInput) * $signed(_4_5_inner_activation));
  assign _zz__zz__4_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_5_inner_macOut)) ? 32'h00007fff : _zz__4_5_inner_macOut_2);
  assign _zz__4_5_inner_macOut_2 = (($signed(_zz__4_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_5_inner_activation;
    end else begin
      io_macOut = _4_5_inner_macOut;
    end
  end

  assign _zz__4_5_inner_macOut = ($signed(_zz__zz__4_5_inner_macOut) + $signed(_zz__zz__4_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_5_inner_activation <= 16'h0000;
      _4_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_5_inner_activation <= io_addInput;
      end else begin
        _4_5_inner_macOut <= _zz__4_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_68 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_4_inner_macOut;
  wire       [31:0]   _zz__zz__4_4_inner_macOut_1;
  wire       [31:0]   _zz__4_4_inner_macOut_1;
  wire       [31:0]   _zz__4_4_inner_macOut_2;
  reg        [15:0]   _4_4_inner_activation;
  reg        [15:0]   _4_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_4_inner_macOut;

  assign _zz__zz__4_4_inner_macOut = ($signed(io_mulInput) * $signed(_4_4_inner_activation));
  assign _zz__zz__4_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_4_inner_macOut)) ? 32'h00007fff : _zz__4_4_inner_macOut_2);
  assign _zz__4_4_inner_macOut_2 = (($signed(_zz__4_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_4_inner_activation;
    end else begin
      io_macOut = _4_4_inner_macOut;
    end
  end

  assign _zz__4_4_inner_macOut = ($signed(_zz__zz__4_4_inner_macOut) + $signed(_zz__zz__4_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_4_inner_activation <= 16'h0000;
      _4_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_4_inner_activation <= io_addInput;
      end else begin
        _4_4_inner_macOut <= _zz__4_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_67 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_3_inner_macOut;
  wire       [31:0]   _zz__zz__4_3_inner_macOut_1;
  wire       [31:0]   _zz__4_3_inner_macOut_1;
  wire       [31:0]   _zz__4_3_inner_macOut_2;
  reg        [15:0]   _4_3_inner_activation;
  reg        [15:0]   _4_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_3_inner_macOut;

  assign _zz__zz__4_3_inner_macOut = ($signed(io_mulInput) * $signed(_4_3_inner_activation));
  assign _zz__zz__4_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_3_inner_macOut)) ? 32'h00007fff : _zz__4_3_inner_macOut_2);
  assign _zz__4_3_inner_macOut_2 = (($signed(_zz__4_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_3_inner_activation;
    end else begin
      io_macOut = _4_3_inner_macOut;
    end
  end

  assign _zz__4_3_inner_macOut = ($signed(_zz__zz__4_3_inner_macOut) + $signed(_zz__zz__4_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_3_inner_activation <= 16'h0000;
      _4_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_3_inner_activation <= io_addInput;
      end else begin
        _4_3_inner_macOut <= _zz__4_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_66 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_2_inner_macOut;
  wire       [31:0]   _zz__zz__4_2_inner_macOut_1;
  wire       [31:0]   _zz__4_2_inner_macOut_1;
  wire       [31:0]   _zz__4_2_inner_macOut_2;
  reg        [15:0]   _4_2_inner_activation;
  reg        [15:0]   _4_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_2_inner_macOut;

  assign _zz__zz__4_2_inner_macOut = ($signed(io_mulInput) * $signed(_4_2_inner_activation));
  assign _zz__zz__4_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_2_inner_macOut)) ? 32'h00007fff : _zz__4_2_inner_macOut_2);
  assign _zz__4_2_inner_macOut_2 = (($signed(_zz__4_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_2_inner_activation;
    end else begin
      io_macOut = _4_2_inner_macOut;
    end
  end

  assign _zz__4_2_inner_macOut = ($signed(_zz__zz__4_2_inner_macOut) + $signed(_zz__zz__4_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_2_inner_activation <= 16'h0000;
      _4_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_2_inner_activation <= io_addInput;
      end else begin
        _4_2_inner_macOut <= _zz__4_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_65 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_1_inner_macOut;
  wire       [31:0]   _zz__zz__4_1_inner_macOut_1;
  wire       [31:0]   _zz__4_1_inner_macOut_1;
  wire       [31:0]   _zz__4_1_inner_macOut_2;
  reg        [15:0]   _4_1_inner_activation;
  reg        [15:0]   _4_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_1_inner_macOut;

  assign _zz__zz__4_1_inner_macOut = ($signed(io_mulInput) * $signed(_4_1_inner_activation));
  assign _zz__zz__4_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_1_inner_macOut)) ? 32'h00007fff : _zz__4_1_inner_macOut_2);
  assign _zz__4_1_inner_macOut_2 = (($signed(_zz__4_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_1_inner_activation;
    end else begin
      io_macOut = _4_1_inner_macOut;
    end
  end

  assign _zz__4_1_inner_macOut = ($signed(_zz__zz__4_1_inner_macOut) + $signed(_zz__zz__4_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_1_inner_activation <= 16'h0000;
      _4_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_1_inner_activation <= io_addInput;
      end else begin
        _4_1_inner_macOut <= _zz__4_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_64 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__4_0_inner_macOut;
  wire       [31:0]   _zz__zz__4_0_inner_macOut_1;
  wire       [31:0]   _zz__4_0_inner_macOut_1;
  wire       [31:0]   _zz__4_0_inner_macOut_2;
  reg        [15:0]   _4_0_inner_activation;
  reg        [15:0]   _4_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__4_0_inner_macOut;

  assign _zz__zz__4_0_inner_macOut = ($signed(io_mulInput) * $signed(_4_0_inner_activation));
  assign _zz__zz__4_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__4_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__4_0_inner_macOut)) ? 32'h00007fff : _zz__4_0_inner_macOut_2);
  assign _zz__4_0_inner_macOut_2 = (($signed(_zz__4_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__4_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _4_0_inner_activation;
    end else begin
      io_macOut = _4_0_inner_macOut;
    end
  end

  assign _zz__4_0_inner_macOut = ($signed(_zz__zz__4_0_inner_macOut) + $signed(_zz__zz__4_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _4_0_inner_activation <= 16'h0000;
      _4_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _4_0_inner_activation <= io_addInput;
      end else begin
        _4_0_inner_macOut <= _zz__4_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_63 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_15_inner_macOut;
  wire       [31:0]   _zz__zz__3_15_inner_macOut_1;
  wire       [31:0]   _zz__3_15_inner_macOut_1;
  wire       [31:0]   _zz__3_15_inner_macOut_2;
  reg        [15:0]   _3_15_inner_activation;
  reg        [15:0]   _3_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_15_inner_macOut;

  assign _zz__zz__3_15_inner_macOut = ($signed(io_mulInput) * $signed(_3_15_inner_activation));
  assign _zz__zz__3_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_15_inner_macOut)) ? 32'h00007fff : _zz__3_15_inner_macOut_2);
  assign _zz__3_15_inner_macOut_2 = (($signed(_zz__3_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_15_inner_activation;
    end else begin
      io_macOut = _3_15_inner_macOut;
    end
  end

  assign _zz__3_15_inner_macOut = ($signed(_zz__zz__3_15_inner_macOut) + $signed(_zz__zz__3_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_15_inner_activation <= 16'h0000;
      _3_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_15_inner_activation <= io_addInput;
      end else begin
        _3_15_inner_macOut <= _zz__3_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_62 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_14_inner_macOut;
  wire       [31:0]   _zz__zz__3_14_inner_macOut_1;
  wire       [31:0]   _zz__3_14_inner_macOut_1;
  wire       [31:0]   _zz__3_14_inner_macOut_2;
  reg        [15:0]   _3_14_inner_activation;
  reg        [15:0]   _3_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_14_inner_macOut;

  assign _zz__zz__3_14_inner_macOut = ($signed(io_mulInput) * $signed(_3_14_inner_activation));
  assign _zz__zz__3_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_14_inner_macOut)) ? 32'h00007fff : _zz__3_14_inner_macOut_2);
  assign _zz__3_14_inner_macOut_2 = (($signed(_zz__3_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_14_inner_activation;
    end else begin
      io_macOut = _3_14_inner_macOut;
    end
  end

  assign _zz__3_14_inner_macOut = ($signed(_zz__zz__3_14_inner_macOut) + $signed(_zz__zz__3_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_14_inner_activation <= 16'h0000;
      _3_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_14_inner_activation <= io_addInput;
      end else begin
        _3_14_inner_macOut <= _zz__3_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_61 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_13_inner_macOut;
  wire       [31:0]   _zz__zz__3_13_inner_macOut_1;
  wire       [31:0]   _zz__3_13_inner_macOut_1;
  wire       [31:0]   _zz__3_13_inner_macOut_2;
  reg        [15:0]   _3_13_inner_activation;
  reg        [15:0]   _3_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_13_inner_macOut;

  assign _zz__zz__3_13_inner_macOut = ($signed(io_mulInput) * $signed(_3_13_inner_activation));
  assign _zz__zz__3_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_13_inner_macOut)) ? 32'h00007fff : _zz__3_13_inner_macOut_2);
  assign _zz__3_13_inner_macOut_2 = (($signed(_zz__3_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_13_inner_activation;
    end else begin
      io_macOut = _3_13_inner_macOut;
    end
  end

  assign _zz__3_13_inner_macOut = ($signed(_zz__zz__3_13_inner_macOut) + $signed(_zz__zz__3_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_13_inner_activation <= 16'h0000;
      _3_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_13_inner_activation <= io_addInput;
      end else begin
        _3_13_inner_macOut <= _zz__3_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_60 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_12_inner_macOut;
  wire       [31:0]   _zz__zz__3_12_inner_macOut_1;
  wire       [31:0]   _zz__3_12_inner_macOut_1;
  wire       [31:0]   _zz__3_12_inner_macOut_2;
  reg        [15:0]   _3_12_inner_activation;
  reg        [15:0]   _3_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_12_inner_macOut;

  assign _zz__zz__3_12_inner_macOut = ($signed(io_mulInput) * $signed(_3_12_inner_activation));
  assign _zz__zz__3_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_12_inner_macOut)) ? 32'h00007fff : _zz__3_12_inner_macOut_2);
  assign _zz__3_12_inner_macOut_2 = (($signed(_zz__3_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_12_inner_activation;
    end else begin
      io_macOut = _3_12_inner_macOut;
    end
  end

  assign _zz__3_12_inner_macOut = ($signed(_zz__zz__3_12_inner_macOut) + $signed(_zz__zz__3_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_12_inner_activation <= 16'h0000;
      _3_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_12_inner_activation <= io_addInput;
      end else begin
        _3_12_inner_macOut <= _zz__3_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_59 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_11_inner_macOut;
  wire       [31:0]   _zz__zz__3_11_inner_macOut_1;
  wire       [31:0]   _zz__3_11_inner_macOut_1;
  wire       [31:0]   _zz__3_11_inner_macOut_2;
  reg        [15:0]   _3_11_inner_activation;
  reg        [15:0]   _3_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_11_inner_macOut;

  assign _zz__zz__3_11_inner_macOut = ($signed(io_mulInput) * $signed(_3_11_inner_activation));
  assign _zz__zz__3_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_11_inner_macOut)) ? 32'h00007fff : _zz__3_11_inner_macOut_2);
  assign _zz__3_11_inner_macOut_2 = (($signed(_zz__3_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_11_inner_activation;
    end else begin
      io_macOut = _3_11_inner_macOut;
    end
  end

  assign _zz__3_11_inner_macOut = ($signed(_zz__zz__3_11_inner_macOut) + $signed(_zz__zz__3_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_11_inner_activation <= 16'h0000;
      _3_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_11_inner_activation <= io_addInput;
      end else begin
        _3_11_inner_macOut <= _zz__3_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_58 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_10_inner_macOut;
  wire       [31:0]   _zz__zz__3_10_inner_macOut_1;
  wire       [31:0]   _zz__3_10_inner_macOut_1;
  wire       [31:0]   _zz__3_10_inner_macOut_2;
  reg        [15:0]   _3_10_inner_activation;
  reg        [15:0]   _3_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_10_inner_macOut;

  assign _zz__zz__3_10_inner_macOut = ($signed(io_mulInput) * $signed(_3_10_inner_activation));
  assign _zz__zz__3_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_10_inner_macOut)) ? 32'h00007fff : _zz__3_10_inner_macOut_2);
  assign _zz__3_10_inner_macOut_2 = (($signed(_zz__3_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_10_inner_activation;
    end else begin
      io_macOut = _3_10_inner_macOut;
    end
  end

  assign _zz__3_10_inner_macOut = ($signed(_zz__zz__3_10_inner_macOut) + $signed(_zz__zz__3_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_10_inner_activation <= 16'h0000;
      _3_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_10_inner_activation <= io_addInput;
      end else begin
        _3_10_inner_macOut <= _zz__3_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_57 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_9_inner_macOut;
  wire       [31:0]   _zz__zz__3_9_inner_macOut_1;
  wire       [31:0]   _zz__3_9_inner_macOut_1;
  wire       [31:0]   _zz__3_9_inner_macOut_2;
  reg        [15:0]   _3_9_inner_activation;
  reg        [15:0]   _3_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_9_inner_macOut;

  assign _zz__zz__3_9_inner_macOut = ($signed(io_mulInput) * $signed(_3_9_inner_activation));
  assign _zz__zz__3_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_9_inner_macOut)) ? 32'h00007fff : _zz__3_9_inner_macOut_2);
  assign _zz__3_9_inner_macOut_2 = (($signed(_zz__3_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_9_inner_activation;
    end else begin
      io_macOut = _3_9_inner_macOut;
    end
  end

  assign _zz__3_9_inner_macOut = ($signed(_zz__zz__3_9_inner_macOut) + $signed(_zz__zz__3_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_9_inner_activation <= 16'h0000;
      _3_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_9_inner_activation <= io_addInput;
      end else begin
        _3_9_inner_macOut <= _zz__3_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_56 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_8_inner_macOut;
  wire       [31:0]   _zz__zz__3_8_inner_macOut_1;
  wire       [31:0]   _zz__3_8_inner_macOut_1;
  wire       [31:0]   _zz__3_8_inner_macOut_2;
  reg        [15:0]   _3_8_inner_activation;
  reg        [15:0]   _3_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_8_inner_macOut;

  assign _zz__zz__3_8_inner_macOut = ($signed(io_mulInput) * $signed(_3_8_inner_activation));
  assign _zz__zz__3_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_8_inner_macOut)) ? 32'h00007fff : _zz__3_8_inner_macOut_2);
  assign _zz__3_8_inner_macOut_2 = (($signed(_zz__3_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_8_inner_activation;
    end else begin
      io_macOut = _3_8_inner_macOut;
    end
  end

  assign _zz__3_8_inner_macOut = ($signed(_zz__zz__3_8_inner_macOut) + $signed(_zz__zz__3_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_8_inner_activation <= 16'h0000;
      _3_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_8_inner_activation <= io_addInput;
      end else begin
        _3_8_inner_macOut <= _zz__3_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_55 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_7_inner_macOut;
  wire       [31:0]   _zz__zz__3_7_inner_macOut_1;
  wire       [31:0]   _zz__3_7_inner_macOut_1;
  wire       [31:0]   _zz__3_7_inner_macOut_2;
  reg        [15:0]   _3_7_inner_activation;
  reg        [15:0]   _3_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_7_inner_macOut;

  assign _zz__zz__3_7_inner_macOut = ($signed(io_mulInput) * $signed(_3_7_inner_activation));
  assign _zz__zz__3_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_7_inner_macOut)) ? 32'h00007fff : _zz__3_7_inner_macOut_2);
  assign _zz__3_7_inner_macOut_2 = (($signed(_zz__3_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_7_inner_activation;
    end else begin
      io_macOut = _3_7_inner_macOut;
    end
  end

  assign _zz__3_7_inner_macOut = ($signed(_zz__zz__3_7_inner_macOut) + $signed(_zz__zz__3_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_7_inner_activation <= 16'h0000;
      _3_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_7_inner_activation <= io_addInput;
      end else begin
        _3_7_inner_macOut <= _zz__3_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_54 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_6_inner_macOut;
  wire       [31:0]   _zz__zz__3_6_inner_macOut_1;
  wire       [31:0]   _zz__3_6_inner_macOut_1;
  wire       [31:0]   _zz__3_6_inner_macOut_2;
  reg        [15:0]   _3_6_inner_activation;
  reg        [15:0]   _3_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_6_inner_macOut;

  assign _zz__zz__3_6_inner_macOut = ($signed(io_mulInput) * $signed(_3_6_inner_activation));
  assign _zz__zz__3_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_6_inner_macOut)) ? 32'h00007fff : _zz__3_6_inner_macOut_2);
  assign _zz__3_6_inner_macOut_2 = (($signed(_zz__3_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_6_inner_activation;
    end else begin
      io_macOut = _3_6_inner_macOut;
    end
  end

  assign _zz__3_6_inner_macOut = ($signed(_zz__zz__3_6_inner_macOut) + $signed(_zz__zz__3_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_6_inner_activation <= 16'h0000;
      _3_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_6_inner_activation <= io_addInput;
      end else begin
        _3_6_inner_macOut <= _zz__3_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_53 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_5_inner_macOut;
  wire       [31:0]   _zz__zz__3_5_inner_macOut_1;
  wire       [31:0]   _zz__3_5_inner_macOut_1;
  wire       [31:0]   _zz__3_5_inner_macOut_2;
  reg        [15:0]   _3_5_inner_activation;
  reg        [15:0]   _3_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_5_inner_macOut;

  assign _zz__zz__3_5_inner_macOut = ($signed(io_mulInput) * $signed(_3_5_inner_activation));
  assign _zz__zz__3_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_5_inner_macOut)) ? 32'h00007fff : _zz__3_5_inner_macOut_2);
  assign _zz__3_5_inner_macOut_2 = (($signed(_zz__3_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_5_inner_activation;
    end else begin
      io_macOut = _3_5_inner_macOut;
    end
  end

  assign _zz__3_5_inner_macOut = ($signed(_zz__zz__3_5_inner_macOut) + $signed(_zz__zz__3_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_5_inner_activation <= 16'h0000;
      _3_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_5_inner_activation <= io_addInput;
      end else begin
        _3_5_inner_macOut <= _zz__3_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_52 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_4_inner_macOut;
  wire       [31:0]   _zz__zz__3_4_inner_macOut_1;
  wire       [31:0]   _zz__3_4_inner_macOut_1;
  wire       [31:0]   _zz__3_4_inner_macOut_2;
  reg        [15:0]   _3_4_inner_activation;
  reg        [15:0]   _3_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_4_inner_macOut;

  assign _zz__zz__3_4_inner_macOut = ($signed(io_mulInput) * $signed(_3_4_inner_activation));
  assign _zz__zz__3_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_4_inner_macOut)) ? 32'h00007fff : _zz__3_4_inner_macOut_2);
  assign _zz__3_4_inner_macOut_2 = (($signed(_zz__3_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_4_inner_activation;
    end else begin
      io_macOut = _3_4_inner_macOut;
    end
  end

  assign _zz__3_4_inner_macOut = ($signed(_zz__zz__3_4_inner_macOut) + $signed(_zz__zz__3_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_4_inner_activation <= 16'h0000;
      _3_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_4_inner_activation <= io_addInput;
      end else begin
        _3_4_inner_macOut <= _zz__3_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_51 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_3_inner_macOut;
  wire       [31:0]   _zz__zz__3_3_inner_macOut_1;
  wire       [31:0]   _zz__3_3_inner_macOut_1;
  wire       [31:0]   _zz__3_3_inner_macOut_2;
  reg        [15:0]   _3_3_inner_activation;
  reg        [15:0]   _3_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_3_inner_macOut;

  assign _zz__zz__3_3_inner_macOut = ($signed(io_mulInput) * $signed(_3_3_inner_activation));
  assign _zz__zz__3_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_3_inner_macOut)) ? 32'h00007fff : _zz__3_3_inner_macOut_2);
  assign _zz__3_3_inner_macOut_2 = (($signed(_zz__3_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_3_inner_activation;
    end else begin
      io_macOut = _3_3_inner_macOut;
    end
  end

  assign _zz__3_3_inner_macOut = ($signed(_zz__zz__3_3_inner_macOut) + $signed(_zz__zz__3_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_3_inner_activation <= 16'h0000;
      _3_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_3_inner_activation <= io_addInput;
      end else begin
        _3_3_inner_macOut <= _zz__3_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_50 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_2_inner_macOut;
  wire       [31:0]   _zz__zz__3_2_inner_macOut_1;
  wire       [31:0]   _zz__3_2_inner_macOut_1;
  wire       [31:0]   _zz__3_2_inner_macOut_2;
  reg        [15:0]   _3_2_inner_activation;
  reg        [15:0]   _3_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_2_inner_macOut;

  assign _zz__zz__3_2_inner_macOut = ($signed(io_mulInput) * $signed(_3_2_inner_activation));
  assign _zz__zz__3_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_2_inner_macOut)) ? 32'h00007fff : _zz__3_2_inner_macOut_2);
  assign _zz__3_2_inner_macOut_2 = (($signed(_zz__3_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_2_inner_activation;
    end else begin
      io_macOut = _3_2_inner_macOut;
    end
  end

  assign _zz__3_2_inner_macOut = ($signed(_zz__zz__3_2_inner_macOut) + $signed(_zz__zz__3_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_2_inner_activation <= 16'h0000;
      _3_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_2_inner_activation <= io_addInput;
      end else begin
        _3_2_inner_macOut <= _zz__3_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_49 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_1_inner_macOut;
  wire       [31:0]   _zz__zz__3_1_inner_macOut_1;
  wire       [31:0]   _zz__3_1_inner_macOut_1;
  wire       [31:0]   _zz__3_1_inner_macOut_2;
  reg        [15:0]   _3_1_inner_activation;
  reg        [15:0]   _3_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_1_inner_macOut;

  assign _zz__zz__3_1_inner_macOut = ($signed(io_mulInput) * $signed(_3_1_inner_activation));
  assign _zz__zz__3_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_1_inner_macOut)) ? 32'h00007fff : _zz__3_1_inner_macOut_2);
  assign _zz__3_1_inner_macOut_2 = (($signed(_zz__3_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_1_inner_activation;
    end else begin
      io_macOut = _3_1_inner_macOut;
    end
  end

  assign _zz__3_1_inner_macOut = ($signed(_zz__zz__3_1_inner_macOut) + $signed(_zz__zz__3_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_1_inner_activation <= 16'h0000;
      _3_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_1_inner_activation <= io_addInput;
      end else begin
        _3_1_inner_macOut <= _zz__3_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_48 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__3_0_inner_macOut;
  wire       [31:0]   _zz__zz__3_0_inner_macOut_1;
  wire       [31:0]   _zz__3_0_inner_macOut_1;
  wire       [31:0]   _zz__3_0_inner_macOut_2;
  reg        [15:0]   _3_0_inner_activation;
  reg        [15:0]   _3_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__3_0_inner_macOut;

  assign _zz__zz__3_0_inner_macOut = ($signed(io_mulInput) * $signed(_3_0_inner_activation));
  assign _zz__zz__3_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__3_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__3_0_inner_macOut)) ? 32'h00007fff : _zz__3_0_inner_macOut_2);
  assign _zz__3_0_inner_macOut_2 = (($signed(_zz__3_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__3_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _3_0_inner_activation;
    end else begin
      io_macOut = _3_0_inner_macOut;
    end
  end

  assign _zz__3_0_inner_macOut = ($signed(_zz__zz__3_0_inner_macOut) + $signed(_zz__zz__3_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _3_0_inner_activation <= 16'h0000;
      _3_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _3_0_inner_activation <= io_addInput;
      end else begin
        _3_0_inner_macOut <= _zz__3_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_47 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_15_inner_macOut;
  wire       [31:0]   _zz__zz__2_15_inner_macOut_1;
  wire       [31:0]   _zz__2_15_inner_macOut_1;
  wire       [31:0]   _zz__2_15_inner_macOut_2;
  reg        [15:0]   _2_15_inner_activation;
  reg        [15:0]   _2_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_15_inner_macOut;

  assign _zz__zz__2_15_inner_macOut = ($signed(io_mulInput) * $signed(_2_15_inner_activation));
  assign _zz__zz__2_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_15_inner_macOut)) ? 32'h00007fff : _zz__2_15_inner_macOut_2);
  assign _zz__2_15_inner_macOut_2 = (($signed(_zz__2_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_15_inner_activation;
    end else begin
      io_macOut = _2_15_inner_macOut;
    end
  end

  assign _zz__2_15_inner_macOut = ($signed(_zz__zz__2_15_inner_macOut) + $signed(_zz__zz__2_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_15_inner_activation <= 16'h0000;
      _2_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_15_inner_activation <= io_addInput;
      end else begin
        _2_15_inner_macOut <= _zz__2_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_46 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_14_inner_macOut;
  wire       [31:0]   _zz__zz__2_14_inner_macOut_1;
  wire       [31:0]   _zz__2_14_inner_macOut_1;
  wire       [31:0]   _zz__2_14_inner_macOut_2;
  reg        [15:0]   _2_14_inner_activation;
  reg        [15:0]   _2_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_14_inner_macOut;

  assign _zz__zz__2_14_inner_macOut = ($signed(io_mulInput) * $signed(_2_14_inner_activation));
  assign _zz__zz__2_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_14_inner_macOut)) ? 32'h00007fff : _zz__2_14_inner_macOut_2);
  assign _zz__2_14_inner_macOut_2 = (($signed(_zz__2_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_14_inner_activation;
    end else begin
      io_macOut = _2_14_inner_macOut;
    end
  end

  assign _zz__2_14_inner_macOut = ($signed(_zz__zz__2_14_inner_macOut) + $signed(_zz__zz__2_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_14_inner_activation <= 16'h0000;
      _2_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_14_inner_activation <= io_addInput;
      end else begin
        _2_14_inner_macOut <= _zz__2_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_45 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_13_inner_macOut;
  wire       [31:0]   _zz__zz__2_13_inner_macOut_1;
  wire       [31:0]   _zz__2_13_inner_macOut_1;
  wire       [31:0]   _zz__2_13_inner_macOut_2;
  reg        [15:0]   _2_13_inner_activation;
  reg        [15:0]   _2_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_13_inner_macOut;

  assign _zz__zz__2_13_inner_macOut = ($signed(io_mulInput) * $signed(_2_13_inner_activation));
  assign _zz__zz__2_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_13_inner_macOut)) ? 32'h00007fff : _zz__2_13_inner_macOut_2);
  assign _zz__2_13_inner_macOut_2 = (($signed(_zz__2_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_13_inner_activation;
    end else begin
      io_macOut = _2_13_inner_macOut;
    end
  end

  assign _zz__2_13_inner_macOut = ($signed(_zz__zz__2_13_inner_macOut) + $signed(_zz__zz__2_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_13_inner_activation <= 16'h0000;
      _2_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_13_inner_activation <= io_addInput;
      end else begin
        _2_13_inner_macOut <= _zz__2_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_44 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_12_inner_macOut;
  wire       [31:0]   _zz__zz__2_12_inner_macOut_1;
  wire       [31:0]   _zz__2_12_inner_macOut_1;
  wire       [31:0]   _zz__2_12_inner_macOut_2;
  reg        [15:0]   _2_12_inner_activation;
  reg        [15:0]   _2_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_12_inner_macOut;

  assign _zz__zz__2_12_inner_macOut = ($signed(io_mulInput) * $signed(_2_12_inner_activation));
  assign _zz__zz__2_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_12_inner_macOut)) ? 32'h00007fff : _zz__2_12_inner_macOut_2);
  assign _zz__2_12_inner_macOut_2 = (($signed(_zz__2_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_12_inner_activation;
    end else begin
      io_macOut = _2_12_inner_macOut;
    end
  end

  assign _zz__2_12_inner_macOut = ($signed(_zz__zz__2_12_inner_macOut) + $signed(_zz__zz__2_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_12_inner_activation <= 16'h0000;
      _2_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_12_inner_activation <= io_addInput;
      end else begin
        _2_12_inner_macOut <= _zz__2_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_43 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_11_inner_macOut;
  wire       [31:0]   _zz__zz__2_11_inner_macOut_1;
  wire       [31:0]   _zz__2_11_inner_macOut_1;
  wire       [31:0]   _zz__2_11_inner_macOut_2;
  reg        [15:0]   _2_11_inner_activation;
  reg        [15:0]   _2_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_11_inner_macOut;

  assign _zz__zz__2_11_inner_macOut = ($signed(io_mulInput) * $signed(_2_11_inner_activation));
  assign _zz__zz__2_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_11_inner_macOut)) ? 32'h00007fff : _zz__2_11_inner_macOut_2);
  assign _zz__2_11_inner_macOut_2 = (($signed(_zz__2_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_11_inner_activation;
    end else begin
      io_macOut = _2_11_inner_macOut;
    end
  end

  assign _zz__2_11_inner_macOut = ($signed(_zz__zz__2_11_inner_macOut) + $signed(_zz__zz__2_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_11_inner_activation <= 16'h0000;
      _2_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_11_inner_activation <= io_addInput;
      end else begin
        _2_11_inner_macOut <= _zz__2_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_42 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_10_inner_macOut;
  wire       [31:0]   _zz__zz__2_10_inner_macOut_1;
  wire       [31:0]   _zz__2_10_inner_macOut_1;
  wire       [31:0]   _zz__2_10_inner_macOut_2;
  reg        [15:0]   _2_10_inner_activation;
  reg        [15:0]   _2_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_10_inner_macOut;

  assign _zz__zz__2_10_inner_macOut = ($signed(io_mulInput) * $signed(_2_10_inner_activation));
  assign _zz__zz__2_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_10_inner_macOut)) ? 32'h00007fff : _zz__2_10_inner_macOut_2);
  assign _zz__2_10_inner_macOut_2 = (($signed(_zz__2_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_10_inner_activation;
    end else begin
      io_macOut = _2_10_inner_macOut;
    end
  end

  assign _zz__2_10_inner_macOut = ($signed(_zz__zz__2_10_inner_macOut) + $signed(_zz__zz__2_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_10_inner_activation <= 16'h0000;
      _2_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_10_inner_activation <= io_addInput;
      end else begin
        _2_10_inner_macOut <= _zz__2_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_41 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_9_inner_macOut;
  wire       [31:0]   _zz__zz__2_9_inner_macOut_1;
  wire       [31:0]   _zz__2_9_inner_macOut_1;
  wire       [31:0]   _zz__2_9_inner_macOut_2;
  reg        [15:0]   _2_9_inner_activation;
  reg        [15:0]   _2_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_9_inner_macOut;

  assign _zz__zz__2_9_inner_macOut = ($signed(io_mulInput) * $signed(_2_9_inner_activation));
  assign _zz__zz__2_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_9_inner_macOut)) ? 32'h00007fff : _zz__2_9_inner_macOut_2);
  assign _zz__2_9_inner_macOut_2 = (($signed(_zz__2_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_9_inner_activation;
    end else begin
      io_macOut = _2_9_inner_macOut;
    end
  end

  assign _zz__2_9_inner_macOut = ($signed(_zz__zz__2_9_inner_macOut) + $signed(_zz__zz__2_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_9_inner_activation <= 16'h0000;
      _2_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_9_inner_activation <= io_addInput;
      end else begin
        _2_9_inner_macOut <= _zz__2_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_40 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_8_inner_macOut;
  wire       [31:0]   _zz__zz__2_8_inner_macOut_1;
  wire       [31:0]   _zz__2_8_inner_macOut_1;
  wire       [31:0]   _zz__2_8_inner_macOut_2;
  reg        [15:0]   _2_8_inner_activation;
  reg        [15:0]   _2_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_8_inner_macOut;

  assign _zz__zz__2_8_inner_macOut = ($signed(io_mulInput) * $signed(_2_8_inner_activation));
  assign _zz__zz__2_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_8_inner_macOut)) ? 32'h00007fff : _zz__2_8_inner_macOut_2);
  assign _zz__2_8_inner_macOut_2 = (($signed(_zz__2_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_8_inner_activation;
    end else begin
      io_macOut = _2_8_inner_macOut;
    end
  end

  assign _zz__2_8_inner_macOut = ($signed(_zz__zz__2_8_inner_macOut) + $signed(_zz__zz__2_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_8_inner_activation <= 16'h0000;
      _2_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_8_inner_activation <= io_addInput;
      end else begin
        _2_8_inner_macOut <= _zz__2_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_39 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_7_inner_macOut;
  wire       [31:0]   _zz__zz__2_7_inner_macOut_1;
  wire       [31:0]   _zz__2_7_inner_macOut_1;
  wire       [31:0]   _zz__2_7_inner_macOut_2;
  reg        [15:0]   _2_7_inner_activation;
  reg        [15:0]   _2_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_7_inner_macOut;

  assign _zz__zz__2_7_inner_macOut = ($signed(io_mulInput) * $signed(_2_7_inner_activation));
  assign _zz__zz__2_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_7_inner_macOut)) ? 32'h00007fff : _zz__2_7_inner_macOut_2);
  assign _zz__2_7_inner_macOut_2 = (($signed(_zz__2_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_7_inner_activation;
    end else begin
      io_macOut = _2_7_inner_macOut;
    end
  end

  assign _zz__2_7_inner_macOut = ($signed(_zz__zz__2_7_inner_macOut) + $signed(_zz__zz__2_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_7_inner_activation <= 16'h0000;
      _2_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_7_inner_activation <= io_addInput;
      end else begin
        _2_7_inner_macOut <= _zz__2_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_38 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_6_inner_macOut;
  wire       [31:0]   _zz__zz__2_6_inner_macOut_1;
  wire       [31:0]   _zz__2_6_inner_macOut_1;
  wire       [31:0]   _zz__2_6_inner_macOut_2;
  reg        [15:0]   _2_6_inner_activation;
  reg        [15:0]   _2_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_6_inner_macOut;

  assign _zz__zz__2_6_inner_macOut = ($signed(io_mulInput) * $signed(_2_6_inner_activation));
  assign _zz__zz__2_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_6_inner_macOut)) ? 32'h00007fff : _zz__2_6_inner_macOut_2);
  assign _zz__2_6_inner_macOut_2 = (($signed(_zz__2_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_6_inner_activation;
    end else begin
      io_macOut = _2_6_inner_macOut;
    end
  end

  assign _zz__2_6_inner_macOut = ($signed(_zz__zz__2_6_inner_macOut) + $signed(_zz__zz__2_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_6_inner_activation <= 16'h0000;
      _2_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_6_inner_activation <= io_addInput;
      end else begin
        _2_6_inner_macOut <= _zz__2_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_37 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_5_inner_macOut;
  wire       [31:0]   _zz__zz__2_5_inner_macOut_1;
  wire       [31:0]   _zz__2_5_inner_macOut_1;
  wire       [31:0]   _zz__2_5_inner_macOut_2;
  reg        [15:0]   _2_5_inner_activation;
  reg        [15:0]   _2_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_5_inner_macOut;

  assign _zz__zz__2_5_inner_macOut = ($signed(io_mulInput) * $signed(_2_5_inner_activation));
  assign _zz__zz__2_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_5_inner_macOut)) ? 32'h00007fff : _zz__2_5_inner_macOut_2);
  assign _zz__2_5_inner_macOut_2 = (($signed(_zz__2_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_5_inner_activation;
    end else begin
      io_macOut = _2_5_inner_macOut;
    end
  end

  assign _zz__2_5_inner_macOut = ($signed(_zz__zz__2_5_inner_macOut) + $signed(_zz__zz__2_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_5_inner_activation <= 16'h0000;
      _2_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_5_inner_activation <= io_addInput;
      end else begin
        _2_5_inner_macOut <= _zz__2_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_36 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_4_inner_macOut;
  wire       [31:0]   _zz__zz__2_4_inner_macOut_1;
  wire       [31:0]   _zz__2_4_inner_macOut_1;
  wire       [31:0]   _zz__2_4_inner_macOut_2;
  reg        [15:0]   _2_4_inner_activation;
  reg        [15:0]   _2_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_4_inner_macOut;

  assign _zz__zz__2_4_inner_macOut = ($signed(io_mulInput) * $signed(_2_4_inner_activation));
  assign _zz__zz__2_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_4_inner_macOut)) ? 32'h00007fff : _zz__2_4_inner_macOut_2);
  assign _zz__2_4_inner_macOut_2 = (($signed(_zz__2_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_4_inner_activation;
    end else begin
      io_macOut = _2_4_inner_macOut;
    end
  end

  assign _zz__2_4_inner_macOut = ($signed(_zz__zz__2_4_inner_macOut) + $signed(_zz__zz__2_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_4_inner_activation <= 16'h0000;
      _2_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_4_inner_activation <= io_addInput;
      end else begin
        _2_4_inner_macOut <= _zz__2_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_35 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_3_inner_macOut;
  wire       [31:0]   _zz__zz__2_3_inner_macOut_1;
  wire       [31:0]   _zz__2_3_inner_macOut_1;
  wire       [31:0]   _zz__2_3_inner_macOut_2;
  reg        [15:0]   _2_3_inner_activation;
  reg        [15:0]   _2_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_3_inner_macOut;

  assign _zz__zz__2_3_inner_macOut = ($signed(io_mulInput) * $signed(_2_3_inner_activation));
  assign _zz__zz__2_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_3_inner_macOut)) ? 32'h00007fff : _zz__2_3_inner_macOut_2);
  assign _zz__2_3_inner_macOut_2 = (($signed(_zz__2_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_3_inner_activation;
    end else begin
      io_macOut = _2_3_inner_macOut;
    end
  end

  assign _zz__2_3_inner_macOut = ($signed(_zz__zz__2_3_inner_macOut) + $signed(_zz__zz__2_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_3_inner_activation <= 16'h0000;
      _2_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_3_inner_activation <= io_addInput;
      end else begin
        _2_3_inner_macOut <= _zz__2_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_34 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_2_inner_macOut;
  wire       [31:0]   _zz__zz__2_2_inner_macOut_1;
  wire       [31:0]   _zz__2_2_inner_macOut_1;
  wire       [31:0]   _zz__2_2_inner_macOut_2;
  reg        [15:0]   _2_2_inner_activation;
  reg        [15:0]   _2_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_2_inner_macOut;

  assign _zz__zz__2_2_inner_macOut = ($signed(io_mulInput) * $signed(_2_2_inner_activation));
  assign _zz__zz__2_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_2_inner_macOut)) ? 32'h00007fff : _zz__2_2_inner_macOut_2);
  assign _zz__2_2_inner_macOut_2 = (($signed(_zz__2_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_2_inner_activation;
    end else begin
      io_macOut = _2_2_inner_macOut;
    end
  end

  assign _zz__2_2_inner_macOut = ($signed(_zz__zz__2_2_inner_macOut) + $signed(_zz__zz__2_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_2_inner_activation <= 16'h0000;
      _2_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_2_inner_activation <= io_addInput;
      end else begin
        _2_2_inner_macOut <= _zz__2_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_33 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_1_inner_macOut;
  wire       [31:0]   _zz__zz__2_1_inner_macOut_1;
  wire       [31:0]   _zz__2_1_inner_macOut_1;
  wire       [31:0]   _zz__2_1_inner_macOut_2;
  reg        [15:0]   _2_1_inner_activation;
  reg        [15:0]   _2_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_1_inner_macOut;

  assign _zz__zz__2_1_inner_macOut = ($signed(io_mulInput) * $signed(_2_1_inner_activation));
  assign _zz__zz__2_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_1_inner_macOut)) ? 32'h00007fff : _zz__2_1_inner_macOut_2);
  assign _zz__2_1_inner_macOut_2 = (($signed(_zz__2_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_1_inner_activation;
    end else begin
      io_macOut = _2_1_inner_macOut;
    end
  end

  assign _zz__2_1_inner_macOut = ($signed(_zz__zz__2_1_inner_macOut) + $signed(_zz__zz__2_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_1_inner_activation <= 16'h0000;
      _2_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_1_inner_activation <= io_addInput;
      end else begin
        _2_1_inner_macOut <= _zz__2_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_32 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__2_0_inner_macOut;
  wire       [31:0]   _zz__zz__2_0_inner_macOut_1;
  wire       [31:0]   _zz__2_0_inner_macOut_1;
  wire       [31:0]   _zz__2_0_inner_macOut_2;
  reg        [15:0]   _2_0_inner_activation;
  reg        [15:0]   _2_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__2_0_inner_macOut;

  assign _zz__zz__2_0_inner_macOut = ($signed(io_mulInput) * $signed(_2_0_inner_activation));
  assign _zz__zz__2_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__2_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__2_0_inner_macOut)) ? 32'h00007fff : _zz__2_0_inner_macOut_2);
  assign _zz__2_0_inner_macOut_2 = (($signed(_zz__2_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__2_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _2_0_inner_activation;
    end else begin
      io_macOut = _2_0_inner_macOut;
    end
  end

  assign _zz__2_0_inner_macOut = ($signed(_zz__zz__2_0_inner_macOut) + $signed(_zz__zz__2_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _2_0_inner_activation <= 16'h0000;
      _2_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _2_0_inner_activation <= io_addInput;
      end else begin
        _2_0_inner_macOut <= _zz__2_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_31 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_15_inner_macOut;
  wire       [31:0]   _zz__zz__1_15_inner_macOut_1;
  wire       [31:0]   _zz__1_15_inner_macOut_1;
  wire       [31:0]   _zz__1_15_inner_macOut_2;
  reg        [15:0]   _1_15_inner_activation;
  reg        [15:0]   _1_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_15_inner_macOut;

  assign _zz__zz__1_15_inner_macOut = ($signed(io_mulInput) * $signed(_1_15_inner_activation));
  assign _zz__zz__1_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_15_inner_macOut)) ? 32'h00007fff : _zz__1_15_inner_macOut_2);
  assign _zz__1_15_inner_macOut_2 = (($signed(_zz__1_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_15_inner_activation;
    end else begin
      io_macOut = _1_15_inner_macOut;
    end
  end

  assign _zz__1_15_inner_macOut = ($signed(_zz__zz__1_15_inner_macOut) + $signed(_zz__zz__1_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_15_inner_activation <= 16'h0000;
      _1_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_15_inner_activation <= io_addInput;
      end else begin
        _1_15_inner_macOut <= _zz__1_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_30 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_14_inner_macOut;
  wire       [31:0]   _zz__zz__1_14_inner_macOut_1;
  wire       [31:0]   _zz__1_14_inner_macOut_1;
  wire       [31:0]   _zz__1_14_inner_macOut_2;
  reg        [15:0]   _1_14_inner_activation;
  reg        [15:0]   _1_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_14_inner_macOut;

  assign _zz__zz__1_14_inner_macOut = ($signed(io_mulInput) * $signed(_1_14_inner_activation));
  assign _zz__zz__1_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_14_inner_macOut)) ? 32'h00007fff : _zz__1_14_inner_macOut_2);
  assign _zz__1_14_inner_macOut_2 = (($signed(_zz__1_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_14_inner_activation;
    end else begin
      io_macOut = _1_14_inner_macOut;
    end
  end

  assign _zz__1_14_inner_macOut = ($signed(_zz__zz__1_14_inner_macOut) + $signed(_zz__zz__1_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_14_inner_activation <= 16'h0000;
      _1_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_14_inner_activation <= io_addInput;
      end else begin
        _1_14_inner_macOut <= _zz__1_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_29 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_13_inner_macOut;
  wire       [31:0]   _zz__zz__1_13_inner_macOut_1;
  wire       [31:0]   _zz__1_13_inner_macOut_1;
  wire       [31:0]   _zz__1_13_inner_macOut_2;
  reg        [15:0]   _1_13_inner_activation;
  reg        [15:0]   _1_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_13_inner_macOut;

  assign _zz__zz__1_13_inner_macOut = ($signed(io_mulInput) * $signed(_1_13_inner_activation));
  assign _zz__zz__1_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_13_inner_macOut)) ? 32'h00007fff : _zz__1_13_inner_macOut_2);
  assign _zz__1_13_inner_macOut_2 = (($signed(_zz__1_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_13_inner_activation;
    end else begin
      io_macOut = _1_13_inner_macOut;
    end
  end

  assign _zz__1_13_inner_macOut = ($signed(_zz__zz__1_13_inner_macOut) + $signed(_zz__zz__1_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_13_inner_activation <= 16'h0000;
      _1_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_13_inner_activation <= io_addInput;
      end else begin
        _1_13_inner_macOut <= _zz__1_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_28 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_12_inner_macOut;
  wire       [31:0]   _zz__zz__1_12_inner_macOut_1;
  wire       [31:0]   _zz__1_12_inner_macOut_1;
  wire       [31:0]   _zz__1_12_inner_macOut_2;
  reg        [15:0]   _1_12_inner_activation;
  reg        [15:0]   _1_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_12_inner_macOut;

  assign _zz__zz__1_12_inner_macOut = ($signed(io_mulInput) * $signed(_1_12_inner_activation));
  assign _zz__zz__1_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_12_inner_macOut)) ? 32'h00007fff : _zz__1_12_inner_macOut_2);
  assign _zz__1_12_inner_macOut_2 = (($signed(_zz__1_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_12_inner_activation;
    end else begin
      io_macOut = _1_12_inner_macOut;
    end
  end

  assign _zz__1_12_inner_macOut = ($signed(_zz__zz__1_12_inner_macOut) + $signed(_zz__zz__1_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_12_inner_activation <= 16'h0000;
      _1_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_12_inner_activation <= io_addInput;
      end else begin
        _1_12_inner_macOut <= _zz__1_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_27 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_11_inner_macOut;
  wire       [31:0]   _zz__zz__1_11_inner_macOut_1;
  wire       [31:0]   _zz__1_11_inner_macOut_1;
  wire       [31:0]   _zz__1_11_inner_macOut_2;
  reg        [15:0]   _1_11_inner_activation;
  reg        [15:0]   _1_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_11_inner_macOut;

  assign _zz__zz__1_11_inner_macOut = ($signed(io_mulInput) * $signed(_1_11_inner_activation));
  assign _zz__zz__1_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_11_inner_macOut)) ? 32'h00007fff : _zz__1_11_inner_macOut_2);
  assign _zz__1_11_inner_macOut_2 = (($signed(_zz__1_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_11_inner_activation;
    end else begin
      io_macOut = _1_11_inner_macOut;
    end
  end

  assign _zz__1_11_inner_macOut = ($signed(_zz__zz__1_11_inner_macOut) + $signed(_zz__zz__1_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_11_inner_activation <= 16'h0000;
      _1_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_11_inner_activation <= io_addInput;
      end else begin
        _1_11_inner_macOut <= _zz__1_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_26 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_10_inner_macOut;
  wire       [31:0]   _zz__zz__1_10_inner_macOut_1;
  wire       [31:0]   _zz__1_10_inner_macOut_1;
  wire       [31:0]   _zz__1_10_inner_macOut_2;
  reg        [15:0]   _1_10_inner_activation;
  reg        [15:0]   _1_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_10_inner_macOut;

  assign _zz__zz__1_10_inner_macOut = ($signed(io_mulInput) * $signed(_1_10_inner_activation));
  assign _zz__zz__1_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_10_inner_macOut)) ? 32'h00007fff : _zz__1_10_inner_macOut_2);
  assign _zz__1_10_inner_macOut_2 = (($signed(_zz__1_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_10_inner_activation;
    end else begin
      io_macOut = _1_10_inner_macOut;
    end
  end

  assign _zz__1_10_inner_macOut = ($signed(_zz__zz__1_10_inner_macOut) + $signed(_zz__zz__1_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_10_inner_activation <= 16'h0000;
      _1_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_10_inner_activation <= io_addInput;
      end else begin
        _1_10_inner_macOut <= _zz__1_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_25 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_9_inner_macOut;
  wire       [31:0]   _zz__zz__1_9_inner_macOut_1;
  wire       [31:0]   _zz__1_9_inner_macOut_1;
  wire       [31:0]   _zz__1_9_inner_macOut_2;
  reg        [15:0]   _1_9_inner_activation;
  reg        [15:0]   _1_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_9_inner_macOut;

  assign _zz__zz__1_9_inner_macOut = ($signed(io_mulInput) * $signed(_1_9_inner_activation));
  assign _zz__zz__1_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_9_inner_macOut)) ? 32'h00007fff : _zz__1_9_inner_macOut_2);
  assign _zz__1_9_inner_macOut_2 = (($signed(_zz__1_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_9_inner_activation;
    end else begin
      io_macOut = _1_9_inner_macOut;
    end
  end

  assign _zz__1_9_inner_macOut = ($signed(_zz__zz__1_9_inner_macOut) + $signed(_zz__zz__1_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_9_inner_activation <= 16'h0000;
      _1_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_9_inner_activation <= io_addInput;
      end else begin
        _1_9_inner_macOut <= _zz__1_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_24 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_8_inner_macOut;
  wire       [31:0]   _zz__zz__1_8_inner_macOut_1;
  wire       [31:0]   _zz__1_8_inner_macOut_1;
  wire       [31:0]   _zz__1_8_inner_macOut_2;
  reg        [15:0]   _1_8_inner_activation;
  reg        [15:0]   _1_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_8_inner_macOut;

  assign _zz__zz__1_8_inner_macOut = ($signed(io_mulInput) * $signed(_1_8_inner_activation));
  assign _zz__zz__1_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_8_inner_macOut)) ? 32'h00007fff : _zz__1_8_inner_macOut_2);
  assign _zz__1_8_inner_macOut_2 = (($signed(_zz__1_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_8_inner_activation;
    end else begin
      io_macOut = _1_8_inner_macOut;
    end
  end

  assign _zz__1_8_inner_macOut = ($signed(_zz__zz__1_8_inner_macOut) + $signed(_zz__zz__1_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_8_inner_activation <= 16'h0000;
      _1_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_8_inner_activation <= io_addInput;
      end else begin
        _1_8_inner_macOut <= _zz__1_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_23 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_7_inner_macOut;
  wire       [31:0]   _zz__zz__1_7_inner_macOut_1;
  wire       [31:0]   _zz__1_7_inner_macOut_1;
  wire       [31:0]   _zz__1_7_inner_macOut_2;
  reg        [15:0]   _1_7_inner_activation;
  reg        [15:0]   _1_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_7_inner_macOut;

  assign _zz__zz__1_7_inner_macOut = ($signed(io_mulInput) * $signed(_1_7_inner_activation));
  assign _zz__zz__1_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_7_inner_macOut)) ? 32'h00007fff : _zz__1_7_inner_macOut_2);
  assign _zz__1_7_inner_macOut_2 = (($signed(_zz__1_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_7_inner_activation;
    end else begin
      io_macOut = _1_7_inner_macOut;
    end
  end

  assign _zz__1_7_inner_macOut = ($signed(_zz__zz__1_7_inner_macOut) + $signed(_zz__zz__1_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_7_inner_activation <= 16'h0000;
      _1_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_7_inner_activation <= io_addInput;
      end else begin
        _1_7_inner_macOut <= _zz__1_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_22 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_6_inner_macOut;
  wire       [31:0]   _zz__zz__1_6_inner_macOut_1;
  wire       [31:0]   _zz__1_6_inner_macOut_1;
  wire       [31:0]   _zz__1_6_inner_macOut_2;
  reg        [15:0]   _1_6_inner_activation;
  reg        [15:0]   _1_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_6_inner_macOut;

  assign _zz__zz__1_6_inner_macOut = ($signed(io_mulInput) * $signed(_1_6_inner_activation));
  assign _zz__zz__1_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_6_inner_macOut)) ? 32'h00007fff : _zz__1_6_inner_macOut_2);
  assign _zz__1_6_inner_macOut_2 = (($signed(_zz__1_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_6_inner_activation;
    end else begin
      io_macOut = _1_6_inner_macOut;
    end
  end

  assign _zz__1_6_inner_macOut = ($signed(_zz__zz__1_6_inner_macOut) + $signed(_zz__zz__1_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_6_inner_activation <= 16'h0000;
      _1_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_6_inner_activation <= io_addInput;
      end else begin
        _1_6_inner_macOut <= _zz__1_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_21 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_5_inner_macOut;
  wire       [31:0]   _zz__zz__1_5_inner_macOut_1;
  wire       [31:0]   _zz__1_5_inner_macOut_1;
  wire       [31:0]   _zz__1_5_inner_macOut_2;
  reg        [15:0]   _1_5_inner_activation;
  reg        [15:0]   _1_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_5_inner_macOut;

  assign _zz__zz__1_5_inner_macOut = ($signed(io_mulInput) * $signed(_1_5_inner_activation));
  assign _zz__zz__1_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_5_inner_macOut)) ? 32'h00007fff : _zz__1_5_inner_macOut_2);
  assign _zz__1_5_inner_macOut_2 = (($signed(_zz__1_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_5_inner_activation;
    end else begin
      io_macOut = _1_5_inner_macOut;
    end
  end

  assign _zz__1_5_inner_macOut = ($signed(_zz__zz__1_5_inner_macOut) + $signed(_zz__zz__1_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_5_inner_activation <= 16'h0000;
      _1_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_5_inner_activation <= io_addInput;
      end else begin
        _1_5_inner_macOut <= _zz__1_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_20 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_4_inner_macOut;
  wire       [31:0]   _zz__zz__1_4_inner_macOut_1;
  wire       [31:0]   _zz__1_4_inner_macOut_1;
  wire       [31:0]   _zz__1_4_inner_macOut_2;
  reg        [15:0]   _1_4_inner_activation;
  reg        [15:0]   _1_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_4_inner_macOut;

  assign _zz__zz__1_4_inner_macOut = ($signed(io_mulInput) * $signed(_1_4_inner_activation));
  assign _zz__zz__1_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_4_inner_macOut)) ? 32'h00007fff : _zz__1_4_inner_macOut_2);
  assign _zz__1_4_inner_macOut_2 = (($signed(_zz__1_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_4_inner_activation;
    end else begin
      io_macOut = _1_4_inner_macOut;
    end
  end

  assign _zz__1_4_inner_macOut = ($signed(_zz__zz__1_4_inner_macOut) + $signed(_zz__zz__1_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_4_inner_activation <= 16'h0000;
      _1_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_4_inner_activation <= io_addInput;
      end else begin
        _1_4_inner_macOut <= _zz__1_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_19 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_3_inner_macOut;
  wire       [31:0]   _zz__zz__1_3_inner_macOut_1;
  wire       [31:0]   _zz__1_3_inner_macOut_1;
  wire       [31:0]   _zz__1_3_inner_macOut_2;
  reg        [15:0]   _1_3_inner_activation;
  reg        [15:0]   _1_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_3_inner_macOut;

  assign _zz__zz__1_3_inner_macOut = ($signed(io_mulInput) * $signed(_1_3_inner_activation));
  assign _zz__zz__1_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_3_inner_macOut)) ? 32'h00007fff : _zz__1_3_inner_macOut_2);
  assign _zz__1_3_inner_macOut_2 = (($signed(_zz__1_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_3_inner_activation;
    end else begin
      io_macOut = _1_3_inner_macOut;
    end
  end

  assign _zz__1_3_inner_macOut = ($signed(_zz__zz__1_3_inner_macOut) + $signed(_zz__zz__1_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_3_inner_activation <= 16'h0000;
      _1_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_3_inner_activation <= io_addInput;
      end else begin
        _1_3_inner_macOut <= _zz__1_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_18 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_2_inner_macOut;
  wire       [31:0]   _zz__zz__1_2_inner_macOut_1;
  wire       [31:0]   _zz__1_2_inner_macOut_1;
  wire       [31:0]   _zz__1_2_inner_macOut_2;
  reg        [15:0]   _1_2_inner_activation;
  reg        [15:0]   _1_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_2_inner_macOut;

  assign _zz__zz__1_2_inner_macOut = ($signed(io_mulInput) * $signed(_1_2_inner_activation));
  assign _zz__zz__1_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_2_inner_macOut)) ? 32'h00007fff : _zz__1_2_inner_macOut_2);
  assign _zz__1_2_inner_macOut_2 = (($signed(_zz__1_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_2_inner_activation;
    end else begin
      io_macOut = _1_2_inner_macOut;
    end
  end

  assign _zz__1_2_inner_macOut = ($signed(_zz__zz__1_2_inner_macOut) + $signed(_zz__zz__1_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_2_inner_activation <= 16'h0000;
      _1_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_2_inner_activation <= io_addInput;
      end else begin
        _1_2_inner_macOut <= _zz__1_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_17 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_1_inner_macOut;
  wire       [31:0]   _zz__zz__1_1_inner_macOut_1;
  wire       [31:0]   _zz__1_1_inner_macOut_1;
  wire       [31:0]   _zz__1_1_inner_macOut_2;
  reg        [15:0]   _1_1_inner_activation;
  reg        [15:0]   _1_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_1_inner_macOut;

  assign _zz__zz__1_1_inner_macOut = ($signed(io_mulInput) * $signed(_1_1_inner_activation));
  assign _zz__zz__1_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_1_inner_macOut)) ? 32'h00007fff : _zz__1_1_inner_macOut_2);
  assign _zz__1_1_inner_macOut_2 = (($signed(_zz__1_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_1_inner_activation;
    end else begin
      io_macOut = _1_1_inner_macOut;
    end
  end

  assign _zz__1_1_inner_macOut = ($signed(_zz__zz__1_1_inner_macOut) + $signed(_zz__zz__1_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_1_inner_activation <= 16'h0000;
      _1_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_1_inner_activation <= io_addInput;
      end else begin
        _1_1_inner_macOut <= _zz__1_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_16 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__1_0_inner_macOut;
  wire       [31:0]   _zz__zz__1_0_inner_macOut_1;
  wire       [31:0]   _zz__1_0_inner_macOut_1;
  wire       [31:0]   _zz__1_0_inner_macOut_2;
  reg        [15:0]   _1_0_inner_activation;
  reg        [15:0]   _1_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__1_0_inner_macOut;

  assign _zz__zz__1_0_inner_macOut = ($signed(io_mulInput) * $signed(_1_0_inner_activation));
  assign _zz__zz__1_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__1_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__1_0_inner_macOut)) ? 32'h00007fff : _zz__1_0_inner_macOut_2);
  assign _zz__1_0_inner_macOut_2 = (($signed(_zz__1_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__1_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _1_0_inner_activation;
    end else begin
      io_macOut = _1_0_inner_macOut;
    end
  end

  assign _zz__1_0_inner_macOut = ($signed(_zz__zz__1_0_inner_macOut) + $signed(_zz__zz__1_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _1_0_inner_activation <= 16'h0000;
      _1_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _1_0_inner_activation <= io_addInput;
      end else begin
        _1_0_inner_macOut <= _zz__1_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_15 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_15_inner_macOut;
  wire       [31:0]   _zz__zz__0_15_inner_macOut_1;
  wire       [31:0]   _zz__0_15_inner_macOut_1;
  wire       [31:0]   _zz__0_15_inner_macOut_2;
  reg        [15:0]   _0_15_inner_activation;
  reg        [15:0]   _0_15_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_15_inner_macOut;

  assign _zz__zz__0_15_inner_macOut = ($signed(io_mulInput) * $signed(_0_15_inner_activation));
  assign _zz__zz__0_15_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_15_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_15_inner_macOut)) ? 32'h00007fff : _zz__0_15_inner_macOut_2);
  assign _zz__0_15_inner_macOut_2 = (($signed(_zz__0_15_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_15_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_15_inner_activation;
    end else begin
      io_macOut = _0_15_inner_macOut;
    end
  end

  assign _zz__0_15_inner_macOut = ($signed(_zz__zz__0_15_inner_macOut) + $signed(_zz__zz__0_15_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_15_inner_activation <= 16'h0000;
      _0_15_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_15_inner_activation <= io_addInput;
      end else begin
        _0_15_inner_macOut <= _zz__0_15_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_14 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_14_inner_macOut;
  wire       [31:0]   _zz__zz__0_14_inner_macOut_1;
  wire       [31:0]   _zz__0_14_inner_macOut_1;
  wire       [31:0]   _zz__0_14_inner_macOut_2;
  reg        [15:0]   _0_14_inner_activation;
  reg        [15:0]   _0_14_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_14_inner_macOut;

  assign _zz__zz__0_14_inner_macOut = ($signed(io_mulInput) * $signed(_0_14_inner_activation));
  assign _zz__zz__0_14_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_14_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_14_inner_macOut)) ? 32'h00007fff : _zz__0_14_inner_macOut_2);
  assign _zz__0_14_inner_macOut_2 = (($signed(_zz__0_14_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_14_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_14_inner_activation;
    end else begin
      io_macOut = _0_14_inner_macOut;
    end
  end

  assign _zz__0_14_inner_macOut = ($signed(_zz__zz__0_14_inner_macOut) + $signed(_zz__zz__0_14_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_14_inner_activation <= 16'h0000;
      _0_14_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_14_inner_activation <= io_addInput;
      end else begin
        _0_14_inner_macOut <= _zz__0_14_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_13 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_13_inner_macOut;
  wire       [31:0]   _zz__zz__0_13_inner_macOut_1;
  wire       [31:0]   _zz__0_13_inner_macOut_1;
  wire       [31:0]   _zz__0_13_inner_macOut_2;
  reg        [15:0]   _0_13_inner_activation;
  reg        [15:0]   _0_13_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_13_inner_macOut;

  assign _zz__zz__0_13_inner_macOut = ($signed(io_mulInput) * $signed(_0_13_inner_activation));
  assign _zz__zz__0_13_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_13_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_13_inner_macOut)) ? 32'h00007fff : _zz__0_13_inner_macOut_2);
  assign _zz__0_13_inner_macOut_2 = (($signed(_zz__0_13_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_13_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_13_inner_activation;
    end else begin
      io_macOut = _0_13_inner_macOut;
    end
  end

  assign _zz__0_13_inner_macOut = ($signed(_zz__zz__0_13_inner_macOut) + $signed(_zz__zz__0_13_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_13_inner_activation <= 16'h0000;
      _0_13_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_13_inner_activation <= io_addInput;
      end else begin
        _0_13_inner_macOut <= _zz__0_13_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_12 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_12_inner_macOut;
  wire       [31:0]   _zz__zz__0_12_inner_macOut_1;
  wire       [31:0]   _zz__0_12_inner_macOut_1;
  wire       [31:0]   _zz__0_12_inner_macOut_2;
  reg        [15:0]   _0_12_inner_activation;
  reg        [15:0]   _0_12_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_12_inner_macOut;

  assign _zz__zz__0_12_inner_macOut = ($signed(io_mulInput) * $signed(_0_12_inner_activation));
  assign _zz__zz__0_12_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_12_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_12_inner_macOut)) ? 32'h00007fff : _zz__0_12_inner_macOut_2);
  assign _zz__0_12_inner_macOut_2 = (($signed(_zz__0_12_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_12_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_12_inner_activation;
    end else begin
      io_macOut = _0_12_inner_macOut;
    end
  end

  assign _zz__0_12_inner_macOut = ($signed(_zz__zz__0_12_inner_macOut) + $signed(_zz__zz__0_12_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_12_inner_activation <= 16'h0000;
      _0_12_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_12_inner_activation <= io_addInput;
      end else begin
        _0_12_inner_macOut <= _zz__0_12_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_11 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_11_inner_macOut;
  wire       [31:0]   _zz__zz__0_11_inner_macOut_1;
  wire       [31:0]   _zz__0_11_inner_macOut_1;
  wire       [31:0]   _zz__0_11_inner_macOut_2;
  reg        [15:0]   _0_11_inner_activation;
  reg        [15:0]   _0_11_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_11_inner_macOut;

  assign _zz__zz__0_11_inner_macOut = ($signed(io_mulInput) * $signed(_0_11_inner_activation));
  assign _zz__zz__0_11_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_11_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_11_inner_macOut)) ? 32'h00007fff : _zz__0_11_inner_macOut_2);
  assign _zz__0_11_inner_macOut_2 = (($signed(_zz__0_11_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_11_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_11_inner_activation;
    end else begin
      io_macOut = _0_11_inner_macOut;
    end
  end

  assign _zz__0_11_inner_macOut = ($signed(_zz__zz__0_11_inner_macOut) + $signed(_zz__zz__0_11_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_11_inner_activation <= 16'h0000;
      _0_11_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_11_inner_activation <= io_addInput;
      end else begin
        _0_11_inner_macOut <= _zz__0_11_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_10 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_10_inner_macOut;
  wire       [31:0]   _zz__zz__0_10_inner_macOut_1;
  wire       [31:0]   _zz__0_10_inner_macOut_1;
  wire       [31:0]   _zz__0_10_inner_macOut_2;
  reg        [15:0]   _0_10_inner_activation;
  reg        [15:0]   _0_10_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_10_inner_macOut;

  assign _zz__zz__0_10_inner_macOut = ($signed(io_mulInput) * $signed(_0_10_inner_activation));
  assign _zz__zz__0_10_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_10_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_10_inner_macOut)) ? 32'h00007fff : _zz__0_10_inner_macOut_2);
  assign _zz__0_10_inner_macOut_2 = (($signed(_zz__0_10_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_10_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_10_inner_activation;
    end else begin
      io_macOut = _0_10_inner_macOut;
    end
  end

  assign _zz__0_10_inner_macOut = ($signed(_zz__zz__0_10_inner_macOut) + $signed(_zz__zz__0_10_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_10_inner_activation <= 16'h0000;
      _0_10_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_10_inner_activation <= io_addInput;
      end else begin
        _0_10_inner_macOut <= _zz__0_10_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_9 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_9_inner_macOut;
  wire       [31:0]   _zz__zz__0_9_inner_macOut_1;
  wire       [31:0]   _zz__0_9_inner_macOut_1;
  wire       [31:0]   _zz__0_9_inner_macOut_2;
  reg        [15:0]   _0_9_inner_activation;
  reg        [15:0]   _0_9_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_9_inner_macOut;

  assign _zz__zz__0_9_inner_macOut = ($signed(io_mulInput) * $signed(_0_9_inner_activation));
  assign _zz__zz__0_9_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_9_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_9_inner_macOut)) ? 32'h00007fff : _zz__0_9_inner_macOut_2);
  assign _zz__0_9_inner_macOut_2 = (($signed(_zz__0_9_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_9_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_9_inner_activation;
    end else begin
      io_macOut = _0_9_inner_macOut;
    end
  end

  assign _zz__0_9_inner_macOut = ($signed(_zz__zz__0_9_inner_macOut) + $signed(_zz__zz__0_9_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_9_inner_activation <= 16'h0000;
      _0_9_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_9_inner_activation <= io_addInput;
      end else begin
        _0_9_inner_macOut <= _zz__0_9_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_8 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_8_inner_macOut;
  wire       [31:0]   _zz__zz__0_8_inner_macOut_1;
  wire       [31:0]   _zz__0_8_inner_macOut_1;
  wire       [31:0]   _zz__0_8_inner_macOut_2;
  reg        [15:0]   _0_8_inner_activation;
  reg        [15:0]   _0_8_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_8_inner_macOut;

  assign _zz__zz__0_8_inner_macOut = ($signed(io_mulInput) * $signed(_0_8_inner_activation));
  assign _zz__zz__0_8_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_8_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_8_inner_macOut)) ? 32'h00007fff : _zz__0_8_inner_macOut_2);
  assign _zz__0_8_inner_macOut_2 = (($signed(_zz__0_8_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_8_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_8_inner_activation;
    end else begin
      io_macOut = _0_8_inner_macOut;
    end
  end

  assign _zz__0_8_inner_macOut = ($signed(_zz__zz__0_8_inner_macOut) + $signed(_zz__zz__0_8_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_8_inner_activation <= 16'h0000;
      _0_8_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_8_inner_activation <= io_addInput;
      end else begin
        _0_8_inner_macOut <= _zz__0_8_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_7 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_7_inner_macOut;
  wire       [31:0]   _zz__zz__0_7_inner_macOut_1;
  wire       [31:0]   _zz__0_7_inner_macOut_1;
  wire       [31:0]   _zz__0_7_inner_macOut_2;
  reg        [15:0]   _0_7_inner_activation;
  reg        [15:0]   _0_7_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_7_inner_macOut;

  assign _zz__zz__0_7_inner_macOut = ($signed(io_mulInput) * $signed(_0_7_inner_activation));
  assign _zz__zz__0_7_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_7_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_7_inner_macOut)) ? 32'h00007fff : _zz__0_7_inner_macOut_2);
  assign _zz__0_7_inner_macOut_2 = (($signed(_zz__0_7_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_7_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_7_inner_activation;
    end else begin
      io_macOut = _0_7_inner_macOut;
    end
  end

  assign _zz__0_7_inner_macOut = ($signed(_zz__zz__0_7_inner_macOut) + $signed(_zz__zz__0_7_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_7_inner_activation <= 16'h0000;
      _0_7_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_7_inner_activation <= io_addInput;
      end else begin
        _0_7_inner_macOut <= _zz__0_7_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_6 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_6_inner_macOut;
  wire       [31:0]   _zz__zz__0_6_inner_macOut_1;
  wire       [31:0]   _zz__0_6_inner_macOut_1;
  wire       [31:0]   _zz__0_6_inner_macOut_2;
  reg        [15:0]   _0_6_inner_activation;
  reg        [15:0]   _0_6_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_6_inner_macOut;

  assign _zz__zz__0_6_inner_macOut = ($signed(io_mulInput) * $signed(_0_6_inner_activation));
  assign _zz__zz__0_6_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_6_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_6_inner_macOut)) ? 32'h00007fff : _zz__0_6_inner_macOut_2);
  assign _zz__0_6_inner_macOut_2 = (($signed(_zz__0_6_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_6_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_6_inner_activation;
    end else begin
      io_macOut = _0_6_inner_macOut;
    end
  end

  assign _zz__0_6_inner_macOut = ($signed(_zz__zz__0_6_inner_macOut) + $signed(_zz__zz__0_6_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_6_inner_activation <= 16'h0000;
      _0_6_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_6_inner_activation <= io_addInput;
      end else begin
        _0_6_inner_macOut <= _zz__0_6_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_5 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_5_inner_macOut;
  wire       [31:0]   _zz__zz__0_5_inner_macOut_1;
  wire       [31:0]   _zz__0_5_inner_macOut_1;
  wire       [31:0]   _zz__0_5_inner_macOut_2;
  reg        [15:0]   _0_5_inner_activation;
  reg        [15:0]   _0_5_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_5_inner_macOut;

  assign _zz__zz__0_5_inner_macOut = ($signed(io_mulInput) * $signed(_0_5_inner_activation));
  assign _zz__zz__0_5_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_5_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_5_inner_macOut)) ? 32'h00007fff : _zz__0_5_inner_macOut_2);
  assign _zz__0_5_inner_macOut_2 = (($signed(_zz__0_5_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_5_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_5_inner_activation;
    end else begin
      io_macOut = _0_5_inner_macOut;
    end
  end

  assign _zz__0_5_inner_macOut = ($signed(_zz__zz__0_5_inner_macOut) + $signed(_zz__zz__0_5_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_5_inner_activation <= 16'h0000;
      _0_5_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_5_inner_activation <= io_addInput;
      end else begin
        _0_5_inner_macOut <= _zz__0_5_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_4 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_4_inner_macOut;
  wire       [31:0]   _zz__zz__0_4_inner_macOut_1;
  wire       [31:0]   _zz__0_4_inner_macOut_1;
  wire       [31:0]   _zz__0_4_inner_macOut_2;
  reg        [15:0]   _0_4_inner_activation;
  reg        [15:0]   _0_4_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_4_inner_macOut;

  assign _zz__zz__0_4_inner_macOut = ($signed(io_mulInput) * $signed(_0_4_inner_activation));
  assign _zz__zz__0_4_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_4_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_4_inner_macOut)) ? 32'h00007fff : _zz__0_4_inner_macOut_2);
  assign _zz__0_4_inner_macOut_2 = (($signed(_zz__0_4_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_4_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_4_inner_activation;
    end else begin
      io_macOut = _0_4_inner_macOut;
    end
  end

  assign _zz__0_4_inner_macOut = ($signed(_zz__zz__0_4_inner_macOut) + $signed(_zz__zz__0_4_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_4_inner_activation <= 16'h0000;
      _0_4_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_4_inner_activation <= io_addInput;
      end else begin
        _0_4_inner_macOut <= _zz__0_4_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_3 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_3_inner_macOut;
  wire       [31:0]   _zz__zz__0_3_inner_macOut_1;
  wire       [31:0]   _zz__0_3_inner_macOut_1;
  wire       [31:0]   _zz__0_3_inner_macOut_2;
  reg        [15:0]   _0_3_inner_activation;
  reg        [15:0]   _0_3_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_3_inner_macOut;

  assign _zz__zz__0_3_inner_macOut = ($signed(io_mulInput) * $signed(_0_3_inner_activation));
  assign _zz__zz__0_3_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_3_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_3_inner_macOut)) ? 32'h00007fff : _zz__0_3_inner_macOut_2);
  assign _zz__0_3_inner_macOut_2 = (($signed(_zz__0_3_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_3_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_3_inner_activation;
    end else begin
      io_macOut = _0_3_inner_macOut;
    end
  end

  assign _zz__0_3_inner_macOut = ($signed(_zz__zz__0_3_inner_macOut) + $signed(_zz__zz__0_3_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_3_inner_activation <= 16'h0000;
      _0_3_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_3_inner_activation <= io_addInput;
      end else begin
        _0_3_inner_macOut <= _zz__0_3_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_2 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_2_inner_macOut;
  wire       [31:0]   _zz__zz__0_2_inner_macOut_1;
  wire       [31:0]   _zz__0_2_inner_macOut_1;
  wire       [31:0]   _zz__0_2_inner_macOut_2;
  reg        [15:0]   _0_2_inner_activation;
  reg        [15:0]   _0_2_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_2_inner_macOut;

  assign _zz__zz__0_2_inner_macOut = ($signed(io_mulInput) * $signed(_0_2_inner_activation));
  assign _zz__zz__0_2_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_2_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_2_inner_macOut)) ? 32'h00007fff : _zz__0_2_inner_macOut_2);
  assign _zz__0_2_inner_macOut_2 = (($signed(_zz__0_2_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_2_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_2_inner_activation;
    end else begin
      io_macOut = _0_2_inner_macOut;
    end
  end

  assign _zz__0_2_inner_macOut = ($signed(_zz__zz__0_2_inner_macOut) + $signed(_zz__zz__0_2_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_2_inner_activation <= 16'h0000;
      _0_2_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_2_inner_activation <= io_addInput;
      end else begin
        _0_2_inner_macOut <= _zz__0_2_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC_1 (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_1_inner_macOut;
  wire       [31:0]   _zz__zz__0_1_inner_macOut_1;
  wire       [31:0]   _zz__0_1_inner_macOut_1;
  wire       [31:0]   _zz__0_1_inner_macOut_2;
  reg        [15:0]   _0_1_inner_activation;
  reg        [15:0]   _0_1_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_1_inner_macOut;

  assign _zz__zz__0_1_inner_macOut = ($signed(io_mulInput) * $signed(_0_1_inner_activation));
  assign _zz__zz__0_1_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_1_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_1_inner_macOut)) ? 32'h00007fff : _zz__0_1_inner_macOut_2);
  assign _zz__0_1_inner_macOut_2 = (($signed(_zz__0_1_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_1_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_1_inner_activation;
    end else begin
      io_macOut = _0_1_inner_macOut;
    end
  end

  assign _zz__0_1_inner_macOut = ($signed(_zz__zz__0_1_inner_macOut) + $signed(_zz__zz__0_1_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_1_inner_activation <= 16'h0000;
      _0_1_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_1_inner_activation <= io_addInput;
      end else begin
        _0_1_inner_macOut <= _zz__0_1_inner_macOut_1[15:0];
      end
    end
  end


endmodule

module MAC (
  input  wire          io_load,
  input  wire [15:0]   io_mulInput,
  input  wire [15:0]   io_addInput,
  output wire [15:0]   io_passthrough,
  output reg  [15:0]   io_macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   _zz__zz__0_0_inner_macOut;
  wire       [31:0]   _zz__zz__0_0_inner_macOut_1;
  wire       [31:0]   _zz__0_0_inner_macOut_1;
  wire       [31:0]   _zz__0_0_inner_macOut_2;
  reg        [15:0]   _0_0_inner_activation;
  reg        [15:0]   _0_0_inner_macOut;
  reg        [15:0]   io_mulInput_regNext;
  wire       [31:0]   _zz__0_0_inner_macOut;

  assign _zz__zz__0_0_inner_macOut = ($signed(io_mulInput) * $signed(_0_0_inner_activation));
  assign _zz__zz__0_0_inner_macOut_1 = {{16{io_addInput[15]}}, io_addInput};
  assign _zz__0_0_inner_macOut_1 = (($signed(32'h00007fff) < $signed(_zz__0_0_inner_macOut)) ? 32'h00007fff : _zz__0_0_inner_macOut_2);
  assign _zz__0_0_inner_macOut_2 = (($signed(_zz__0_0_inner_macOut) < $signed(32'hffff8000)) ? 32'hffff8000 : _zz__0_0_inner_macOut);
  assign io_passthrough = io_mulInput_regNext;
  always @(*) begin
    if(io_load) begin
      io_macOut = _0_0_inner_activation;
    end else begin
      io_macOut = _0_0_inner_macOut;
    end
  end

  assign _zz__0_0_inner_macOut = ($signed(_zz__zz__0_0_inner_macOut) + $signed(_zz__zz__0_0_inner_macOut_1));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _0_0_inner_activation <= 16'h0000;
      _0_0_inner_macOut <= 16'h0000;
      io_mulInput_regNext <= 16'h0000;
    end else begin
      io_mulInput_regNext <= io_mulInput;
      if(io_load) begin
        _0_0_inner_activation <= io_addInput;
      end else begin
        _0_0_inner_macOut <= _zz__0_0_inner_macOut_1[15:0];
      end
    end
  end


endmodule
