#!/bin/bash

echo ""
echo "-----------------------------------------------------------------------------------------------"
echo "Cloning the NetFPGA-SUME repoitory"
echo "WARNING: you need to have github access to NetFPGA-SUME repo"
echo "If you do not have access, request permission here: http://netfpga.org/site/#/SUME_reg_form/" 
echo "More information here: https://github.com/NetFPGA/NetFPGA-SUME-public/wiki/Getting-Started-Guide"
echo "----------------------------------------------------------------------------------------------"
echo ""
sleep 1
git clone https://github.com/NetFPGA/NetFPGA-SUME-live.git
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Checking out NetFPGA-SUME release 1.10"
echo "----------------------------------------------------------------------------------------------"
echo ""
sleep 1
cd NetFPGA-SUME-live && git checkout cdba540
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Adding NRG modules to the repository"
echo "----------------------------------------------------------------------------------------------"
sleep 1
cd ..
cp -rf nrg/hw/lib/delay_v1_0_0/ NetFPGA-SUME-live/lib/hw/contrib/cores/
cp -rf nrg/hw/lib/stats_v1_0_0/ NetFPGA-SUME-live/lib/hw/contrib/cores/
cp -rf nrg/hw/lib/rate_limiter_v1_0_0/ NetFPGA-SUME-live/lib/hw/contrib/cores/
cp -rf nrg/hw/projects/sume/nrg/ NetFPGA-SUME-live/contrib-projects/
echo "NRG files copied"
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Patch NetFPGA-SUME repository to support Vivado 2020.2"
echo "----------------------------------------------------------------------------------------------"
sleep 1
patch -p 0 < sume_upgrade.patch
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Updating NetFPGA-SUME repository with NRG"
echo "----------------------------------------------------------------------------------------------"
sleep 1
patch -p 0 < nrg_sume.patch
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Updating NetFPGA-SUME repository's PacketLib.py"
echo "----------------------------------------------------------------------------------------------"
sleep 1
patch -p 0 < packetlib.patch
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Updating NetFPGA-SUME settings and compiling all cores"
echo "----------------------------------------------------------------------------------------------"
sleep 1
source NetFPGA-SUME-live/tools/settings.sh
cd NetFPGA-SUME-live
make
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "Compiling the NRG project and generating file"
echo "This can take about a couple of hours, so take a nice break"
echo "----------------------------------------------------------------------------------------------"
sleep 1
cd $NF_DESIGN_DIR && nohup make
sleep 1
echo ""
echo "----------------------------------------------------------------------------------------------"
echo "All Done. Check that no errors caused early termination!"
echo "----------------------------------------------------------------------------------------------"
echo "You can find the NRG bitfile here:"
echo "$NF_DESIGN_DIR/bitfiles"


















