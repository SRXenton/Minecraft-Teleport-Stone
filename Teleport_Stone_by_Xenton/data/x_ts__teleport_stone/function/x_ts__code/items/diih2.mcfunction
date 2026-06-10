### Detect item in hand, for new teleport stone
### Called in: diih.mcfunction

## Summon / kill interaction for detection right click for the stick for edit
execute as @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] \
    run function x_ts__teleport_stone:x_ts__code/items/siohas

execute as @s[nbt=!{SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{tag:"x_ts__teleportstone.item.place"}}}}] \
    if entity @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone] \
        positioned ~ ~1.3 ~ \
            run kill @e[type=minecraft:interaction,distance=..2,tag=x_ts.interaction.rcd.set_stone]


## Right click detection
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] on target at @s run function x_ts__teleport_stone:x_ts__code/misc/sts

execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s attack
execute as @e[type=minecraft:interaction, tag=x_ts.interaction.rcd.set_stone] run data remove entity @s interaction
