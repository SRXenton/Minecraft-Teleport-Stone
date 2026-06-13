### Set New Coordinates For Teleport Stone

$tellraw @a "$(stone)"

data modify storage x_ts:teleport_stone data.temp.new_point set from storage x_ts:teleport_stone data.temp.ds[0]
data modify storage x_ts:teleport_stone data.temp.new_point.teleport_coords set from storage x_ts:teleport_stone data.stone