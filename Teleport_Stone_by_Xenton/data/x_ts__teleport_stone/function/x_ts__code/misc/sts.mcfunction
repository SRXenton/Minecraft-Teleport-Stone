execute store result storage x_ts:teleport_stone data.stone.id int 1 run scoreboard players get _counter1 x_teleport_stone.counter
execute store result storage x_ts:teleport_stone data.stone.name int 1 run scoreboard players get _counter1 x_teleport_stone.counter

function x_ts__teleport_stone:x_ts__code/misc/ab with storage x_ts:teleport_stone data.stone

function x_ts__teleport_stone:x_ts__code/raycast/s1

scoreboard players add _counter1 x_teleport_stone.counter 1

data remove storage x_ts:teleport_stone data.stone