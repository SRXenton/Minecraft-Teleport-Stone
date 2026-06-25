### Set New Name
### Call in dap10.mcfunction

## Prepare data storage 
data modify storage x_ts:teleport_stone data.temp_new_list set value []
data modify storage x_ts:teleport_stone data.temp_set_name set from storage x_ts:teleport_stone data.teleport_points

## Call the replace function
$function x_ts__teleport_stone:x_ts__code/misc/snnr {id:$(id), name:"$(name)"}

## Copy the dataset from the replace function
data modify storage x_ts:teleport_stone data.teleport_points set from storage x_ts:teleport_stone data.temp_new_list

## Remove Temp
data remove storage x_ts:teleport_stone data.temp_set_name
data remove storage x_ts:teleport_stone data.temp_new_list