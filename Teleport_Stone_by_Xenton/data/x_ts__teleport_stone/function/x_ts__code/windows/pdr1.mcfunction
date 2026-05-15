# Prepare Dialog repeat 1


data modify storage x_ts:teleport_stone data.actions append from storage x_ts:teleport_stone data.actions_temp[0].action
data remove storage x_ts:teleport_stone data.actions_temp[0]

execute if data storage x_ts:teleport_stone data.actions_temp[0] run function x_ts__teleport_stone:x_ts__code/windows/pdr1
# with storage x_ts:teleport_stone data.actions_temp
