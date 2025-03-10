#virtual Buttons
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { clk_i }]; # virtual BTN0
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { rst_i }]; # virtual BTN3
#LEDs
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { led_o[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { led_o[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1] 
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { led_o[2] }]; #IO_L17N_T2_A25_15 Sch=led[2] 
#the following property allows the use of a regular pin for clock input:
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_i]
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]