### Detect interaction right click
### Called in: tick.json

## Call Prepare dialog for every player how has right click an interaction
execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] on target run function x_ts__teleport_stone:x_ts__code/windows/pd

## Remove from all interaction attack and interaction
execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] run data remove entity @s attack
execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] run data remove entity @s interaction