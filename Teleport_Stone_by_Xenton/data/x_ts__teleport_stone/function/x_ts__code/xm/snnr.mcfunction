### Set New Name Repeat
### Call in: snn.mcfunction

## Copy id to check is the id equals from macro, to set the new name
data modify storage x_ts:teleport_stone data.temp_v set from storage x_ts:teleport_stone data.temp_set_name[0].id
$execute if data storage x_ts:teleport_stone {data:{temp_v:$(id)}} run data modify storage x_ts:teleport_stone data.temp_set_name[0].action.label set value "$(name)"
data remove storage x_ts:teleport_stone data.temp_v

## Copy dataset
data modify storage x_ts:teleport_stone data.temp_new_list append from storage x_ts:teleport_stone data.temp_set_name[0]

## Remove first, when an other is exist, then call this function
data remove storage x_ts:teleport_stone data.temp_set_name[0]
$execute if data storage x_ts:teleport_stone data.temp_set_name[0] run function x_ts__teleport_stone:x_ts__code/misc/snnr {id:$(id), name:"$(name)"}
