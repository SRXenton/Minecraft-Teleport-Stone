### Remove teleport stone
### Call in:

## Chat output
$tellraw @a "Deleted: $(name) - $(id)"

## Call: Remove from storage teleport_points start
function x_ts__teleport_stone:x_ts__code/misc/rfstps

## Remove Blocks and interaction
$execute at @e[tag=x_ts.interaction.id.$(id)] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
$kill @e[tag=x_ts.interaction.id.$(id)]
