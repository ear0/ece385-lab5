// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Sep 25 22:23:17 2023
// Host        : LAPTOP-EQQM1SUU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
i5OEbk0qc25AZPX+S5eOEE2Pp0Q=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
