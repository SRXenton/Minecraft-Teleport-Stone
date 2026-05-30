### Init all
### Called in: give_items.mcfunction

## Init
execute unless data storage x_ts:teleport_stone {data:{actions:[]}} run data merge storage x_ts:teleport_stone {data:{actions:[]}}
execute unless data storage x_ts:teleport_stone {data:{teleport_points:[]}} run data merge storage x_ts:teleport_stone {data:{teleport_points:[]}}
scoreboard objectives add x_teleport_stone.counter dummy
scoreboard objectives add x_teleport_stone.target trigger
scoreboard objectives add x_teleport_stone.admin dummy
scoreboard objectives add x_teleport_stone.admin_pages trigger
scoreboard objectives add x_teleport_stone.admin_pages_id trigger
scoreboard players set _counter1 x_teleport_stone.counter 0