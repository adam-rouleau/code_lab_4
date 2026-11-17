# Mux21_4b SEL = 1
restart
remove_forces -all
add_force {/Mux21_4b/SEL} -radix bin {1 0ns}
add_force {/Mux21_4b/E1[0]} -radix bin {0 0ns} {1 5ns} -repeat_every 10ns
add_force {/Mux21_4b/E1[1]} -radix bin {0 0ns} {1 10ns} -repeat_every 20ns
add_force {/Mux21_4b/E1[2]} -radix bin {0 0ns} {1 20ns} -repeat_every 40ns
add_force {/Mux21_4b/E1[3]} -radix bin {0 0ns} {1 40ns} -repeat_every 80ns
run 80 ns
puts "2419031-2529549 [clock format [clock seconds]]"
