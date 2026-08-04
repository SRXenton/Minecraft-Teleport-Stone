### Admin mode, in Dialog teleport stone
### Called in: xw/pd.mcfunction

## Copy data
data modify storage x_ts:teleport_stone data.actions_temp set from storage x_ts:teleport_stone data.teleport_points
## Call: Prepare Dialog repeat 2
function x_ts__teleport_stone:x_ts__code/xw/pdr2
## Set pages for admin to 1
scoreboard players set @s x_teleport_stone.admin_pages 1
