### Summon Interaction over heat @s
### Called in: set_teleport_stone.mcfunction
###
### Note: rcs = Right click detection

## Summon interactions as rightclick detection
execute unless entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] \
        positioned ~ ~1.3 ~ \
            run summon minecraft:interaction ~ ~ ~ {Tags:["x_ts.interaction.rcd.set_stone"],width:0.5d,height:0.5d}

## Teleport interaction for rightclick detection to the player when moving
execute if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] \
    positioned ~ ~1.3 ~ \
        run teleport @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] ~ ~ ~