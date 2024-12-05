////----------------------------------------------------------------------
//// This file has been automatically generated by
//// VerifStudio Software Version 0.63, Accelver Systems Inc.
//// Any modifications that you make to this file may be
//// overwritten by the tool when regenerating the files. 
////----------------------------------------------------------------------

`ifndef AHB_CONFIG_PCOUNTER_RDB__SV
`define AHB_CONFIG_PCOUNTER_RDB__SV

import uvm_pkg::*;

class CSR_DIR_type extends uvm_reg;

    // Register the class CSR_DIR_type with the factory.
    `uvm_object_utils(CSR_DIR_type)

    rand uvm_reg_field csr_dir;


    // The Constructor for this Class.
    function new(string name="CSR_DIR_type");
        super.new(name, 32, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        csr_dir = uvm_reg_field::type_id::create("csr_dir");
        csr_dir.configure(this, 32, 0, "RW", 0, 32'b00000000000000000000000000000000, 1, 1, 1);
    endfunction: build

endclass: CSR_DIR_type

class CSR_MIN_type extends uvm_reg;

    // Register the class CSR_MIN_type with the factory.
    `uvm_object_utils(CSR_MIN_type)

    rand uvm_reg_field csr_min;


    // The Constructor for this Class.
    function new(string name="CSR_MIN_type");
        super.new(name, 32, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        csr_min = uvm_reg_field::type_id::create("csr_min");
        csr_min.configure(this, 32, 0, "RW", 0, 32'b00000000000000000000000000000010, 1, 1, 1);
    endfunction: build

endclass: CSR_MIN_type

class CSR_MAX_type extends uvm_reg;

    // Register the class CSR_MAX_type with the factory.
    `uvm_object_utils(CSR_MAX_type)

    rand uvm_reg_field csr_max;


    // The Constructor for this Class.
    function new(string name="CSR_MAX_type");
        super.new(name, 32, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        csr_max = uvm_reg_field::type_id::create("csr_max");
        csr_max.configure(this, 32, 0, "RW", 0, 32'b00000000000000000000000000110010, 1, 1, 1);
    endfunction: build

endclass: CSR_MAX_type

class CSR_STEP_type extends uvm_reg;

    // Register the class CSR_STEP_type with the factory.
    `uvm_object_utils(CSR_STEP_type)

    rand uvm_reg_field csr_step;


    // The Constructor for this Class.
    function new(string name="CSR_STEP_type");
        super.new(name, 32, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        csr_step = uvm_reg_field::type_id::create("csr_step");
        csr_step.configure(this, 32, 0, "RW", 0, 32'b00000000000000000000000000000001, 1, 1, 1);
    endfunction: build

endclass: CSR_STEP_type

class ROLLOVER_STATUS_type extends uvm_reg;

    // Register the class ROLLOVER_STATUS_type with the factory.
    `uvm_object_utils(ROLLOVER_STATUS_type)

    rand uvm_reg_field rollover_status;


    // The Constructor for this Class.
    function new(string name="ROLLOVER_STATUS_type");
        super.new(name, 1, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        rollover_status = uvm_reg_field::type_id::create("rollover_status");
        rollover_status.configure(this, 1, 0, "RW", 1, 1'b0, 1, 1, 1);
    endfunction: build

endclass: ROLLOVER_STATUS_type

class COUNT_type extends uvm_reg;

    // Register the class COUNT_type with the factory.
    `uvm_object_utils(COUNT_type)

    rand uvm_reg_field count;


    // The Constructor for this Class.
    function new(string name="COUNT_type");
        super.new(name, 32, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        count = uvm_reg_field::type_id::create("count");
        count.configure(this, 32, 0, "RW", 1, 32'b00000000000000000000000000000010, 1, 1, 1);
    endfunction: build

endclass: COUNT_type

class ROLLOVER_ENABLE_type extends uvm_reg;

    // Register the class ROLLOVER_ENABLE_type with the factory.
    `uvm_object_utils(ROLLOVER_ENABLE_type)

    rand uvm_reg_field rollover_enable;


    // The Constructor for this Class.
    function new(string name="ROLLOVER_ENABLE_type");
        super.new(name, 1, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        rollover_enable = uvm_reg_field::type_id::create("rollover_enable");
        rollover_enable.configure(this, 1, 0, "RW", 0, 1'b1, 1, 1, 1);
    endfunction: build

endclass: ROLLOVER_ENABLE_type

class START_COUNTER_type extends uvm_reg;

    // Register the class START_COUNTER_type with the factory.
    `uvm_object_utils(START_COUNTER_type)

    rand uvm_reg_field start_counter;


    // The Constructor for this Class.
    function new(string name="START_COUNTER_type");
        super.new(name, 1, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();

        start_counter = uvm_reg_field::type_id::create("start_counter");
        start_counter.configure(this, 1, 0, "RW", 0, 1'b0, 1, 1, 1);
    endfunction: build

endclass: START_COUNTER_type

class ahb_config_pcounter_rdb extends uvm_reg_block;

    // Register the class ahb_config_pcounter_rdb with the factory.
    `uvm_object_utils(ahb_config_pcounter_rdb)

    rand CSR_DIR_type CSR_DIR;
    rand CSR_MIN_type CSR_MIN;
    rand CSR_MAX_type CSR_MAX;
    rand CSR_STEP_type CSR_STEP;
    rand ROLLOVER_STATUS_type ROLLOVER_STATUS;
    rand COUNT_type COUNT;
    rand ROLLOVER_ENABLE_type ROLLOVER_ENABLE;
    rand START_COUNTER_type START_COUNTER;

    uvm_reg_map LEAF_DEC;

    // The Constructor for this Class.
    function new(string name="ahb_config_pcounter_rdb");
        super.new(name, UVM_NO_COVERAGE);
    endfunction: new

    virtual function void build();


        CSR_DIR = CSR_DIR_type::type_id::create("CSR_DIR");
        CSR_DIR.build();
        CSR_DIR.configure(this, null, "");
        CSR_DIR.add_hdl_path_slice("p0.csr_dir", 0, 32);

        CSR_MIN = CSR_MIN_type::type_id::create("CSR_MIN");
        CSR_MIN.build();
        CSR_MIN.configure(this, null, "");
        CSR_MIN.add_hdl_path_slice("p0.csr_min", 0, 32);

        CSR_MAX = CSR_MAX_type::type_id::create("CSR_MAX");
        CSR_MAX.build();
        CSR_MAX.configure(this, null, "");
        CSR_MAX.add_hdl_path_slice("p0.csr_max", 0, 32);

        CSR_STEP = CSR_STEP_type::type_id::create("CSR_STEP");
        CSR_STEP.build();
        CSR_STEP.configure(this, null, "");
        CSR_STEP.add_hdl_path_slice("p0.csr_step", 0, 32);

        ROLLOVER_STATUS = ROLLOVER_STATUS_type::type_id::create("ROLLOVER_STATUS");
        ROLLOVER_STATUS.build();
        ROLLOVER_STATUS.configure(this, null, "");
        ROLLOVER_STATUS.add_hdl_path_slice("p0.rollover_status", 0, 1);

        COUNT = COUNT_type::type_id::create("COUNT");
        COUNT.build();
        COUNT.configure(this, null, "");
        COUNT.add_hdl_path_slice("p0.count", 0, 32);

        ROLLOVER_ENABLE = ROLLOVER_ENABLE_type::type_id::create("ROLLOVER_ENABLE");
        ROLLOVER_ENABLE.build();
        ROLLOVER_ENABLE.configure(this, null, "");
        ROLLOVER_ENABLE.add_hdl_path_slice("p0.rollover_enable", 0, 1);

        START_COUNTER = START_COUNTER_type::type_id::create("START_COUNTER");
        START_COUNTER.build();
        START_COUNTER.configure(this, null, "");
        START_COUNTER.add_hdl_path_slice("p0.start_counter", 0, 1);

        // Create the uvm_reg_map and add all the registers, memories in the memory map.
        LEAF_DEC = create_map("LEAF_DEC", 'h0, 4, UVM_LITTLE_ENDIAN);
        LEAF_DEC.add_reg(CSR_DIR, 'h0, "RW");
        LEAF_DEC.add_reg(CSR_MIN, 'h4, "RW");
        LEAF_DEC.add_reg(CSR_MAX, 'h8, "RW");
        LEAF_DEC.add_reg(CSR_STEP, 'hc, "RW");
        LEAF_DEC.add_reg(ROLLOVER_STATUS, 'h10, "RW");
        LEAF_DEC.add_reg(COUNT, 'h14, "RW");
        LEAF_DEC.add_reg(ROLLOVER_ENABLE, 'h18, "RW");
        LEAF_DEC.add_reg(START_COUNTER, 'h1c, "RW");

        // Set the default_map for this register block
        set_default_map(LEAF_DEC);

        // Set the HDL Path to the DUT from the Testbench Top.
        add_hdl_path("ahb_config_pcounter_testbench_top.dut", "RTL");

    endfunction: build

    virtual function void reset(string kind="HARD");

        // Reset the uvm_reg_block. This resets all mirrored values of regs/fields under this block
        super.reset(kind);

    endfunction: reset

endclass: ahb_config_pcounter_rdb


`endif