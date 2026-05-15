## Prepare dialog

data remove storage x_ts:teleport_stone data.actions_temp
data remove storage x_ts:teleport_stone data.actions
data merge storage x_ts:teleport_stone {data:{actions:[]}}

scoreboard players set _actions x_teleport_stone.counter 0

data modify storage x_ts:teleport_stone data.actions_temp set from storage x_ts:teleport_stone data.teleport_points

function x_ts__teleport_stone:x_ts__code/windows/pdr1
# with storage x_ts:teleport_stone data.actions_temp

function x_ts__teleport_stone:x_ts__code/windows/dialog1 with storage x_ts:teleport_stone data
