### Prepare dialog
### Called in: dirc.mcfunction

## Prepare datastorage
data merge storage x_ts:teleport_stone {data:{actions:[]}}


## Prepare scoreboard
scoreboard players set _actions x_teleport_stone.counter 0

## Adminmode
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.edit"}}}},scores={x_teleport_stone.admin=1}] \
    run function x_ts__teleport_stone:x_ts__code/misc/am
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.edit"}}}},scores={x_teleport_stone.admin=1}] \
    run return 1



## Usermode
# Copy data from data.teleport_points to data.actions_temp -> Normal user
data modify storage x_ts:teleport_stone data.actions_temp set from storage x_ts:teleport_stone data.teleport_points
# Preparing dialog window
function x_ts__teleport_stone:x_ts__code/xw/pdr1
# Call dialog windows with data from storage
function x_ts__teleport_stone:x_ts__code/xw/dialog1 with storage x_ts:teleport_stone data

## Remove no more needes data storages
data remove storage x_ts:teleport_stone data.actions_temp
data remove storage x_ts:teleport_stone data.actions
