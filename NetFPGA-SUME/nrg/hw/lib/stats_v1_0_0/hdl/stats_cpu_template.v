`include "stats_cpu_regs_defines.v"

//parameters to be added to the top module parameters
#(
    // AXI Registers Data Width
    parameter C_S_AXI_DATA_WIDTH    = 32,
    parameter C_S_AXI_ADDR_WIDTH    = 32
)
//ports to be added to the top module ports
(
// Signals for AXI_IP and IF_REG (Added for debug purposes)
    // Slave AXI Ports
    input                                     S_AXI_ACLK,
    input                                     S_AXI_ARESETN,
    input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    input                                     S_AXI_AWVALID,
    input      [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    input      [C_S_AXI_DATA_WIDTH/8-1 : 0]   S_AXI_WSTRB,
    input                                     S_AXI_WVALID,
    input                                     S_AXI_BREADY,
    input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    input                                     S_AXI_ARVALID,
    input                                     S_AXI_RREADY,
    output                                    S_AXI_ARREADY,
    output     [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
    output     [1 : 0]                        S_AXI_RRESP,
    output                                    S_AXI_RVALID,
    output                                    S_AXI_WREADY,
    output     [1 :0]                         S_AXI_BRESP,
    output                                    S_AXI_BVALID,
    output                                    S_AXI_AWREADY
)


    // define and assign default little endian
    wire                                      reg_patternmatch1_default_little;
    wire                                      reg_patternmatch2_default_little;
    wire                                      reg_patternmatch3_default_little;
    wire                                      reg_patternmatch4_default_little;
    wire                                      reg_patternmatch5_default_little;
    wire                                      reg_patternmatch6_default_little;
    wire                                      reg_patternmatch7_default_little;
    wire                                      reg_patternmatch8_default_little;
    wire                                      reg_patternmatch9_default_little;
    wire                                      reg_patternmatch10_default_little;
    wire                                      reg_patternmatch11_default_little;
    wire                                      reg_patternmatch12_default_little;
    wire                                      reg_patternmatch13_default_little;
    wire                                      reg_patternmatch14_default_little;
    wire                                      reg_patternmatch15_default_little;
    wire                                      reg_patternmatch16_default_little;
    wire                                      reg_patternmask1_default_little;
    wire                                      reg_patternmask2_default_little;
    wire                                      reg_patternmask3_default_little;
    wire                                      reg_patternmask4_default_little;
    wire                                      reg_patternmask5_default_little;
    wire                                      reg_patternmask6_default_little;
    wire                                      reg_patternmask7_default_little;
    wire                                      reg_patternmask8_default_little;
    wire                                      reg_patternmask9_default_little;
    wire                                      reg_patternmask10_default_little;
    wire                                      reg_patternmask11_default_little;
    wire                                      reg_patternmask12_default_little;
    wire                                      reg_patternmask13_default_little;
    wire                                      reg_patternmask14_default_little;
    wire                                      reg_patternmask15_default_little;
    wire                                      reg_patternmask16_default_little;
    assign  reg_patternmatch1_default_little = `REG_PATTERNMATCH1_DEFAULT;
    assign  reg_patternmatch2_default_little = `REG_PATTERNMATCH2_DEFAULT;
    assign  reg_patternmatch3_default_little = `REG_PATTERNMATCH3_DEFAULT;
    assign  reg_patternmatch4_default_little = `REG_PATTERNMATCH4_DEFAULT;
    assign  reg_patternmatch5_default_little = `REG_PATTERNMATCH5_DEFAULT;
    assign  reg_patternmatch6_default_little = `REG_PATTERNMATCH6_DEFAULT;
    assign  reg_patternmatch7_default_little = `REG_PATTERNMATCH7_DEFAULT;
    assign  reg_patternmatch8_default_little = `REG_PATTERNMATCH8_DEFAULT;
    assign  reg_patternmatch9_default_little = `REG_PATTERNMATCH9_DEFAULT;
    assign  reg_patternmatch10_default_little = `REG_PATTERNMATCH10_DEFAULT;
    assign  reg_patternmatch11_default_little = `REG_PATTERNMATCH11_DEFAULT;
    assign  reg_patternmatch12_default_little = `REG_PATTERNMATCH12_DEFAULT;
    assign  reg_patternmatch13_default_little = `REG_PATTERNMATCH13_DEFAULT;
    assign  reg_patternmatch14_default_little = `REG_PATTERNMATCH14_DEFAULT;
    assign  reg_patternmatch15_default_little = `REG_PATTERNMATCH15_DEFAULT;
    assign  reg_patternmatch16_default_little = `REG_PATTERNMATCH16_DEFAULT;
    assign  reg_patternmask1_default_little = `REG_PATTERNMASK1_DEFAULT;
    assign  reg_patternmask2_default_little = `REG_PATTERNMASK2_DEFAULT;
    assign  reg_patternmask3_default_little = `REG_PATTERNMASK3_DEFAULT;
    assign  reg_patternmask4_default_little = `REG_PATTERNMASK4_DEFAULT;
    assign  reg_patternmask5_default_little = `REG_PATTERNMASK5_DEFAULT;
    assign  reg_patternmask6_default_little = `REG_PATTERNMASK6_DEFAULT;
    assign  reg_patternmask7_default_little = `REG_PATTERNMASK7_DEFAULT;
    assign  reg_patternmask8_default_little = `REG_PATTERNMASK8_DEFAULT;
    assign  reg_patternmask9_default_little = `REG_PATTERNMASK9_DEFAULT;
    assign  reg_patternmask10_default_little = `REG_PATTERNMASK10_DEFAULT;
    assign  reg_patternmask11_default_little = `REG_PATTERNMASK11_DEFAULT;
    assign  reg_patternmask12_default_little = `REG_PATTERNMASK12_DEFAULT;
    assign  reg_patternmask13_default_little = `REG_PATTERNMASK13_DEFAULT;
    assign  reg_patternmask14_default_little = `REG_PATTERNMASK14_DEFAULT;
    assign  reg_patternmask15_default_little = `REG_PATTERNMASK15_DEFAULT;
    assign  reg_patternmask16_default_little = `REG_PATTERNMASK16_DEFAULT;

    // define registers
    reg      [`REG_ID_BITS]    id_reg;
    reg      [`REG_VERSION_BITS]    version_reg;
    wire     [`REG_RESET_BITS]    reset_reg;
    reg      [`REG_FLIP_BITS]    ip2cpu_flip_reg;
    wire     [`REG_FLIP_BITS]    cpu2ip_flip_reg;
    reg      [`REG_DEBUG_BITS]    ip2cpu_debug_reg;
    wire     [`REG_DEBUG_BITS]    cpu2ip_debug_reg;
    reg      [`REG_PKTIN_BITS]    pktin_reg;
    wire                             pktin_reg_clear;
    reg      [`REG_PKTOUT_BITS]    pktout_reg;
    wire                             pktout_reg_clear;
    reg      [`REG_TESTTRIGGER_BITS]    ip2cpu_testtrigger_reg;
    wire     [`REG_TESTTRIGGER_BITS]    cpu2ip_testtrigger_reg;
    reg      [`REG_BWGRANULARITY_BITS]    ip2cpu_bwgranularity_reg;
    wire     [`REG_BWGRANULARITY_BITS]    cpu2ip_bwgranularity_reg;
    reg      [`REG_BWDIVISOR_BITS]    ip2cpu_bwdivisor_reg;
    wire     [`REG_BWDIVISOR_BITS]    cpu2ip_bwdivisor_reg;
    reg      [`REG_BURSTGAP_BITS]    ip2cpu_burstgap_reg;
    wire     [`REG_BURSTGAP_BITS]    cpu2ip_burstgap_reg;
    reg      [`REG_TESTEND_BITS]    ip2cpu_testend_reg;
    wire     [`REG_TESTEND_BITS]    cpu2ip_testend_reg;
    reg      [`REG_FIRSTTIME_BITS]    ip2cpu_firsttime_reg;
    wire     [`REG_FIRSTTIME_BITS]    cpu2ip_firsttime_reg;
    reg      [`REG_LASTTIME_BITS]    ip2cpu_lasttime_reg;
    wire     [`REG_LASTTIME_BITS]    cpu2ip_lasttime_reg;
    reg      [`REG_LASTBW_BITS]    ip2cpu_lastbw_reg;
    wire     [`REG_LASTBW_BITS]    cpu2ip_lastbw_reg;
    wire     [`REG_INPUTSEL_BITS]    inputsel_reg;
    reg      [`REG_ARPCOUNT_BITS]    ip2cpu_arpcount_reg;
    wire     [`REG_ARPCOUNT_BITS]    cpu2ip_arpcount_reg;
    reg      [`REG_IP4COUNT_BITS]    ip2cpu_ip4count_reg;
    wire     [`REG_IP4COUNT_BITS]    cpu2ip_ip4count_reg;
    reg      [`REG_IP6COUNT_BITS]    ip2cpu_ip6count_reg;
    wire     [`REG_IP6COUNT_BITS]    cpu2ip_ip6count_reg;
    reg      [`REG_TCPCOUNT_BITS]    ip2cpu_tcpcount_reg;
    wire     [`REG_TCPCOUNT_BITS]    cpu2ip_tcpcount_reg;
    reg      [`REG_UDPCOUNT_BITS]    ip2cpu_udpcount_reg;
    wire     [`REG_UDPCOUNT_BITS]    cpu2ip_udpcount_reg;
    reg      [`REG_SYNCOUNT_BITS]    ip2cpu_syncount_reg;
    wire     [`REG_SYNCOUNT_BITS]    cpu2ip_syncount_reg;
    reg      [`REG_FINCOUNT_BITS]    ip2cpu_fincount_reg;
    wire     [`REG_FINCOUNT_BITS]    cpu2ip_fincount_reg;
    reg      [`REG_FLOWIDCOUNT_BITS]    ip2cpu_flowidcount_reg;
    wire     [`REG_FLOWIDCOUNT_BITS]    cpu2ip_flowidcount_reg;
    wire     [`REG_PATTERNMATCH1_BITS]    patternmatch1_reg;
    wire     [`REG_PATTERNMATCH2_BITS]    patternmatch2_reg;
    wire     [`REG_PATTERNMATCH3_BITS]    patternmatch3_reg;
    wire     [`REG_PATTERNMATCH4_BITS]    patternmatch4_reg;
    wire     [`REG_PATTERNMATCH5_BITS]    patternmatch5_reg;
    wire     [`REG_PATTERNMATCH6_BITS]    patternmatch6_reg;
    wire     [`REG_PATTERNMATCH7_BITS]    patternmatch7_reg;
    wire     [`REG_PATTERNMATCH8_BITS]    patternmatch8_reg;
    wire     [`REG_PATTERNMATCH9_BITS]    patternmatch9_reg;
    wire     [`REG_PATTERNMATCH10_BITS]    patternmatch10_reg;
    wire     [`REG_PATTERNMATCH11_BITS]    patternmatch11_reg;
    wire     [`REG_PATTERNMATCH12_BITS]    patternmatch12_reg;
    wire     [`REG_PATTERNMATCH13_BITS]    patternmatch13_reg;
    wire     [`REG_PATTERNMATCH14_BITS]    patternmatch14_reg;
    wire     [`REG_PATTERNMATCH15_BITS]    patternmatch15_reg;
    wire     [`REG_PATTERNMATCH16_BITS]    patternmatch16_reg;
    wire     [`REG_PATTERNMASK1_BITS]    patternmask1_reg;
    wire     [`REG_PATTERNMASK2_BITS]    patternmask2_reg;
    wire     [`REG_PATTERNMASK3_BITS]    patternmask3_reg;
    wire     [`REG_PATTERNMASK4_BITS]    patternmask4_reg;
    wire     [`REG_PATTERNMASK5_BITS]    patternmask5_reg;
    wire     [`REG_PATTERNMASK6_BITS]    patternmask6_reg;
    wire     [`REG_PATTERNMASK7_BITS]    patternmask7_reg;
    wire     [`REG_PATTERNMASK8_BITS]    patternmask8_reg;
    wire     [`REG_PATTERNMASK9_BITS]    patternmask9_reg;
    wire     [`REG_PATTERNMASK10_BITS]    patternmask10_reg;
    wire     [`REG_PATTERNMASK11_BITS]    patternmask11_reg;
    wire     [`REG_PATTERNMASK12_BITS]    patternmask12_reg;
    wire     [`REG_PATTERNMASK13_BITS]    patternmask13_reg;
    wire     [`REG_PATTERNMASK14_BITS]    patternmask14_reg;
    wire     [`REG_PATTERNMASK15_BITS]    patternmask15_reg;
    wire     [`REG_PATTERNMASK16_BITS]    patternmask16_reg;
    reg      [`REG_MATCHCOUNT_BITS]    ip2cpu_matchcount_reg;
    wire     [`REG_MATCHCOUNT_BITS]    cpu2ip_matchcount_reg;
    wire      [`MEM_PKTSIZEMEM_ADDR_BITS]    pktsizemem_addr;
    wire      [`MEM_PKTSIZEMEM_DATA_BITS]    pktsizemem_data;
    wire                              pktsizemem_rd_wrn;
    wire                              pktsizemem_cmd_valid;
    reg       [`MEM_PKTSIZEMEM_DATA_BITS]    pktsizemem_reply;
    reg                               pktsizemem_reply_valid;
    wire      [`MEM_IPGMEM_ADDR_BITS]    ipgmem_addr;
    wire      [`MEM_IPGMEM_DATA_BITS]    ipgmem_data;
    wire                              ipgmem_rd_wrn;
    wire                              ipgmem_cmd_valid;
    reg       [`MEM_IPGMEM_DATA_BITS]    ipgmem_reply;
    reg                               ipgmem_reply_valid;
    wire      [`MEM_BURSTMEM_ADDR_BITS]    burstmem_addr;
    wire      [`MEM_BURSTMEM_DATA_BITS]    burstmem_data;
    wire                              burstmem_rd_wrn;
    wire                              burstmem_cmd_valid;
    reg       [`MEM_BURSTMEM_DATA_BITS]    burstmem_reply;
    reg                               burstmem_reply_valid;
    wire      [`MEM_BWMEM_ADDR_BITS]    bwmem_addr;
    wire      [`MEM_BWMEM_DATA_BITS]    bwmem_data;
    wire                              bwmem_rd_wrn;
    wire                              bwmem_cmd_valid;
    reg       [`MEM_BWMEM_DATA_BITS]    bwmem_reply;
    reg                               bwmem_reply_valid;
    wire      [`MEM_BWTSMEM_ADDR_BITS]    bwtsmem_addr;
    wire      [`MEM_BWTSMEM_DATA_BITS]    bwtsmem_data;
    wire                              bwtsmem_rd_wrn;
    wire                              bwtsmem_cmd_valid;
    reg       [`MEM_BWTSMEM_DATA_BITS]    bwtsmem_reply;
    reg                               bwtsmem_reply_valid;
    wire      [`MEM_PPSMEM_ADDR_BITS]    ppsmem_addr;
    wire      [`MEM_PPSMEM_DATA_BITS]    ppsmem_data;
    wire                              ppsmem_rd_wrn;
    wire                              ppsmem_cmd_valid;
    reg       [`MEM_PPSMEM_DATA_BITS]    ppsmem_reply;
    reg                               ppsmem_reply_valid;
    wire      [`MEM_FLOWIDMEM_ADDR_BITS]    flowidmem_addr;
    wire      [`MEM_FLOWIDMEM_DATA_BITS]    flowidmem_data;
    wire                              flowidmem_rd_wrn;
    wire                              flowidmem_cmd_valid;
    reg       [`MEM_FLOWIDMEM_DATA_BITS]    flowidmem_reply;
    reg                               flowidmem_reply_valid;
    wire      [`MEM_WINDOWSIZEMEM_ADDR_BITS]    windowsizemem_addr;
    wire      [`MEM_WINDOWSIZEMEM_DATA_BITS]    windowsizemem_data;
    wire                              windowsizemem_rd_wrn;
    wire                              windowsizemem_cmd_valid;
    reg       [`MEM_WINDOWSIZEMEM_DATA_BITS]    windowsizemem_reply;
    reg                               windowsizemem_reply_valid;

//Registers section
 stats_cpu_regs
 #(
     .C_BASE_ADDRESS        (C_BASEADDR ),
     .C_S_AXI_DATA_WIDTH    (C_S_AXI_DATA_WIDTH),
     .C_S_AXI_ADDR_WIDTH    (C_S_AXI_ADDR_WIDTH)
 ) stats_cpu_regs_inst
 (
   // General ports
    .clk                    (axis_aclk),
    .resetn                 (axis_resetn),
   // AXI Lite ports
    .S_AXI_ACLK             (S_AXI_ACLK),
    .S_AXI_ARESETN          (S_AXI_ARESETN),
    .S_AXI_AWADDR           (S_AXI_AWADDR),
    .S_AXI_AWVALID          (S_AXI_AWVALID),
    .S_AXI_WDATA            (S_AXI_WDATA),
    .S_AXI_WSTRB            (S_AXI_WSTRB),
    .S_AXI_WVALID           (S_AXI_WVALID),
    .S_AXI_BREADY           (S_AXI_BREADY),
    .S_AXI_ARADDR           (S_AXI_ARADDR),
    .S_AXI_ARVALID          (S_AXI_ARVALID),
    .S_AXI_RREADY           (S_AXI_RREADY),
    .S_AXI_ARREADY          (S_AXI_ARREADY),
    .S_AXI_RDATA            (S_AXI_RDATA),
    .S_AXI_RRESP            (S_AXI_RRESP),
    .S_AXI_RVALID           (S_AXI_RVALID),
    .S_AXI_WREADY           (S_AXI_WREADY),
    .S_AXI_BRESP            (S_AXI_BRESP),
    .S_AXI_BVALID           (S_AXI_BVALID),
    .S_AXI_AWREADY          (S_AXI_AWREADY),

   // Register ports
   .id_reg          (id_reg),
   .version_reg          (version_reg),
   .reset_reg          (reset_reg),
   .ip2cpu_flip_reg          (ip2cpu_flip_reg),
   .cpu2ip_flip_reg          (cpu2ip_flip_reg),
   .ip2cpu_debug_reg          (ip2cpu_debug_reg),
   .cpu2ip_debug_reg          (cpu2ip_debug_reg),
   .pktin_reg          (pktin_reg),
   .pktin_reg_clear    (pktin_reg_clear),
   .pktout_reg          (pktout_reg),
   .pktout_reg_clear    (pktout_reg_clear),
   .ip2cpu_testtrigger_reg          (ip2cpu_testtrigger_reg),
   .cpu2ip_testtrigger_reg          (cpu2ip_testtrigger_reg),
   .ip2cpu_bwgranularity_reg          (ip2cpu_bwgranularity_reg),
   .cpu2ip_bwgranularity_reg          (cpu2ip_bwgranularity_reg),
   .ip2cpu_bwdivisor_reg          (ip2cpu_bwdivisor_reg),
   .cpu2ip_bwdivisor_reg          (cpu2ip_bwdivisor_reg),
   .ip2cpu_burstgap_reg          (ip2cpu_burstgap_reg),
   .cpu2ip_burstgap_reg          (cpu2ip_burstgap_reg),
   .ip2cpu_testend_reg          (ip2cpu_testend_reg),
   .cpu2ip_testend_reg          (cpu2ip_testend_reg),
   .ip2cpu_firsttime_reg          (ip2cpu_firsttime_reg),
   .cpu2ip_firsttime_reg          (cpu2ip_firsttime_reg),
   .ip2cpu_lasttime_reg          (ip2cpu_lasttime_reg),
   .cpu2ip_lasttime_reg          (cpu2ip_lasttime_reg),
   .ip2cpu_lastbw_reg          (ip2cpu_lastbw_reg),
   .cpu2ip_lastbw_reg          (cpu2ip_lastbw_reg),
   .inputsel_reg          (inputsel_reg),
   .ip2cpu_arpcount_reg          (ip2cpu_arpcount_reg),
   .cpu2ip_arpcount_reg          (cpu2ip_arpcount_reg),
   .ip2cpu_ip4count_reg          (ip2cpu_ip4count_reg),
   .cpu2ip_ip4count_reg          (cpu2ip_ip4count_reg),
   .ip2cpu_ip6count_reg          (ip2cpu_ip6count_reg),
   .cpu2ip_ip6count_reg          (cpu2ip_ip6count_reg),
   .ip2cpu_tcpcount_reg          (ip2cpu_tcpcount_reg),
   .cpu2ip_tcpcount_reg          (cpu2ip_tcpcount_reg),
   .ip2cpu_udpcount_reg          (ip2cpu_udpcount_reg),
   .cpu2ip_udpcount_reg          (cpu2ip_udpcount_reg),
   .ip2cpu_syncount_reg          (ip2cpu_syncount_reg),
   .cpu2ip_syncount_reg          (cpu2ip_syncount_reg),
   .ip2cpu_fincount_reg          (ip2cpu_fincount_reg),
   .cpu2ip_fincount_reg          (cpu2ip_fincount_reg),
   .ip2cpu_flowidcount_reg          (ip2cpu_flowidcount_reg),
   .cpu2ip_flowidcount_reg          (cpu2ip_flowidcount_reg),
   .patternmatch1_reg          (patternmatch1_reg),
   .patternmatch2_reg          (patternmatch2_reg),
   .patternmatch3_reg          (patternmatch3_reg),
   .patternmatch4_reg          (patternmatch4_reg),
   .patternmatch5_reg          (patternmatch5_reg),
   .patternmatch6_reg          (patternmatch6_reg),
   .patternmatch7_reg          (patternmatch7_reg),
   .patternmatch8_reg          (patternmatch8_reg),
   .patternmatch9_reg          (patternmatch9_reg),
   .patternmatch10_reg          (patternmatch10_reg),
   .patternmatch11_reg          (patternmatch11_reg),
   .patternmatch12_reg          (patternmatch12_reg),
   .patternmatch13_reg          (patternmatch13_reg),
   .patternmatch14_reg          (patternmatch14_reg),
   .patternmatch15_reg          (patternmatch15_reg),
   .patternmatch16_reg          (patternmatch16_reg),
   .patternmask1_reg          (patternmask1_reg),
   .patternmask2_reg          (patternmask2_reg),
   .patternmask3_reg          (patternmask3_reg),
   .patternmask4_reg          (patternmask4_reg),
   .patternmask5_reg          (patternmask5_reg),
   .patternmask6_reg          (patternmask6_reg),
   .patternmask7_reg          (patternmask7_reg),
   .patternmask8_reg          (patternmask8_reg),
   .patternmask9_reg          (patternmask9_reg),
   .patternmask10_reg          (patternmask10_reg),
   .patternmask11_reg          (patternmask11_reg),
   .patternmask12_reg          (patternmask12_reg),
   .patternmask13_reg          (patternmask13_reg),
   .patternmask14_reg          (patternmask14_reg),
   .patternmask15_reg          (patternmask15_reg),
   .patternmask16_reg          (patternmask16_reg),
   .ip2cpu_matchcount_reg          (ip2cpu_matchcount_reg),
   .cpu2ip_matchcount_reg          (cpu2ip_matchcount_reg),
    .pktsizemem_addr          (pktsizemem_addr),
    .pktsizemem_data          (pktsizemem_data),
    .pktsizemem_rd_wrn        (pktsizemem_rd_wrn),
    .pktsizemem_cmd_valid     (pktsizemem_cmd_valid ),
    .pktsizemem_reply         (pktsizemem_reply),
    .pktsizemem_reply_valid   (pktsizemem_reply_valid),
    .ipgmem_addr          (ipgmem_addr),
    .ipgmem_data          (ipgmem_data),
    .ipgmem_rd_wrn        (ipgmem_rd_wrn),
    .ipgmem_cmd_valid     (ipgmem_cmd_valid ),
    .ipgmem_reply         (ipgmem_reply),
    .ipgmem_reply_valid   (ipgmem_reply_valid),
    .burstmem_addr          (burstmem_addr),
    .burstmem_data          (burstmem_data),
    .burstmem_rd_wrn        (burstmem_rd_wrn),
    .burstmem_cmd_valid     (burstmem_cmd_valid ),
    .burstmem_reply         (burstmem_reply),
    .burstmem_reply_valid   (burstmem_reply_valid),
    .bwmem_addr          (bwmem_addr),
    .bwmem_data          (bwmem_data),
    .bwmem_rd_wrn        (bwmem_rd_wrn),
    .bwmem_cmd_valid     (bwmem_cmd_valid ),
    .bwmem_reply         (bwmem_reply),
    .bwmem_reply_valid   (bwmem_reply_valid),
    .bwtsmem_addr          (bwtsmem_addr),
    .bwtsmem_data          (bwtsmem_data),
    .bwtsmem_rd_wrn        (bwtsmem_rd_wrn),
    .bwtsmem_cmd_valid     (bwtsmem_cmd_valid ),
    .bwtsmem_reply         (bwtsmem_reply),
    .bwtsmem_reply_valid   (bwtsmem_reply_valid),
    .ppsmem_addr          (ppsmem_addr),
    .ppsmem_data          (ppsmem_data),
    .ppsmem_rd_wrn        (ppsmem_rd_wrn),
    .ppsmem_cmd_valid     (ppsmem_cmd_valid ),
    .ppsmem_reply         (ppsmem_reply),
    .ppsmem_reply_valid   (ppsmem_reply_valid),
    .flowidmem_addr          (flowidmem_addr),
    .flowidmem_data          (flowidmem_data),
    .flowidmem_rd_wrn        (flowidmem_rd_wrn),
    .flowidmem_cmd_valid     (flowidmem_cmd_valid ),
    .flowidmem_reply         (flowidmem_reply),
    .flowidmem_reply_valid   (flowidmem_reply_valid),
    .windowsizemem_addr          (windowsizemem_addr),
    .windowsizemem_data          (windowsizemem_data),
    .windowsizemem_rd_wrn        (windowsizemem_rd_wrn),
    .windowsizemem_cmd_valid     (windowsizemem_cmd_valid ),
    .windowsizemem_reply         (windowsizemem_reply),
    .windowsizemem_reply_valid   (windowsizemem_reply_valid),
   // Global Registers - user can select if to use
   .cpu_resetn_soft(),//software reset, after cpu module
   .resetn_soft    (),//software reset to cpu module (from central reset management)
   .resetn_sync    (resetn_sync)//synchronized reset, use for better timing
);
//registers logic, current logic is just a placeholder for initial compil, required to be changed by the user
always @(posedge axis_aclk)
	if (~resetn_sync) begin
        id_reg <= #1    `REG_ID_DEFAULT;
        version_reg <= #1    `REG_VERSION_DEFAULT;
        ip2cpu_flip_reg <= #1    `REG_FLIP_DEFAULT;
        ip2cpu_debug_reg <= #1    `REG_DEBUG_DEFAULT;
        pktin_reg <= #1    `REG_PKTIN_DEFAULT;
        pktout_reg <= #1    `REG_PKTOUT_DEFAULT;
        ip2cpu_testtrigger_reg <= #1    `REG_TESTTRIGGER_DEFAULT;
        ip2cpu_bwgranularity_reg <= #1    `REG_BWGRANULARITY_DEFAULT;
        ip2cpu_bwdivisor_reg <= #1    `REG_BWDIVISOR_DEFAULT;
        ip2cpu_burstgap_reg <= #1    `REG_BURSTGAP_DEFAULT;
        ip2cpu_testend_reg <= #1    `REG_TESTEND_DEFAULT;
        ip2cpu_firsttime_reg <= #1    `REG_FIRSTTIME_DEFAULT;
        ip2cpu_lasttime_reg <= #1    `REG_LASTTIME_DEFAULT;
        ip2cpu_lastbw_reg <= #1    `REG_LASTBW_DEFAULT;
        ip2cpu_arpcount_reg <= #1    `REG_ARPCOUNT_DEFAULT;
        ip2cpu_ip4count_reg <= #1    `REG_IP4COUNT_DEFAULT;
        ip2cpu_ip6count_reg <= #1    `REG_IP6COUNT_DEFAULT;
        ip2cpu_tcpcount_reg <= #1    `REG_TCPCOUNT_DEFAULT;
        ip2cpu_udpcount_reg <= #1    `REG_UDPCOUNT_DEFAULT;
        ip2cpu_syncount_reg <= #1    `REG_SYNCOUNT_DEFAULT;
        ip2cpu_fincount_reg <= #1    `REG_FINCOUNT_DEFAULT;
        ip2cpu_flowidcount_reg <= #1    `REG_FLOWIDCOUNT_DEFAULT;
        ip2cpu_matchcount_reg <= #1    `REG_MATCHCOUNT_DEFAULT;
	end
	else begin
        id_reg <= #1    `REG_ID_DEFAULT;
        version_reg <= #1    `REG_VERSION_DEFAULT;
		ip2cpu_flip_reg <= #1 cpu2ip_flip_reg;
		ip2cpu_debug_reg <= #1 cpu2ip_debug_reg;
        pktin_reg <= #1 pktin_reg_clear ? 'h0  : `REG_PKTIN_DEFAULT;
        pktout_reg <= #1 pktout_reg_clear ? 'h0  : `REG_PKTOUT_DEFAULT;
		ip2cpu_testtrigger_reg <= #1 cpu2ip_testtrigger_reg;
		ip2cpu_bwgranularity_reg <= #1 cpu2ip_bwgranularity_reg;
		ip2cpu_bwdivisor_reg <= #1 cpu2ip_bwdivisor_reg;
		ip2cpu_burstgap_reg <= #1 cpu2ip_burstgap_reg;
		ip2cpu_testend_reg <= #1 cpu2ip_testend_reg;
		ip2cpu_firsttime_reg <= #1 cpu2ip_firsttime_reg;
		ip2cpu_lasttime_reg <= #1 cpu2ip_lasttime_reg;
		ip2cpu_lastbw_reg <= #1 cpu2ip_lastbw_reg;
		ip2cpu_arpcount_reg <= #1 cpu2ip_arpcount_reg;
		ip2cpu_ip4count_reg <= #1 cpu2ip_ip4count_reg;
		ip2cpu_ip6count_reg <= #1 cpu2ip_ip6count_reg;
		ip2cpu_tcpcount_reg <= #1 cpu2ip_tcpcount_reg;
		ip2cpu_udpcount_reg <= #1 cpu2ip_udpcount_reg;
		ip2cpu_syncount_reg <= #1 cpu2ip_syncount_reg;
		ip2cpu_fincount_reg <= #1 cpu2ip_fincount_reg;
		ip2cpu_flowidcount_reg <= #1 cpu2ip_flowidcount_reg;
		ip2cpu_matchcount_reg <= #1 cpu2ip_matchcount_reg;
        end

