# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zc702:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]

add_files C:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/design_led_hello_world.bd
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_processing_system7_0_0/design_led_hello_world_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_axi_gpio_0_0/design_led_hello_world_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_axi_gpio_0_0/design_led_hello_world_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_axi_gpio_0_0/design_led_hello_world_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_rst_processing_system7_0_50M_0/design_led_hello_world_rst_processing_system7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_rst_processing_system7_0_50M_0/design_led_hello_world_rst_processing_system7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_rst_processing_system7_0_50M_0/design_led_hello_world_rst_processing_system7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/ip/design_led_hello_world_auto_pc_0/design_led_hello_world_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/design_led_hello_world_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files C:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/design_led_hello_world.bd]

read_verilog -library xil_defaultlib C:/Users/VRL/LED_HelloWorld/LED_HelloWorld.srcs/sources_1/bd/design_led_hello_world/hdl/design_led_hello_world_wrapper.v
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/VRL/LED_HelloWorld/LED_HelloWorld.cache/wt [current_project]
set_property parent.project_dir C:/Users/VRL/LED_HelloWorld [current_project]
catch { write_hwdef -file design_led_hello_world_wrapper.hwdef }
synth_design -top design_led_hello_world_wrapper -part xc7z020clg484-1
write_checkpoint design_led_hello_world_wrapper.dcp
report_utilization -file design_led_hello_world_wrapper_utilization_synth.rpt -pb design_led_hello_world_wrapper_utilization_synth.pb
