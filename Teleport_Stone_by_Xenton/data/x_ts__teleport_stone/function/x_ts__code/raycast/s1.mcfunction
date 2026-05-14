## Start 1

scoreboard objectives add x_teleport_stone.set_tp_stone dummy
scoreboard players set _counter x_teleport_stone.set_tp_stone 0
execute as @s at @s anchored eyes positioned ^ ^ ^ run function x_ts__teleport_stone:x_ts__code/raycast/nx
scoreboard objectives remove x_teleport_stone.set_tp_stone
