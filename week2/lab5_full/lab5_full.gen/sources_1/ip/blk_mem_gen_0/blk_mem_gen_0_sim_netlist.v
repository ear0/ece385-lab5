// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Sep 25 22:23:18 2023
// Host        : LAPTOP-EQQM1SUU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Elliot
//               Rubin/Desktop/School/ECE385/Lab5/ece385-lab5/lab5_real/lab5_real.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
vuZFPA==
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
