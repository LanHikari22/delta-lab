transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/lan/dev/fpga/de10/ce1911/dff1911/testbench_utils.vhd}
vcom -2008 -work work {/home/lan/dev/fpga/de10/ce1911/dff1911/clock_div.vhd}

