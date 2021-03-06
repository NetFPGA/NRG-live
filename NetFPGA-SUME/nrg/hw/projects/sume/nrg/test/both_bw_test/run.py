#!/usr/bin/env python3

#
# Copyright (c) 2015 University of Cambridge
# Copyright (c) 2015 Neelakandan Manihatty Bojan, Georgina Kalogeridou
# All rights reserved.
#
# This software was developed by Stanford University and the University of Cambridge Computer Laboratory 
# under National Science Foundation under Grant No. CNS-0855268,
# the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
# by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
# as part of the DARPA MRC research programme.
#
# @NETFPGA_LICENSE_HEADER_START@
#
# Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
# license agreements.  See the NOTICE file distributed with this work for
# additional information regarding copyright ownership.  NetFPGA licenses this
# file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at:
#
#   http://www.netfpga-cic.org
#
# Unless required by applicable law or agreed to in writing, Work distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#
# @NETFPGA_LICENSE_HEADER_END@
#
# Author:
#        Modified by Neelakandan Manihatty Bojan, Georgina Kalogeridou

import logging
logging.getLogger("scapy.runtime").setLevel(logging.ERROR)

from NFTest import *
import sys
import os
from scapy.layers.all import Ether, IP, TCP
from reg_defines_nrg import *

phy2loop0 = ('../connections/conn', [])
nftest_init(sim_loop = [], hw_config = [phy2loop0])

if isHW():
   # reset_counters (triggered by Write only event) for all the modules 
   nftest_regwrite(SUME_DELAY_0_RESET(), 0x1)
   nftest_regwrite(SUME_DELAY_1_RESET(), 0x1)
   nftest_regwrite(SUME_RATE_LIMITER_0_RESET(), 0x1)
   nftest_regwrite(SUME_NF_10G_INTERFACE_SHARED_0_RESET(), 0x1)
   nftest_regwrite(SUME_NF_10G_INTERFACE_1_RESET(), 0x1)
   nftest_regwrite(SUME_NF_10G_INTERFACE_2_RESET(), 0x1)
   nftest_regwrite(SUME_NF_10G_INTERFACE_3_RESET(), 0x1)
   nftest_regwrite(SUME_NF_RIFFA_DMA_0_RESET(), 0x1)


nftest_start()

nftest_regwrite(SUME_DELAY_0_DELAYVAL(), 0x64)
nftest_regwrite(SUME_DELAY_1_DELAYVAL(), 0x64)
nftest_regwrite(SUME_RATE_LIMITER_0_RATEBASE(), 0x2)
nftest_regwrite(SUME_RATE_LIMITER_0_RATEVALID(), 0x1)
nftest_regwrite(SUME_STATS_0_BWGRANULARITY(),0x100)
nftest_regwrite(SUME_STATS_0_BWDIVISOR(),0X0)
nftest_regwrite(SUME_STATS_0_TESTTRIGGER(),0x0)
nftest_regwrite(SUME_STATS_0_TESTTRIGGER(),0x1)


nftest_barrier()

routerMAC = []
routerIP = []
for i in range(4):
    routerMAC.append("00:ca:fe:00:00:0%d"%(i+1))
    routerIP.append("192.168.%s.40"%i)

num_broadcast = 10

pkts = []
pkts2 = []

payload_data = ''
for i in range(int(64)):
	payload_data = payload_data + 'A'

for i in range(num_broadcast):
    pkt = make_TCP_pkt(src_MAC="aa:bb:cc:dd:ee:ff", dst_MAC=routerMAC[0],
                      EtherType=0x800, src_IP="192.168.0.1",
                      dst_IP="192.168.1.1", dst_Port = 0xAAAA, src_Port = 0x5555, pkt_len=128+i*16, SYN=i%2, FIN=1-(i%2), window_size=128+i*16)


    pkt.time = ((i*(1e-8)) + (2e-6))
    pkts.append(pkt)
    pkt2 = make_IP_pkt(src_MAC="aa:bb:cc:dd:ee:fe", dst_MAC=routerMAC[1],
                      EtherType=0x800, src_IP="192.168.0.2",
                      dst_IP="192.168.1.2", pkt_len=128+i*16)

    pkt2.time = ((i*(1e-8)) + (2e-6))
    pkts2.append(pkt2)

    if isHW():
        nftest_expect_phy('nf1', pkt)
        nftest_send_phy('nf0', pkt)
        nftest_expect_phy('nf0', pkt2)
        nftest_send_phy('nf1', pkt2)
    
if not isHW():
    nftest_send_phy('nf0', pkts)
    nftest_expect_phy('nf1', pkts)
    nftest_send_phy('nf1', pkts)
    nftest_expect_phy('nf0', pkts)



nftest_barrier()

if isHW():
#    # Expecting the LUT_MISS counter to be incremented by 0x14, 20 packets
    rres1=nftest_regread_expect(SUME_STATS_0_PKTIN(), num_broadcast)
    mres=[rres1]
else:
    nftest_regread_expect(SUME_STATS_0_PKTIN(), num_broadcast) # pkts in
#    nftest_regread_expect(SUME_STATS_0_TESTEND(),0)
#    nftest_regread_expect(SUME_STATS_0_FIRSTTIME(),0)
 #   nftest_regread_expect(SUME_STATS_0_LASTTIME(),0)
  #  nftest_regread_expect(SUME_STATS_0_LASTBW(),0)
    nftest_regwrite(SUME_STATS_0_INDIRECTADDRESS(), 0x70000000)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x10)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x11)
    nftest_regread_expect(SUME_STATS_0_INDIRECTCOMMAND(), 0x110)
    nftest_regread_expect(SUME_STATS_0_INDIRECTREPLY(), 0)
    nftest_regwrite(SUME_STATS_0_INDIRECTADDRESS(),0x700000008)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x10)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x11)
    nftest_regread_expect(SUME_STATS_0_INDIRECTCOMMAND(), 0x110)
    nftest_regread_expect(SUME_STATS_0_INDIRECTREPLY(), 1)
    nftest_regwrite(SUME_STATS_0_INDIRECTADDRESS(), 0x70000012)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x10)
    nftest_regwrite(SUME_STATS_0_INDIRECTCOMMAND(), 0x11)
    nftest_regread_expect(SUME_STATS_0_INDIRECTCOMMAND(), 0x110)
    nftest_regread_expect(SUME_STATS_0_INDIRECTREPLY(), 1)

nftest_barrier()

mres=[]

nftest_finish(mres)




