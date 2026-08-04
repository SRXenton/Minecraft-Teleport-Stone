#### Detect item in hand, for new teleport stone
#### Called in: xi/diih.mcfunction

### Place Teleport Stone

## Summon / kill interaction for detection right click for the stick for edit
execute as @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] \
    run function x_ts__teleport_stone:x_ts__code/xi/siohas

execute as @s[nbt=!{SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] \
    if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] \
        positioned ~ ~1.3 ~ \
            run kill @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone]


## Right click detection
# tellraw @a "1"
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] on target at @s run function x_ts__teleport_stone:x_ts__code/xm/sts

execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s attack
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s interaction


### Set target for teleport

## Summon / kill interaction for detection right click for the stick for set teleport point
execute as @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.point"}}}}] \
    run function x_ts__teleport_stone:x_ts__code/xi/siohasfets

execute as @s[nbt=!{SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.point"}}}}] \
    if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_teleport_point] \
        positioned ~ ~1.3 ~ \
            run kill @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_teleport_point]

# tellraw @a "2"

## Right click detection
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_teleport_point] on target at @s \
    run function x_ts__teleport_stone:x_ts__code/xm/stp with storage x_ts:teleport_stone data.temp

execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_teleport_point] run data remove entity @s attack
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_teleport_point] run data remove entity @s interaction

data remove storage x_ts:teleport_stone data.temp