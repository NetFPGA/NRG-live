//
// Copyright (c) 2015 University of Cambridge
// All rights reserved.
//
//
//  File:
//        delay_cpu_regs_defines.v
//
//  Module:
//        delay_cpu_regs_defines
//
//  Description:
//        This file is automatically generated with the registers defintions towards the CPU/Software
//
// This software was developed by Stanford University and the University of Cambridge Computer Laboratory
// under National Science Foundation under Grant No. CNS-0855268,
// the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
// by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"),
// as part of the DARPA MRC research programme.
//
// @NETFPGA_LICENSE_HEADER_START@
//
// Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
// license agreements.  See the NOTICE file distributed with this work for
// additional information regarding copyright ownership.  NetFPGA licenses this
// file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
// "License"); you may not use this file except in compliance with the
// License.  You may obtain a copy of the License at:
//
//   http://www.netfpga-cic.org
//
// Unless required by applicable law or agreed to in writing, Work distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations under the License.
//
// @NETFPGA_LICENSE_HEADER_END@
//


`define  REG_ID_BITS				31:0
`define  REG_ID_WIDTH				32
`define  REG_ID_DEFAULT				32'h0000DE00
`define  REG_ID_ADDR				32'h0

`define  REG_VERSION_BITS				31:0
`define  REG_VERSION_WIDTH				32
`define  REG_VERSION_DEFAULT				32'h1
`define  REG_VERSION_ADDR				32'h4

`define  REG_RESET_BITS				15:0
`define  REG_RESET_WIDTH				16
`define  REG_RESET_DEFAULT				16'h0
`define  REG_RESET_ADDR				32'h8

`define  REG_FLIP_BITS				31:0
`define  REG_FLIP_WIDTH				32
`define  REG_FLIP_DEFAULT				32'h0
`define  REG_FLIP_ADDR				32'hC

`define  REG_DEBUG_BITS				31:0
`define  REG_DEBUG_WIDTH				32
`define  REG_DEBUG_DEFAULT				32'h0
`define  REG_DEBUG_ADDR				32'h10

`define  REG_PKTIN_BITS				31:0
`define  REG_PKTIN_WIDTH				32
`define  REG_PKTIN_DEFAULT				32'h0
`define  REG_PKTIN_ADDR				32'h14

`define  REG_PKTOUT_BITS				31:0
`define  REG_PKTOUT_WIDTH				32
`define  REG_PKTOUT_DEFAULT				32'h0
`define  REG_PKTOUT_ADDR				32'h18

`define  REG_DELAYVAL_BITS				31:0
`define  REG_DELAYVAL_WIDTH				32
`define  REG_DELAYVAL_DEFAULT				32'h0
`define  REG_DELAYVAL_ADDR				32'h1C

`define  REG_JITTERVAL_BITS				31:0
`define  REG_JITTERVAL_WIDTH				32
`define  REG_JITTERVAL_DEFAULT				32'h0
`define  REG_JITTERVAL_ADDR				32'h20

`define  REG_JITTERTYPE_BITS				31:0
`define  REG_JITTERTYPE_WIDTH				32
`define  REG_JITTERTYPE_DEFAULT				32'h0
`define  REG_JITTERTYPE_ADDR				32'h24

`define  REG_INDIRECTADDRESS_BITS				31:0
`define  REG_INDIRECTADDRESS_WIDTH				32
`define  REG_INDIRECTADDRESS_DEFAULT				32'h0
`define  REG_INDIRECTADDRESS_ADDR				32'h50

`define  REG_INDIRECTWRDATA_BITS				31:0
`define  REG_INDIRECTWRDATA_WIDTH				32
`define  REG_INDIRECTWRDATA_DEFAULT				32'h0
`define  REG_INDIRECTWRDATA_ADDR				32'h54

`define  REG_INDIRECTREPLY_BITS				31:0
`define  REG_INDIRECTREPLY_WIDTH				32
`define  REG_INDIRECTREPLY_DEFAULT				32'h0
`define  REG_INDIRECTREPLY_ADDR				32'h58

`define  REG_INDIRECTCOMMAND_BITS				31:0
`define  REG_INDIRECTCOMMAND_WIDTH				32
`define  REG_INDIRECTCOMMAND_DEFAULT				32'h0
`define  REG_INDIRECTCOMMAND_ADDR				32'h5C

`define  REG_INDIRECTCONFIG_BITS				31:0
`define  REG_INDIRECTCONFIG_WIDTH				32
`define  REG_INDIRECTCONFIG_DEFAULT				32'h0
`define  REG_INDIRECTCONFIG_ADDR				32'h60

`define  MEM_DISTMEM_DATA_BITS				31:0
`define  MEM_DISTMEM_ADDR_BITS				15:0
`define  MEM_DISTMEM_WIDTH				32
`define  MEM_DISTMEM_DEPTH				65536
`define  MEM_DISTMEM_ADDR				32'h0

`define  MEM_USERDISTMEM_DATA_BITS				31:0
`define  MEM_USERDISTMEM_ADDR_BITS				11:0
`define  MEM_USERDISTMEM_WIDTH				32
`define  MEM_USERDISTMEM_DEPTH				4096
`define  MEM_USERDISTMEM_ADDR				32'h10000000
