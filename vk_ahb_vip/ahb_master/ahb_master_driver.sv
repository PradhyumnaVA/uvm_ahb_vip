////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_MASTER_DRIVER__SV
`define AHB_MASTER_DRIVER__SV

class ahb_master_driver#(ADDR_WIDTH=16,DATA_WIDTH=16) extends uvm_driver#(ahb_master_transaction#(ADDR_WIDTH,DATA_WIDTH));

    // Declare a handle to the configdb object associated with this agent.
    ahb_master_config#(ADDR_WIDTH,DATA_WIDTH) config_db;

    // Declare a handle to the Virtual Interface
    virtual ahb_interface#(ADDR_WIDTH,DATA_WIDTH) vif;

    // Register the class ahb_master_driver with the factory.
    `uvm_component_param_utils(ahb_master_driver#(ADDR_WIDTH,DATA_WIDTH))

    // The Constructor for this Class.
    function new(string name="ahb_master_driver", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    // Declare the build phase of the UVM Driver.
    extern virtual function void build_phase(uvm_phase phase);

    // Declare the connect phase of the UVM Driver.
    extern virtual function void connect_phase(uvm_phase phase);

    // Declare the run phase of the UVM Driver.
    extern task run_phase(uvm_phase phase);
	
	extern task write_address();

	extern task write_data();

	extern task read_data();

endclass: ahb_master_driver


// Define the build phase of the UVM Driver.
function void ahb_master_driver::build_phase(uvm_phase phase);

    super.build_phase(phase);

    `uvm_info(get_type_name(), "Inside the Build Phase of ahb_master_driver.", UVM_HIGH)

    // Get the config_object from the uvm_config_db.
    if(!uvm_config_db#(ahb_master_config#(ADDR_WIDTH,DATA_WIDTH))::get(this, "", "master_config_object", config_db))
    begin
        `uvm_fatal(get_type_name(), "The Configuration Object for the driver has not been set.")
    end

endfunction: build_phase


// Define the connect phase of the UVM Driver.
function void ahb_master_driver::connect_phase(uvm_phase phase);

    super.connect_phase(phase);

    `uvm_info(get_type_name(), "Inside the Connect Phase of ahb_master_driver.", UVM_HIGH)

    vif = config_db.vif;

endfunction: connect_phase


// Define the run phase of the UVM Driver.
task ahb_master_driver::run_phase(uvm_phase phase);

    super.run_phase(phase);

    `uvm_info(get_type_name(), "Inside the Run Phase of ahb_master_driver.", UVM_HIGH)

    forever
    begin

        // Get the next item from the sequencer
        seq_item_port.get_next_item(req);

        // Cast and clone the request packet into the response packet.
        $cast(rsp, req.clone());

        // Set the id information for the response packet from the request packet.
        rsp.set_id_info(req);

	`uvm_info(get_type_name(),$sformatf("The sequence item is : %s", req.sprint()), UVM_LOW)
        // Please put your logic here....
	// wait till reset signal becomes high
	wait(vif.HRESETn)

       	// address phase 
	// in this use non-blocking, otherwise the values will be sampled 1 clk cycle late
	@(posedge vif.HCLK) begin
		vif.HTRANS <= AHB_NONSEQ;
		vif.HADDR <= req.m_address;
		vif.HWRITE <= req.m_read_write;
	end

	// data phase
	forever begin
		@(posedge vif.HCLK) begin
			if(vif.HREADY == 1) begin
				vif.HTRANS <= AHB_IDLE;
				break;
			end
		end
	end
	// write operation
        if(vif.HWRITE == 1) begin
		vif.HWDATA <= req.m_wdata;
		`uvm_info(get_type_name(),$sformatf("transfer is write"), UVM_LOW)
	end
	// read operation
	else if (vif.HWRITE == 0) begin
		`uvm_info(get_type_name(),$sformatf("transfer is read"), UVM_LOW)
		rsp.m_rdata <= vif.HRDATA;
	end

	// Complete the handshake with the sequencer with an item_done() call
        seq_item_port.item_done();

        // Put the Response back to the Sequencer. (will unblock the get_response() call in sequence.)
        seq_item_port.put_response(rsp);

    end

endtask : run_phase


`endif
