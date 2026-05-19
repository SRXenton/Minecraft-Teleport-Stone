### Next step - In raycast
### Call in: s1. mcfunction

## Add 1 to count and check is _counter 60 or greater
scoreboard players add _counter x_teleport_stone.set_tp_stone 1
execute if score _counter x_teleport_stone.set_tp_stone matches 60.. run function x_ts__teleport_stone:x_ts__code/raycast/tfa

## Return, when it was to far away or point reached
execute if score _counter x_teleport_stone.set_tp_stone matches -1 run return -1

## Next point on raycast, if air then call this function
execute if block ~ ~ ~ #air positioned ^ ^ ^0.1 run function x_ts__teleport_stone:x_ts__code/raycast/nx

## Call point reached, when block is not air, and not to far away
execute unless score _counter x_teleport_stone.set_tp_stone matches -1 unless block ~ ~ ~ #air positioned over world_surface run \
    function x_ts__teleport_stone:x_ts__code/raycast/pr
