### Find teleport coordinates
### Call in: xt/phtt.mcfunction

## Copy id from first object in scoreboard
execute store result score _temp1 x_teleport_stone.target run data get storage x_ts:teleport_stone data.target_temp[0].id 1

## Check if scoreboard values are equals, then call Teleport Player preparing, or return when player is ported
execute if score @s x_teleport_stone.target = _temp1 x_teleport_stone.target run function x_ts__teleport_stone:x_ts__code/xt/tpp
execute if score @s x_teleport_stone.target matches 0 run return -1

## Remove first object from array
data remove storage x_ts:teleport_stone data.target_temp[0]

## Call this function, when it exist a first object in array
execute if data storage x_ts:teleport_stone data.target_temp[0] run function x_ts__teleport_stone:x_ts__code/xt/ftc
