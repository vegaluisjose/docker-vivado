set part_name "xczu3eg-sbva484-1-e"

read_verilog -sv "top.v"
synth_design -mode "out_of_context" -flatten_hierarchy "rebuilt" -top "top" -part $part_name
opt_design
write_verilog -file "netlist.v"
