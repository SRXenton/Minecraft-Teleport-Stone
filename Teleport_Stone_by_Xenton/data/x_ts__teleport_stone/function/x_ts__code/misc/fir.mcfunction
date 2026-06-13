### find interaction recursion

## Debug text
#$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run tellraw @a "$(teleport_coords)"

## Call function: show teleport coordinates at teleport stone
$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run function x_ts__teleport_stone:x_ts__code/misc/stcats $(teleport_coords)

$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run data modify storage x_ts:teleport_stone data.temp.changeid set value $(id)
#$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run tellraw @a "$(teleport_coords)"