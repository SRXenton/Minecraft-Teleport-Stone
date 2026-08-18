### Find in DataSet Start
### Called in: xm/stp.mcfunction

## Make temp scoreboard
scoreboard objectives add x_teleport_stone.temp dummy

## Write data from data storage in scoreboard
execute store result score _temp1 x_teleport_stone.temp run data get storage x_ts:teleport_stone data.temp.ds[0].id
execute store result score _temp2 x_teleport_stone.temp run data get storage x_ts:teleport_stone data.temp.changeid

## Compare the two scoreboard values
execute if score _temp1 x_teleport_stone.temp = _temp2 x_teleport_stone.temp run function x_ts__teleport_stone:x_ts__code/xm/sncfts with storage x_ts:teleport_stone data

## Add Value in data storage
data modify storage x_ts:teleport_stone data.temp.nds append from storage x_ts:teleport_stone data.temp.ds[0]

## Recursion
data remove storage x_ts:teleport_stone data.temp.ds[0]
execute if data storage x_ts:teleport_stone data.temp.ds[0] run function x_ts__teleport_stone:x_ts__code/xm/fidss

return 1