## Remove teleport stone

$tellraw @a "Deleted: $(name) - $(id)"


function x_ts__teleport_stone:x_ts__code/misc/rfstps

$execute at @e[tag=x_ts.interaction.id.$(id)] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
$kill @e[tag=x_ts.interaction.id.$(id)]
