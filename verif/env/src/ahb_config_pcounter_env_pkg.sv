////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_CONFIG_PCOUNTER_ENV_PKG__SV
`define AHB_CONFIG_PCOUNTER_ENV_PKG__SV

`include "uvm_macros.svh"

package ahb_config_pcounter_env_pkg;

    import uvm_pkg::*;
    import ahb_enum_pkg::*;
    import ahb_master_transaction_pkg::*;
    import ahb_master_agent_pkg::*;

    `include "ahb_config_pcounter_defines.sv"
    `include "ahb_config_pcounter_virtual_sequencer.sv"
    `include "ahb_config_pcounter_env.sv"

endpackage : ahb_config_pcounter_env_pkg

`endif