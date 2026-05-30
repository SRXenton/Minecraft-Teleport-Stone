### Detect item in hand, for new teleport stone
### Called in: tick.json

## Summon / kill interaction for detection right click for the stick for edit
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] at @s \
    run function x_ts__teleport_stone:x_ts__code/items/siohas

execute as @a[nbt=!{SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] at @s \
    if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] \
        positioned ~ ~1.3 ~ \
            run kill @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone]


## Right click detection
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] on target at @s run function x_ts__teleport_stone:x_ts__code/misc/sts

execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s attack
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s interaction
