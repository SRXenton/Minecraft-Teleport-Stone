## Player has teleport target

data remove storage x_ts:teleport_stone data.target_temp
data modify storage x_ts:teleport_stone data.target_temp set from storage x_ts:teleport_stone data.teleport_points

function x_ts__teleport_stone:x_ts__code/teleport/ftc

