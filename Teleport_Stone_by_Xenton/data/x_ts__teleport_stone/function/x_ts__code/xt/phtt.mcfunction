### Player has teleport target
### Called in: xt/tsft.mcfunction

## Copy values from teleport_points in target_temp
data modify storage x_ts:teleport_stone data.target_temp set from storage x_ts:teleport_stone data.teleport_points

## Call: Find teleport coordinates
function x_ts__teleport_stone:x_ts__code/xt/ftc

## Remove temp values from storage
data remove storage x_ts:teleport_stone data.target_temp
