
################################################################
# This is a generated script based on design: bd_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xa7z030fbv484-1I
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ap_ctrl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:acc_handshake_rtl:1.0 ap_ctrl ]

  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk ap_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000.0} \
 ] $ap_clk
  set ap_rst [ create_bd_port -dir I -type rst ap_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $ap_rst
  set inptr_address0 [ create_bd_port -dir O -from 10 -to 0 -type data inptr_address0 ]
  set inptr_address1 [ create_bd_port -dir O -from 10 -to 0 -type data inptr_address1 ]
  set inptr_ce0 [ create_bd_port -dir O inptr_ce0 ]
  set inptr_ce1 [ create_bd_port -dir O -from 0 -to 0 -type data inptr_ce1 ]
  set inptr_q0 [ create_bd_port -dir I -from 7 -to 0 -type data inptr_q0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $inptr_q0
  set inptr_q1 [ create_bd_port -dir I -from 7 -to 0 -type data inptr_q1 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $inptr_q1
  set mask_address0 [ create_bd_port -dir O -from 4 -to 0 -type data mask_address0 ]
  set mask_address1 [ create_bd_port -dir O -from 4 -to 0 -type data mask_address1 ]
  set mask_ce0 [ create_bd_port -dir O mask_ce0 ]
  set mask_ce1 [ create_bd_port -dir O -from 0 -to 0 -type data mask_ce1 ]
  set mask_q0 [ create_bd_port -dir I -from 7 -to 0 -type data mask_q0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}} \
 ] $mask_q0
  set mask_q1 [ create_bd_port -dir I -from 7 -to 0 -type data mask_q1 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $mask_q1
  set outptr_address0 [ create_bd_port -dir O -from 5 -to 0 -type data outptr_address0 ]
  set outptr_ce0 [ create_bd_port -dir O outptr_ce0 ]
  set outptr_d0 [ create_bd_port -dir O -from 7 -to 0 -type data outptr_d0 ]
  set outptr_we0 [ create_bd_port -dir O outptr_we0 ]
  set shift [ create_bd_port -dir I -from 31 -to 0 -type data shift ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}} \
 ] $shift

  # Create instance: hls_inst, and set properties
  set hls_inst [ create_bd_cell -type ip -vlnv xilinx.com:hls:img_conv_5x5:1.0 hls_inst ]

  # Create interface connections
  connect_bd_intf_net -intf_net ap_ctrl_0_1 [get_bd_intf_ports ap_ctrl] [get_bd_intf_pins hls_inst/ap_ctrl]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk] [get_bd_pins hls_inst/ap_clk]
  connect_bd_net -net ap_rst_0_1 [get_bd_ports ap_rst] [get_bd_pins hls_inst/ap_rst]
  connect_bd_net -net hls_inst_inptr_address0 [get_bd_ports inptr_address0] [get_bd_pins hls_inst/inptr_address0]
  connect_bd_net -net hls_inst_inptr_address1 [get_bd_ports inptr_address1] [get_bd_pins hls_inst/inptr_address1]
  connect_bd_net -net hls_inst_inptr_ce0 [get_bd_ports inptr_ce0] [get_bd_pins hls_inst/inptr_ce0]
  connect_bd_net -net hls_inst_inptr_ce1 [get_bd_ports inptr_ce1] [get_bd_pins hls_inst/inptr_ce1]
  connect_bd_net -net hls_inst_mask_address0 [get_bd_ports mask_address0] [get_bd_pins hls_inst/mask_address0]
  connect_bd_net -net hls_inst_mask_address1 [get_bd_ports mask_address1] [get_bd_pins hls_inst/mask_address1]
  connect_bd_net -net hls_inst_mask_ce0 [get_bd_ports mask_ce0] [get_bd_pins hls_inst/mask_ce0]
  connect_bd_net -net hls_inst_mask_ce1 [get_bd_ports mask_ce1] [get_bd_pins hls_inst/mask_ce1]
  connect_bd_net -net hls_inst_outptr_address0 [get_bd_ports outptr_address0] [get_bd_pins hls_inst/outptr_address0]
  connect_bd_net -net hls_inst_outptr_ce0 [get_bd_ports outptr_ce0] [get_bd_pins hls_inst/outptr_ce0]
  connect_bd_net -net hls_inst_outptr_d0 [get_bd_ports outptr_d0] [get_bd_pins hls_inst/outptr_d0]
  connect_bd_net -net hls_inst_outptr_we0 [get_bd_ports outptr_we0] [get_bd_pins hls_inst/outptr_we0]
  connect_bd_net -net inptr_q0_0_1 [get_bd_ports inptr_q0] [get_bd_pins hls_inst/inptr_q0]
  connect_bd_net -net inptr_q1_0_1 [get_bd_ports inptr_q1] [get_bd_pins hls_inst/inptr_q1]
  connect_bd_net -net mask_q0_0_1 [get_bd_ports mask_q0] [get_bd_pins hls_inst/mask_q0]
  connect_bd_net -net mask_q1_0_1 [get_bd_ports mask_q1] [get_bd_pins hls_inst/mask_q1]
  connect_bd_net -net shift_0_1 [get_bd_ports shift] [get_bd_pins hls_inst/shift]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


