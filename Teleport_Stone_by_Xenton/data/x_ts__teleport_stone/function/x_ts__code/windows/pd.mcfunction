### Prepare dialog
### Called in: dirc.mcfunction

## Prepare datastorage
data merge storage x_ts:teleport_stone {data:{actions:[]}}


## Prepare scoreboard
scoreboard players set _actions x_teleport_stone.counter 0


## Adminmode
# data modify storage x_ts:teleport_stone data.actions_temp set from storage x_ts:teleport_stone data.teleport_points
# function x_ts__teleport_stone:x_ts__code/windows/pdr2
# scoreboard players set @s x_teleport_stone.admin_pages 1



## Usermode
# Copy data from data.teleport_points to data.actions_temp -> Normal user
data modify storage x_ts:teleport_stone data.actions_temp set from storage x_ts:teleport_stone data.teleport_points
# Preparing dialog window
function x_ts__teleport_stone:x_ts__code/windows/pdr1
# Call dialog windows with data from storage
function x_ts__teleport_stone:x_ts__code/windows/dialog1 with storage x_ts:teleport_stone data

## Remove no more needes data storages
data remove storage x_ts:teleport_stone data.actions_temp
data remove storage x_ts:teleport_stone data.actions
