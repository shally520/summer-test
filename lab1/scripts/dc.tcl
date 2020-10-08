gui_start
printvar
printvar target_library
printvar search_path
check_library
check_tlu_plus_files
read_file -format verilog {/home/designer/DC_2013.12/lab1/rtl/TOP.v}
link
write -hierarchy -format ddc
write -hier -f ddc -out unmapped/TOP.ddc
list_designs
list_libs
source TOP.con
compile_ultra
rc
rt
write -hierarchy -format ddc -output /home/designer/DC_2013.12/lab1/mapped/TOP.ddc