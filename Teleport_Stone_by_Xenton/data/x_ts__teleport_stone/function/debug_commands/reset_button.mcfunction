# Structure
# 
# data.teleport_points:[
#     {
#         "id":"1",
#         "action":{label:"1"},
#         "teleport_coords":{"x":1,"y":1,"z":1}
#     },
# ]


data remove storage x_ts:teleport_stone data
data merge storage x_ts:teleport_stone {data:{actions:[]}}
data merge storage x_ts:teleport_stone {data:{teleport_points:[]}}


scoreboard objectives remove x_teleport_stone.target
scoreboard objectives add x_teleport_stone.target trigger

scoreboard objectives remove x_teleport_stone.admin
scoreboard objectives add x_teleport_stone.admin dummy
scoreboard players set @s x_teleport_stone.admin 1

scoreboard objectives remove x_teleport_stone.admin_pages
scoreboard objectives add x_teleport_stone.admin_pages trigger
scoreboard players set @s x_teleport_stone.admin_pages 0

scoreboard objectives remove x_teleport_stone.admin_pages_id
scoreboard objectives add x_teleport_stone.admin_pages_id trigger
scoreboard players set @s x_teleport_stone.admin_pages_id 0

scoreboard objectives remove x_teleport_stone.counter
scoreboard objectives add x_teleport_stone.counter dummy
scoreboard players set _counter1 x_teleport_stone.counter 0

execute at @e[tag=x_ts.interaction.all] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
kill @e[tag=x_ts.interaction.all]

execute at @e[tag=ti] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
kill @e[tag=ti]