### Remove teleport stone
### Call in: xw/spfapd.mcfunction

## Chat output
tellraw @a [{text:"You have deleted the Teleport Stone: ", color:"green"}, {storage:"x_ts:teleport_stone", nbt:"data.temp.dialog.name", color:"gold"}]

## Call: Remove from storage teleport_points start
function x_ts__teleport_stone:x_ts__code/xm/rfstps

## Remove Blocks and interaction
$execute at @e[tag=x_ts.interaction.id.$(id)] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
$kill @e[tag=x_ts.interaction.id.$(id)]
