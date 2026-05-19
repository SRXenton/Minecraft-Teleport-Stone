### Find action in data storage repeat

## Write id from storage in scoreboard
execute store result score @s x_teleport_stone.temp_faids run data get storage x_ts:teleport_stone data.temp.values[0].id 1

## Check ids are equal
execute if score @s x_teleport_stone.admin_pages_id = @s x_teleport_stone.temp_faids run data modify storage x_ts:teleport_stone data.temp.admin set from storage x_ts:teleport_stone data.temp.values[0]
execute if score @s x_teleport_stone.admin_pages_id = @s x_teleport_stone.temp_faids run return 1

## Remove entry from storage
data remove storage x_ts:teleport_stone data.temp.values[0]

## Call this function
function x_ts__teleport_stone:x_ts__code/misc/faidsr
