read_verilog counter_gl.v
link_design counter

create_clock -name clk -period 3 {clk}
set_input_delay -clock clk 1 {reset}
set_output_delay -clock clk 1 {q}

report_checks

exit


