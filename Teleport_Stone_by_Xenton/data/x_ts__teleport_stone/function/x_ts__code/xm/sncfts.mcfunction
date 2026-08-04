### Set New Coordinates For Teleport Stone
### Called in: fidss.mcfunction

## Text output
#$tellraw @a "$(stone)"

## Modify data storage
data remove storage x_ts:teleport_stone data.stone.id
data modify storage x_ts:teleport_stone data.temp.ds[0].teleport_coords set from storage x_ts:teleport_stone data.stone
