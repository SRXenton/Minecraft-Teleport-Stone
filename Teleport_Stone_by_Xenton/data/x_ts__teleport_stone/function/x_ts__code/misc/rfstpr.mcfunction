# Remove from storage teleport_points repeat

execute store result score @s x_teleport_stone.temp_rfstp run data get storage x_ts:teleport_stone data.temp.rfstp.values[0].id
execute unless score @s x_teleport_stone.temp_rfstp = @s x_teleport_stone.admin_pages_id run data modify storage x_ts:teleport_stone data.temp.rfstp.new append from storage x_ts:teleport_stone data.temp.rfstp.values[0]

data remove storage x_ts:teleport_stone data.temp.rfstp.values[0]

execute if data storage x_ts:teleport_stone data.temp.rfstp.values[0] run function x_ts__teleport_stone:x_ts__code/misc/rfstpr

scoreboard players set _temp1 x_teleport_stone.temp_rfstp 1
