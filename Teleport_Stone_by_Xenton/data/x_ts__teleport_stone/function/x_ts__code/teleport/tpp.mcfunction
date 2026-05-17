## Teleport Player preparing

data modify storage x_ts:teleport_stone data.tpc.x set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.x
data modify storage x_ts:teleport_stone data.tpc.y set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.y
data modify storage x_ts:teleport_stone data.tpc.z set from storage x_ts:teleport_stone data.target_temp[0].teleport_coords.z



function x_ts__teleport_stone:x_ts__code/teleport/tp with storage x_ts:teleport_stone data.tpc