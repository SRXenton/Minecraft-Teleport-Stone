### Give player configitems and set admin
### Called in: Manual

## For the first time
scoreboard objectives add x_teleport_stone.counter dummy
execute unless score _isActive x_teleport_stone.counter matches 1 run function x_ts__teleport_stone:x_ts__code/xm/ia


## Set the player, how call this function as admin
scoreboard players set @s x_teleport_stone.admin 1
scoreboard players set @s x_teleport_stone.admin_pages 0
scoreboard players set @s x_teleport_stone.admin_pages_id 0


## Give player admin itmes
# Place new teleport stone
loot give @s loot x_ts__teleport_stone:set_teleportstone
# give @s minecraft:stick[minecraft:item_model="minecraft:guster_banner_pattern", custom_name="Place Teleportstone",custom_data={tag:"x_ts__teleportstone.item.place"}] 1

# Edit teleport stone
loot give @s loot x_ts__teleport_stone:edit_teleportstone
# give @s minecraft:stick[minecraft:item_model="minecraft:writable_book", custom_name="Edit Teleportstone",custom_data={tag:"x_ts__teleportstone.item.edit"}] 1

# Set teleport point
loot give @s loot x_ts__teleport_stone:set_teleportpoint
# give @s minecraft:stick[minecraft:item_model="minecraft:flower_banner_pattern", custom_name="Set Teleportpoint",custom_data={tag:"x_ts__teleportstone.item.point"}] 1
