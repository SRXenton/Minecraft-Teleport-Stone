### Summon Interaction over heat @s for edit teleport stone
### Called in: diih2.mcfunction
###
### Note: rcs = Right click detection

# tellraw @a "lll111"

## Summon interactions as rightclick detection
execute unless entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_teleport_point] \
        positioned ~ ~1.3 ~ \
            run summon minecraft:interaction ~ ~ ~ {Tags:["x_ts.interaction.rcd.set_teleport_point"],width:0.5d,height:0.5d}

## Teleport interaction for rightclick detection to the player when moving
execute if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_teleport_point] \
    positioned ~ ~1.3 ~ \
        run teleport @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_teleport_point] ~ ~ ~

## Call function: find interaction start
execute as @e[tag=x_ts.interaction.all, distance=..10] run function x_ts__teleport_stone:x_ts__code/misc/fis