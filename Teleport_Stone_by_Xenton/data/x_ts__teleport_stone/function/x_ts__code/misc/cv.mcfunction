## Check value
# Debung:

#$tellraw @s "x_ts.interaction.id.$(id)"
#$execute at @s if entity @e[type=minecraft:interaction,distance=..6, limit=1, tag=x_ts.interaction.id.$(id)] run tellraw @s "da"

# Run:

$execute at @s if entity @e[type=minecraft:interaction,distance=..6, limit=1, tag=x_ts.interaction.id.$(id)] run return 1

return 0 