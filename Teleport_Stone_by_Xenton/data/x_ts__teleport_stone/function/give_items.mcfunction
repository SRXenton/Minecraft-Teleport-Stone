### Give player configitems and set admin
### Called in: Manuel

## For the first time
execute unless score _counter1 x_teleport_stone.counter matches -10.. run function x_ts__teleport_stone:x_ts__code/misc/ia


## Set the player, how call this function as admin
scoreboard players set @s x_teleport_stone.admin 1
scoreboard players set @s x_teleport_stone.admin_pages 0
scoreboard players set @s x_teleport_stone.admin_pages_id 0


## Give player admin itmes
# Place new teleport stone
give @s minecraft:stick[minecraft:item_model="minecraft:guster_banner_pattern", custom_name="Place Teleportstone",custom_data={tag:"x_ts__teleportstone.item.place"}] 1

# Edit teleport stone
give @s minecraft:stick[minecraft:item_model="minecraft:writable_book", custom_name="Edit Teleportstone",custom_data={tag:"x_ts__teleportstone.item.edit"}] 1

# Set teleport point
give @s minecraft:stick[minecraft:item_model="minecraft:flower_banner_pattern", custom_name="Set Teleportpoint",custom_data={tag:"x_ts__teleportstone.item.point"}] 1
