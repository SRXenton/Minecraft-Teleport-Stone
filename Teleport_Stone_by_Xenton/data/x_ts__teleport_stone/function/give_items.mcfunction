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

# Edit teleport stone
loot give @s loot x_ts__teleport_stone:edit_teleportstone

# Set teleport point
loot give @s loot x_ts__teleport_stone:set_teleportpoint
