define_corners wc typ bc
read_liberty -corner typ /mnt/volume_nyc1_01/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_100C_1v80.lib
read_liberty -corner wc /mnt/volume_nyc1_01/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__ss_n40C_1v60.lib
read_liberty -corner bc /mnt/volume_nyc1_01/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__ff_n40C_1v95.lib

read_verilog counter_gl.v
link_design counter

create_clock -name clk -period 3 {clk}
set_input_delay -clock clk 1 {reset}
set_output_delay -clock clk 1 {q}

report_checks

exit


