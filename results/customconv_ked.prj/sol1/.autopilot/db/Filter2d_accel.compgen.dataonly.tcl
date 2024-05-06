# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
shift { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


set port_control_r {
img_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
filter { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
conv_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
maxpool_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
}
dict set axilite_register_dict control_r $port_control_r


