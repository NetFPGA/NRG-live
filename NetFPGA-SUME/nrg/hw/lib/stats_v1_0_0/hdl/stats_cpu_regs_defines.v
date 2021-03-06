//
// Copyright (c) 2015 University of Cambridge
// All rights reserved.
//
//
//  File:
//        stats_cpu_regs_defines.v
//
//  Module:
//        stats_cpu_regs_defines
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
`define  REG_ID_DEFAULT				32'h000057A7
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

`define  REG_TESTTRIGGER_BITS				31:0
`define  REG_TESTTRIGGER_WIDTH				32
`define  REG_TESTTRIGGER_DEFAULT				32'h0
`define  REG_TESTTRIGGER_ADDR				32'h1C

`define  REG_BWGRANULARITY_BITS				31:0
`define  REG_BWGRANULARITY_WIDTH				32
`define  REG_BWGRANULARITY_DEFAULT				32'h30d40
`define  REG_BWGRANULARITY_ADDR				32'h20

`define  REG_BWDIVISOR_BITS				31:0
`define  REG_BWDIVISOR_WIDTH				32
`define  REG_BWDIVISOR_DEFAULT				32'h1
`define  REG_BWDIVISOR_ADDR				32'h24

`define  REG_BURSTGAP_BITS				31:0
`define  REG_BURSTGAP_WIDTH				32
`define  REG_BURSTGAP_DEFAULT				32'h0
`define  REG_BURSTGAP_ADDR				32'h28

`define  REG_TESTEND_BITS				31:0
`define  REG_TESTEND_WIDTH				32
`define  REG_TESTEND_DEFAULT				32'h0
`define  REG_TESTEND_ADDR				32'h2C

`define  REG_FIRSTTIME_BITS				31:0
`define  REG_FIRSTTIME_WIDTH				32
`define  REG_FIRSTTIME_DEFAULT				32'h0
`define  REG_FIRSTTIME_ADDR				32'h30

`define  REG_LASTTIME_BITS				31:0
`define  REG_LASTTIME_WIDTH				32
`define  REG_LASTTIME_DEFAULT				32'h0
`define  REG_LASTTIME_ADDR				32'h34

`define  REG_LASTBW_BITS				31:0
`define  REG_LASTBW_WIDTH				32
`define  REG_LASTBW_DEFAULT				32'h0
`define  REG_LASTBW_ADDR				32'h38

`define  REG_INPUTSEL_BITS				31:0
`define  REG_INPUTSEL_WIDTH				32
`define  REG_INPUTSEL_DEFAULT				32'h0
`define  REG_INPUTSEL_ADDR				32'h3C

`define  REG_ARPCOUNT_BITS				31:0
`define  REG_ARPCOUNT_WIDTH				32
`define  REG_ARPCOUNT_DEFAULT				32'h0
`define  REG_ARPCOUNT_ADDR				32'h40

`define  REG_IP4COUNT_BITS				31:0
`define  REG_IP4COUNT_WIDTH				32
`define  REG_IP4COUNT_DEFAULT				32'h0
`define  REG_IP4COUNT_ADDR				32'h44

`define  REG_IP6COUNT_BITS				31:0
`define  REG_IP6COUNT_WIDTH				32
`define  REG_IP6COUNT_DEFAULT				32'h0
`define  REG_IP6COUNT_ADDR				32'h48

`define  REG_TCPCOUNT_BITS				31:0
`define  REG_TCPCOUNT_WIDTH				32
`define  REG_TCPCOUNT_DEFAULT				32'h0
`define  REG_TCPCOUNT_ADDR				32'h4C

`define  REG_UDPCOUNT_BITS				31:0
`define  REG_UDPCOUNT_WIDTH				32
`define  REG_UDPCOUNT_DEFAULT				32'h0
`define  REG_UDPCOUNT_ADDR				32'h50

`define  REG_SYNCOUNT_BITS				31:0
`define  REG_SYNCOUNT_WIDTH				32
`define  REG_SYNCOUNT_DEFAULT				32'h0
`define  REG_SYNCOUNT_ADDR				32'h54

`define  REG_FINCOUNT_BITS				31:0
`define  REG_FINCOUNT_WIDTH				32
`define  REG_FINCOUNT_DEFAULT				32'h0
`define  REG_FINCOUNT_ADDR				32'h58

`define  REG_FLOWIDCOUNT_BITS				31:0
`define  REG_FLOWIDCOUNT_WIDTH				32
`define  REG_FLOWIDCOUNT_DEFAULT				32'h0
`define  REG_FLOWIDCOUNT_ADDR				32'h5C

`define  REG_PATTERNMATCH1_BITS				31:0
`define  REG_PATTERNMATCH1_WIDTH				32
`define  REG_PATTERNMATCH1_DEFAULT				32'h0
`define  REG_PATTERNMATCH1_ADDR				32'h60

`define  REG_PATTERNMATCH2_BITS				31:0
`define  REG_PATTERNMATCH2_WIDTH				32
`define  REG_PATTERNMATCH2_DEFAULT				32'h0
`define  REG_PATTERNMATCH2_ADDR				32'h64

`define  REG_PATTERNMATCH3_BITS				31:0
`define  REG_PATTERNMATCH3_WIDTH				32
`define  REG_PATTERNMATCH3_DEFAULT				32'h0
`define  REG_PATTERNMATCH3_ADDR				32'h68

`define  REG_PATTERNMATCH4_BITS				31:0
`define  REG_PATTERNMATCH4_WIDTH				32
`define  REG_PATTERNMATCH4_DEFAULT				32'h0
`define  REG_PATTERNMATCH4_ADDR				32'h6C

`define  REG_PATTERNMATCH5_BITS				31:0
`define  REG_PATTERNMATCH5_WIDTH				32
`define  REG_PATTERNMATCH5_DEFAULT				32'h0
`define  REG_PATTERNMATCH5_ADDR				32'h70

`define  REG_PATTERNMATCH6_BITS				31:0
`define  REG_PATTERNMATCH6_WIDTH				32
`define  REG_PATTERNMATCH6_DEFAULT				32'h0
`define  REG_PATTERNMATCH6_ADDR				32'h74

`define  REG_PATTERNMATCH7_BITS				31:0
`define  REG_PATTERNMATCH7_WIDTH				32
`define  REG_PATTERNMATCH7_DEFAULT				32'h0
`define  REG_PATTERNMATCH7_ADDR				32'h78

`define  REG_PATTERNMATCH8_BITS				31:0
`define  REG_PATTERNMATCH8_WIDTH				32
`define  REG_PATTERNMATCH8_DEFAULT				32'h0
`define  REG_PATTERNMATCH8_ADDR				32'h7C

`define  REG_PATTERNMATCH9_BITS				31:0
`define  REG_PATTERNMATCH9_WIDTH				32
`define  REG_PATTERNMATCH9_DEFAULT				32'h0
`define  REG_PATTERNMATCH9_ADDR				32'h80

`define  REG_PATTERNMATCH10_BITS				31:0
`define  REG_PATTERNMATCH10_WIDTH				32
`define  REG_PATTERNMATCH10_DEFAULT				32'h0
`define  REG_PATTERNMATCH10_ADDR				32'h84

`define  REG_PATTERNMATCH11_BITS				31:0
`define  REG_PATTERNMATCH11_WIDTH				32
`define  REG_PATTERNMATCH11_DEFAULT				32'h0
`define  REG_PATTERNMATCH11_ADDR				32'h88

`define  REG_PATTERNMATCH12_BITS				31:0
`define  REG_PATTERNMATCH12_WIDTH				32
`define  REG_PATTERNMATCH12_DEFAULT				32'h0
`define  REG_PATTERNMATCH12_ADDR				32'h8C

`define  REG_PATTERNMATCH13_BITS				31:0
`define  REG_PATTERNMATCH13_WIDTH				32
`define  REG_PATTERNMATCH13_DEFAULT				32'h0
`define  REG_PATTERNMATCH13_ADDR				32'h90

`define  REG_PATTERNMATCH14_BITS				31:0
`define  REG_PATTERNMATCH14_WIDTH				32
`define  REG_PATTERNMATCH14_DEFAULT				32'h0
`define  REG_PATTERNMATCH14_ADDR				32'h94

`define  REG_PATTERNMATCH15_BITS				31:0
`define  REG_PATTERNMATCH15_WIDTH				32
`define  REG_PATTERNMATCH15_DEFAULT				32'h0
`define  REG_PATTERNMATCH15_ADDR				32'h98

`define  REG_PATTERNMATCH16_BITS				31:0
`define  REG_PATTERNMATCH16_WIDTH				32
`define  REG_PATTERNMATCH16_DEFAULT				32'h0
`define  REG_PATTERNMATCH16_ADDR				32'h9C

`define  REG_PATTERNMASK1_BITS				31:0
`define  REG_PATTERNMASK1_WIDTH				32
`define  REG_PATTERNMASK1_DEFAULT				32'h0
`define  REG_PATTERNMASK1_ADDR				32'hA0

`define  REG_PATTERNMASK2_BITS				31:0
`define  REG_PATTERNMASK2_WIDTH				32
`define  REG_PATTERNMASK2_DEFAULT				32'h0
`define  REG_PATTERNMASK2_ADDR				32'hA4

`define  REG_PATTERNMASK3_BITS				31:0
`define  REG_PATTERNMASK3_WIDTH				32
`define  REG_PATTERNMASK3_DEFAULT				32'h0
`define  REG_PATTERNMASK3_ADDR				32'hA8

`define  REG_PATTERNMASK4_BITS				31:0
`define  REG_PATTERNMASK4_WIDTH				32
`define  REG_PATTERNMASK4_DEFAULT				32'h0
`define  REG_PATTERNMASK4_ADDR				32'hAC

`define  REG_PATTERNMASK5_BITS				31:0
`define  REG_PATTERNMASK5_WIDTH				32
`define  REG_PATTERNMASK5_DEFAULT				32'h0
`define  REG_PATTERNMASK5_ADDR				32'hB0

`define  REG_PATTERNMASK6_BITS				31:0
`define  REG_PATTERNMASK6_WIDTH				32
`define  REG_PATTERNMASK6_DEFAULT				32'h0
`define  REG_PATTERNMASK6_ADDR				32'hB4

`define  REG_PATTERNMASK7_BITS				31:0
`define  REG_PATTERNMASK7_WIDTH				32
`define  REG_PATTERNMASK7_DEFAULT				32'h0
`define  REG_PATTERNMASK7_ADDR				32'hB8

`define  REG_PATTERNMASK8_BITS				31:0
`define  REG_PATTERNMASK8_WIDTH				32
`define  REG_PATTERNMASK8_DEFAULT				32'h0
`define  REG_PATTERNMASK8_ADDR				32'hBC

`define  REG_PATTERNMASK9_BITS				31:0
`define  REG_PATTERNMASK9_WIDTH				32
`define  REG_PATTERNMASK9_DEFAULT				32'h0
`define  REG_PATTERNMASK9_ADDR				32'hC0

`define  REG_PATTERNMASK10_BITS				31:0
`define  REG_PATTERNMASK10_WIDTH				32
`define  REG_PATTERNMASK10_DEFAULT				32'h0
`define  REG_PATTERNMASK10_ADDR				32'hC4

`define  REG_PATTERNMASK11_BITS				31:0
`define  REG_PATTERNMASK11_WIDTH				32
`define  REG_PATTERNMASK11_DEFAULT				32'h0
`define  REG_PATTERNMASK11_ADDR				32'hC8

`define  REG_PATTERNMASK12_BITS				31:0
`define  REG_PATTERNMASK12_WIDTH				32
`define  REG_PATTERNMASK12_DEFAULT				32'h0
`define  REG_PATTERNMASK12_ADDR				32'hCC

`define  REG_PATTERNMASK13_BITS				31:0
`define  REG_PATTERNMASK13_WIDTH				32
`define  REG_PATTERNMASK13_DEFAULT				32'h0
`define  REG_PATTERNMASK13_ADDR				32'hD0

`define  REG_PATTERNMASK14_BITS				31:0
`define  REG_PATTERNMASK14_WIDTH				32
`define  REG_PATTERNMASK14_DEFAULT				32'h0
`define  REG_PATTERNMASK14_ADDR				32'hD4

`define  REG_PATTERNMASK15_BITS				31:0
`define  REG_PATTERNMASK15_WIDTH				32
`define  REG_PATTERNMASK15_DEFAULT				32'h0
`define  REG_PATTERNMASK15_ADDR				32'hD8

`define  REG_PATTERNMASK16_BITS				31:0
`define  REG_PATTERNMASK16_WIDTH				32
`define  REG_PATTERNMASK16_DEFAULT				32'h0
`define  REG_PATTERNMASK16_ADDR				32'hDC

`define  REG_MATCHCOUNT_BITS				31:0
`define  REG_MATCHCOUNT_WIDTH				32
`define  REG_MATCHCOUNT_DEFAULT				32'h0
`define  REG_MATCHCOUNT_ADDR				32'hE0

`define  REG_INDIRECTADDRESS_BITS				31:0
`define  REG_INDIRECTADDRESS_WIDTH				32
`define  REG_INDIRECTADDRESS_DEFAULT				32'h0
`define  REG_INDIRECTADDRESS_ADDR				32'h100

`define  REG_INDIRECTWRDATA_BITS				31:0
`define  REG_INDIRECTWRDATA_WIDTH				32
`define  REG_INDIRECTWRDATA_DEFAULT				32'h0
`define  REG_INDIRECTWRDATA_ADDR				32'h104

`define  REG_INDIRECTREPLY_BITS				31:0
`define  REG_INDIRECTREPLY_WIDTH				32
`define  REG_INDIRECTREPLY_DEFAULT				32'h0
`define  REG_INDIRECTREPLY_ADDR				32'h108

`define  REG_INDIRECTCOMMAND_BITS				31:0
`define  REG_INDIRECTCOMMAND_WIDTH				32
`define  REG_INDIRECTCOMMAND_DEFAULT				32'h0
`define  REG_INDIRECTCOMMAND_ADDR				32'h10C

`define  REG_INDIRECTCONFIG_BITS				31:0
`define  REG_INDIRECTCONFIG_WIDTH				32
`define  REG_INDIRECTCONFIG_DEFAULT				32'h0
`define  REG_INDIRECTCONFIG_ADDR				32'h110

`define  MEM_PKTSIZEMEM_DATA_BITS				31:0
`define  MEM_PKTSIZEMEM_ADDR_BITS				10:0
`define  MEM_PKTSIZEMEM_WIDTH				32
`define  MEM_PKTSIZEMEM_DEPTH				2048
`define  MEM_PKTSIZEMEM_ADDR				32'h0

`define  MEM_IPGMEM_DATA_BITS				31:0
`define  MEM_IPGMEM_ADDR_BITS				11:0
`define  MEM_IPGMEM_WIDTH				32
`define  MEM_IPGMEM_DEPTH				4096
`define  MEM_IPGMEM_ADDR				32'h10000000

`define  MEM_BURSTMEM_DATA_BITS				31:0
`define  MEM_BURSTMEM_ADDR_BITS				12:0
`define  MEM_BURSTMEM_WIDTH				32
`define  MEM_BURSTMEM_DEPTH				8192
`define  MEM_BURSTMEM_ADDR				32'h20000000

`define  MEM_BWMEM_DATA_BITS				31:0
`define  MEM_BWMEM_ADDR_BITS				12:0
`define  MEM_BWMEM_WIDTH				32
`define  MEM_BWMEM_DEPTH				8192
`define  MEM_BWMEM_ADDR				32'h30000000

`define  MEM_BWTSMEM_DATA_BITS				31:0
`define  MEM_BWTSMEM_ADDR_BITS				12:0
`define  MEM_BWTSMEM_WIDTH				32
`define  MEM_BWTSMEM_DEPTH				8192
`define  MEM_BWTSMEM_ADDR				32'h40000000

`define  MEM_PPSMEM_DATA_BITS				31:0
`define  MEM_PPSMEM_ADDR_BITS				12:0
`define  MEM_PPSMEM_WIDTH				32
`define  MEM_PPSMEM_DEPTH				8192
`define  MEM_PPSMEM_ADDR				32'h50000000

`define  MEM_FLOWIDMEM_DATA_BITS				31:0
`define  MEM_FLOWIDMEM_ADDR_BITS				10:0
`define  MEM_FLOWIDMEM_WIDTH				32
`define  MEM_FLOWIDMEM_DEPTH				2048
`define  MEM_FLOWIDMEM_ADDR				32'h60000000

`define  MEM_WINDOWSIZEMEM_DATA_BITS				31:0
`define  MEM_WINDOWSIZEMEM_ADDR_BITS				12:0
`define  MEM_WINDOWSIZEMEM_WIDTH				32
`define  MEM_WINDOWSIZEMEM_DEPTH				8192
`define  MEM_WINDOWSIZEMEM_ADDR				32'h70000000
