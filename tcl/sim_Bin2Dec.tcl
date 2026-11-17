# Bin2Dec
restart
remove_forces -all
add_force {/Bin2Dec/E[0]} -radix bin {0 0ns} {1 5ns} -repeat_every 10ns
add_force {/Bin2Dec/E[1]} -radix bin {0 0ns} {1 10ns} -repeat_every 20ns
add_force {/Bin2Dec/E[2]} -radix bin {0 0ns} {1 20ns} -repeat_every 40ns
add_force {/Bin2Dec/E[3]} -radix bin {0 0ns} {1 40ns} -repeat_every 80ns
add_force {/Bin2Dec/E[4]} -radix bin {0 0ns} {1 80ns} -repeat_every 160ns
run 160 ns
puts "2419031-2529549 [clock format [clock seconds]]"
