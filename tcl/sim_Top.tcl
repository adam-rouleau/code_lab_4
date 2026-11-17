# Circuit complet
restart
remove_forces -all
add_force {/Top/A} -radix bin {11001 0ns}
add_force {/Top/CLK} -radix bin {0 0ns} {1 5ns} -repeat_every 10ns
run 42 ms
puts "2419031-2529549 [clock format [clock seconds]]"
