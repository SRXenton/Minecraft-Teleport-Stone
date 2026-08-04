### Tick Switch for teleport
### Called in: tick.json

## Call: Preparing edit - for administration
execute as @a[scores={x_teleport_stone.target=1}] run function x_ts__teleport_stone:x_ts__code/edit/pe

## Call: Player has teleport target
execute as @a[scores={x_teleport_stone.target=2..}] run function x_ts__teleport_stone:x_ts__code/xt/phtt
execute as @a[scores={x_teleport_stone.target=..-1}] run function x_ts__teleport_stone:x_ts__code/xt/phtt

