## Detect interaction right click
## Called in: tick.json

execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] on target run function x_ts__teleport_stone:x_ts__code/windows/pd

execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] run data remove entity @s attack
execute as @e[type=minecraft:interaction,tag=x_ts.interaction.all] run data remove entity @s interaction