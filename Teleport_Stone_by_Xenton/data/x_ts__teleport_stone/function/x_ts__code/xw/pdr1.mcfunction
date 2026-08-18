### Prepare Dialog repeat 1
### Called in: xw/pd.mcfunction

## Add from first object action from action_temp in data.actions and remove object from action_temp
data modify storage x_ts:teleport_stone data.actions append from storage x_ts:teleport_stone data.actions_temp[0].action
data remove storage x_ts:teleport_stone data.actions_temp[0]

## Check is an object in action_temp, and call this function
execute if data storage x_ts:teleport_stone data.actions_temp[0] run function x_ts__teleport_stone:x_ts__code/xw/pdr1

return 1