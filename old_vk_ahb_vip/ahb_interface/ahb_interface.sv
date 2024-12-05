////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_INTERFACE__SV
`define AHB_INTERFACE__SV

interface ahb_interface#(AHB_ADDR_WIDTH=16,AHB_DATA_WIDTH=16)(input vk_clk_port, input vk_rst_port);

    logic HCLK;
    logic HRESETn;
    logic [31:0] HADDR;
    logic [1:0] HTRANS;
    logic HWRITE;
    logic [2:0] HSIZE;
    logic [2:0] HBURST;
    logic [3:0] HPROT;
    logic [31:0] HWDATA;
    logic HSELx;
    logic [31:0] HRDATA;
    logic HREADY;
    logic HREADY_IN;
    logic [1:0] HRESP;
    logic HBUSREQx;
    logic HLOCKx;
    logic HGRANTx;
    logic [3:0] HMASTER;
    logic HMASTLOCK;
    logic [15:0] HSPLITx;
	assign HCLK = vk_clk_port;
	assign HRESETn = vk_rst_port;
endinterface : ahb_interface

`endif
