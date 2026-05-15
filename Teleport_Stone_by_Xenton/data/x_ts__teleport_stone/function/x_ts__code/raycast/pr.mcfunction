## Point reached

execute store result storage x_ts:teleport_stone data.stone.x double 1 run data get entity @s Pos[0]
execute store result storage x_ts:teleport_stone data.stone.y double 1 run data get entity @s Pos[1]
execute store result storage x_ts:teleport_stone data.stone.z double 1 run data get entity @s Pos[2]

function x_ts__teleport_stone:x_ts__code/misc/ab with storage x_ts:teleport_stone data.stone

function x_ts__teleport_stone:x_ts__code/object/stone with storage x_ts:teleport_stone data.stone
tellraw @s "Gesetzt"
scoreboard players set _counter x_teleport_stone.set_tp_stone -1
