### find interaction start
##ä Called in: xi/siohasfets.mcfunction

## Make Copy from teleport points
data modify storage x_ts:teleport_stone data.temp.ds set from storage x_ts:teleport_stone data.teleport_points

## Call function: find interaction next step
function x_ts__teleport_stone:x_ts__code/xm/fins

