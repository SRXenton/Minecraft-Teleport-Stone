## Point reached

function x_ts__teleport_stone:x_ts__code/object/stone with storage x_ts:teleport_stone data.stone
tellraw @s "Gesetzt"
scoreboard players set _counter x_teleport_stone.set_tp_stone -1