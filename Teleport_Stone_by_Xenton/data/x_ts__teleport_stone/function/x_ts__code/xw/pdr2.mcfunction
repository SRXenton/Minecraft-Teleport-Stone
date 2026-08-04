## Prepare Dialog repeat 2
## Called in: pd.mcfunction

## Write id from storage in scoreboard
execute store result score @s x_teleport_stone.admin_pages_id run data get storage x_ts:teleport_stone data.actions_temp[0].id

## Call: Check Value and write 0 or 1 in storage
execute store result storage x_ts:teleport_stone data.temp.success int 1 run function x_ts__teleport_stone:x_ts__code/misc/cv with storage x_ts:teleport_stone data.actions_temp[0]

## Check storage
execute unless data storage x_ts:teleport_stone {data:{temp:{success:0}}} run return 0

## Remove values
scoreboard players set @s x_teleport_stone.admin_pages_id 0
data remove storage x_ts:teleport_stone data.actions_temp[0]

## Call this function, when entries in storage
execute if data storage x_ts:teleport_stone data.actions_temp[0] run function x_ts__teleport_stone:x_ts__code/xw/pdr2
