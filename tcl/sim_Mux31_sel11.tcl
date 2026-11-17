# Mux31_5b SEL = 11
restart
remove_forces -all
add_force {/Mux31_5b/SEL} -radix bin {11 0ns}
run 160 ns
puts "2419031-2529549 [clock format [clock seconds]]"
