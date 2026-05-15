## Next step

scoreboard players add _counter x_teleport_stone.set_tp_stone 1
execute if score _counter x_teleport_stone.set_tp_stone matches 60 run function x_ts__teleport_stone:x_ts__code/raycast/tfa
execute if score _counter x_teleport_stone.set_tp_stone matches -1 run return -1


execute if block ~ ~ ~ #air positioned ^ ^ ^0.1 run function x_ts__teleport_stone:x_ts__code/raycast/nx


execute unless score _counter x_teleport_stone.set_tp_stone matches -1 unless block ~ ~ ~ #air positioned over world_surface run \
    function x_ts__teleport_stone:x_ts__code/raycast/pr
