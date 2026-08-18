### Teleport Player preparing
### Call in: xt/ftc.mcfunction

## Prepare for teleport the coordinates from array
data modify storage x_ts:teleport_stone data.tpc.x set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.x
data modify storage x_ts:teleport_stone data.tpc.y set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.y
data modify storage x_ts:teleport_stone data.tpc.z set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.z

## Call: Teleport player
function x_ts__teleport_stone:x_ts__code/xt/tp with storage x_ts:teleport_stone data.tpc

## Remove values from storage
data remove storage x_ts:teleport_stone data.tpc

return 1