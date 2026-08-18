### Find action in data storage repeat
### Call in xm/faidss.mcfunction

## Debug
# tellraw @s [{text:"faidsr: data.temp.values: "},{storage:"x_ts:teleport_stone",nbt:"data.temp.values"}]
# tellraw @s [{text:"faidsr: data.temp.admin: "},{storage:"x_ts:teleport_stone",nbt:"data.temp.admin"}]
# tellraw @s [{text:"-------"}]


## Write id from storage in scoreboard
execute store result score @s x_teleport_stone.temp_faids run data get storage x_ts:teleport_stone data.temp.values[0].id 1

## Debug
# tellraw @s [{text:"faidsr: @s x_teleport_stone.temp_faids: "},{score:{name:"@s",objective:"x_teleport_stone.temp_faids"}}]
# tellraw @s [{text:"faidsr: data.temp.values[0].id: "},{storage:"x_ts:teleport_stone",nbt:"data.temp.values[0].id"}]
# tellraw @s [{text:"faidsr: @s x_teleport_stone.admin_pages_id: "},{score:{name:"@s",objective:"x_teleport_stone.admin_pages_id"}}]

## Check ids are equal
execute if score @s x_teleport_stone.admin_pages_id = @s x_teleport_stone.temp_faids run data modify storage x_ts:teleport_stone data.temp.admin set from storage x_ts:teleport_stone data.temp.values[0]
execute if score @s x_teleport_stone.admin_pages_id = @s x_teleport_stone.temp_faids run return 1

## Remove entry from storage
data remove storage x_ts:teleport_stone data.temp.values[0]

## Call this function
execute if data storage x_ts:teleport_stone data.temp.values[0] run function x_ts__teleport_stone:x_ts__code/xm/faidsr


return 2