## Find teleport coordinates

execute store result score _temp1 x_teleport_stone.target run data get storage x_ts:teleport_stone data.target_temp[0].id 1
execute if score @s x_teleport_stone.target = _temp1 x_teleport_stone.target run function x_ts__teleport_stone:x_ts__code/teleport/tpp
execute if score @s x_teleport_stone.target matches 0 run return -1

data remove storage x_ts:teleport_stone data.target_temp[0]

execute if data storage x_ts:teleport_stone data.target_temp[0] run function x_ts__teleport_stone:x_ts__code/teleport/ftc
