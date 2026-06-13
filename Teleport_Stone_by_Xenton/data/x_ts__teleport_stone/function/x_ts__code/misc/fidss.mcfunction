### Find in DataSet Start

scoreboard objectives add x_teleport_stone.temp dummy
execute store result score _temp1 x_teleport_stone.temp run data get storage x_ts:teleport_stone data.temp.ds[0].id
execute store result score _temp2 x_teleport_stone.temp run data get storage x_ts:teleport_stone data.temp.changeid

execute if score _temp1 x_teleport_stone.temp = _temp2 x_teleport_stone.temp run function x_ts__teleport_stone:x_ts__code/misc/sncfts with storage x_ts:teleport_stone data

data remove storage x_ts:teleport_stone data.temp.ds[0]
execute if data storage x_ts:teleport_stone data.temp.ds[0] run function x_ts__teleport_stone:x_ts__code/misc/fidss