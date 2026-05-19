### Start 1 - For raycast
### Call in: sts.mcfunction

## Open temp scoreboard and set _counter on 0
scoreboard objectives add x_teleport_stone.set_tp_stone dummy
scoreboard players set _counter x_teleport_stone.set_tp_stone 0

## Start raycast, Call next point in raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ run function x_ts__teleport_stone:x_ts__code/raycast/nx

## Remove scoreboard
scoreboard objectives remove x_teleport_stone.set_tp_stone
