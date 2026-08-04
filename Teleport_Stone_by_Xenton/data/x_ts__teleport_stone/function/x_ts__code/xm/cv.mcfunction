### Check value
### Call in: xw/pdr2.mcfunction

## Debug:
#$tellraw @s "x_ts.interaction.id.$(id)"
#$execute at @s if entity @e[type=minecraft:interaction,distance=..6, limit=1, tag=x_ts.interaction.id.$(id)] run tellraw @s "da"

## Run:

## Check is from player maximal 6 blocks the interaction away
$execute at @s if entity @e[type=minecraft:interaction,distance=..6, limit=1, tag=x_ts.interaction.id.$(id)] run return 1
return 0 

