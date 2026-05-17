## Tick Switch for teleport


execute as @a[scores={x_teleport_stone.target=1..}] run function x_ts__teleport_stone:x_ts__code/teleport/phtt
execute as @a[scores={x_teleport_stone.target=..-1}] run function x_ts__teleport_stone:x_ts__code/teleport/phtt
