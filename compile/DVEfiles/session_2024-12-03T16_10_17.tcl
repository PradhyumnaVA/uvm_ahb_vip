# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Tue Dec 3 16:10:17 2024
# Designs open: 1
#   V1: /home/student/cadWorkDir/uvm_prady/workshop_labs/compile/test.vcd
# Toplevel windows open: 1
# 	TopLevel.3
#   Wave.2: 22 signals
#   Group count = 2
#   Group pcounter_i signal count = 20
#   Group ahb_slave_interface signal count = 22
# End_DVE_Session_Save_Info

# DVE version: U-2023.03
# DVE build date: Feb 25 2023 20:46:26


#<Session mode="Full" path="/home/student/cadWorkDir/uvm_prady/workshop_labs/compile/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.3

if {![gui_exist_window -window TopLevel.3]} {
    set TopLevel.3 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.3 TopLevel.3
}
gui_show_window -window ${TopLevel.3} -show_state normal -rect {{74 67} {1919 1052}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
gui_sync_global -id ${TopLevel.3} -option true

# MDI window settings
set Wave.2 [gui_create_window -type {Wave}  -parent ${TopLevel.3}]
gui_show_window -window ${Wave.2} -show_state maximized
gui_update_layout -id ${Wave.2} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 535} {child_wave_right 1305} {child_wave_colname 265} {child_wave_colvalue 265} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) none
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) none
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.3}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/student/cadWorkDir/uvm_prady/workshop_labs/compile/test.vcd.vpd}] } {
	gui_open_db -design V1 -file /home/student/cadWorkDir/uvm_prady/workshop_labs/compile/test.vcd.vpd -nosource
}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {ahb_config_pcounter_testbench_top.ahb_slave_interface}
gui_load_child_values {ahb_config_pcounter_testbench_top.dut.pcounter_i}


set _session_group_1 pcounter_i
gui_sg_create "$_session_group_1"
set pcounter_i "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { ahb_config_pcounter_testbench_top.dut.pcounter_i.clk ahb_config_pcounter_testbench_top.dut.pcounter_i.rst ahb_config_pcounter_testbench_top.dut.pcounter_i.cfg_enable ahb_config_pcounter_testbench_top.dut.pcounter_i.cfg_rd_wr ahb_config_pcounter_testbench_top.dut.pcounter_i.cfg_addr ahb_config_pcounter_testbench_top.dut.pcounter_i.cfg_wdata ahb_config_pcounter_testbench_top.dut.pcounter_i.cfg_rdata ahb_config_pcounter_testbench_top.dut.pcounter_i.counter_o ahb_config_pcounter_testbench_top.dut.pcounter_i.curr_state_o ahb_config_pcounter_testbench_top.dut.pcounter_i.csr_dir ahb_config_pcounter_testbench_top.dut.pcounter_i.csr_min ahb_config_pcounter_testbench_top.dut.pcounter_i.csr_max ahb_config_pcounter_testbench_top.dut.pcounter_i.csr_step ahb_config_pcounter_testbench_top.dut.pcounter_i.count ahb_config_pcounter_testbench_top.dut.pcounter_i.curr_state ahb_config_pcounter_testbench_top.dut.pcounter_i.next_state ahb_config_pcounter_testbench_top.dut.pcounter_i.rdata ahb_config_pcounter_testbench_top.dut.pcounter_i.rollover_status ahb_config_pcounter_testbench_top.dut.pcounter_i.rollover_enable ahb_config_pcounter_testbench_top.dut.pcounter_i.start_counter }

set _session_group_2 ahb_slave_interface
gui_sg_create "$_session_group_2"
set ahb_slave_interface "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { ahb_config_pcounter_testbench_top.ahb_slave_interface.HCLK ahb_config_pcounter_testbench_top.ahb_slave_interface.HRESETn ahb_config_pcounter_testbench_top.ahb_slave_interface.HADDR ahb_config_pcounter_testbench_top.ahb_slave_interface.HTRANS ahb_config_pcounter_testbench_top.ahb_slave_interface.HWRITE ahb_config_pcounter_testbench_top.ahb_slave_interface.HSIZE ahb_config_pcounter_testbench_top.ahb_slave_interface.HBURST ahb_config_pcounter_testbench_top.ahb_slave_interface.HPROT ahb_config_pcounter_testbench_top.ahb_slave_interface.HWDATA ahb_config_pcounter_testbench_top.ahb_slave_interface.HSELx ahb_config_pcounter_testbench_top.ahb_slave_interface.HRDATA ahb_config_pcounter_testbench_top.ahb_slave_interface.HREADY ahb_config_pcounter_testbench_top.ahb_slave_interface.HREADY_IN ahb_config_pcounter_testbench_top.ahb_slave_interface.HRESP ahb_config_pcounter_testbench_top.ahb_slave_interface.vk_clk_port ahb_config_pcounter_testbench_top.ahb_slave_interface.vk_rst_port ahb_config_pcounter_testbench_top.ahb_slave_interface.HBUSREQx ahb_config_pcounter_testbench_top.ahb_slave_interface.HLOCKx ahb_config_pcounter_testbench_top.ahb_slave_interface.HGRANTx ahb_config_pcounter_testbench_top.ahb_slave_interface.HMASTER ahb_config_pcounter_testbench_top.ahb_slave_interface.HMASTLOCK ahb_config_pcounter_testbench_top.ahb_slave_interface.HSPLITx }

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 170261



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# View 'Wave.2'
gui_wv_sync -id ${Wave.2} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.2}  C1
gui_wv_zoom_timerange -id ${Wave.2} 70926 315927
gui_list_add_group -id ${Wave.2} -after {New Group} {ahb_slave_interface}
gui_seek_criteria -id ${Wave.2} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.2}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.2} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.2} -text {*}
gui_list_set_insertion_bar  -id ${Wave.2} -group ahb_slave_interface  -position in

gui_marker_move -id ${Wave.2} {C1} 170261
gui_view_scroll -id ${Wave.2} -vertical -set 0
gui_show_grid -id ${Wave.2} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.3}]} {
	gui_set_active_window -window ${TopLevel.3}
	gui_set_active_window -window ${Wave.2}
}
#</Session>

