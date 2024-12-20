set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets reset]

set_property PACKAGE_PIN R2 [get_ports clk] 
set_property IOSTANDARD LVCMOS33 [get_ports clk] 

set_property PACKAGE_PIN T1 [get_ports reset] 
set_property IOSTANDARD LVCMOS33 [get_ports reset] 

set_property PACKAGE_PIN L1 [get_ports {W_data[7]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[7]}] 

set_property PACKAGE_PIN P1 [get_ports {W_data[6]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[6]}] 

set_property PACKAGE_PIN N3 [get_ports {W_data[5]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[5]}] 

set_property PACKAGE_PIN P3 [get_ports {W_data[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[4]}]

set_property PACKAGE_PIN U3 [get_ports {W_data[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[3]}] 

set_property PACKAGE_PIN W3 [get_ports {W_data[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[2]}] 

set_property PACKAGE_PIN V3 [get_ports {W_data[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[1]}] 

set_property PACKAGE_PIN V13 [get_ports {W_data[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {W_data[0]}] 