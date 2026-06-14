### find interaction recursion

## Call function: show teleport coordinates at teleport stone
$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run function x_ts__teleport_stone:x_ts__code/misc/stcats $(teleport_coords)

## Write in data storage the id from the teleport stone
$execute if entity @e[tag=x_ts.interaction.id.$(id),distance=..10] run data modify storage x_ts:teleport_stone data.temp.changeid set value $(id)
