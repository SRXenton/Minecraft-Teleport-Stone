### Remove from storage teleport_points repeat
### Call in xm/rtfstps.mcfunction

## Copy id from storage in scoreboard and check if the ids from scoreboards are not equals, then write the object in new
execute store result score @s x_teleport_stone.temp_rfstp run data get storage x_ts:teleport_stone data.temp.rfstp.values[0].id
execute unless score @s x_teleport_stone.temp_rfstp = @s x_teleport_stone.admin_pages_id run data modify storage x_ts:teleport_stone data.temp.rfstp.new append from storage x_ts:teleport_stone data.temp.rfstp.values[0]

## Remove the object from storage
data remove storage x_ts:teleport_stone data.temp.rfstp.values[0]

## When an object is exist, then call this function
execute if data storage x_ts:teleport_stone data.temp.rfstp.values[0] run function x_ts__teleport_stone:x_ts__code/xm/rfstpr

## Set scoreboard, when all it is done
scoreboard players set _temp1 x_teleport_stone.temp_rfstp 1
