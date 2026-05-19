# Remove from storage teleport_points start

scoreboard objectives add x_teleport_stone.temp_rfstp dummy
scoreboard players set _temp1 x_teleport_stone.temp_rfstp 0
data modify storage x_ts:teleport_stone data.temp.rfstp.values set from storage x_ts:teleport_stone data.teleport_points
data modify storage x_ts:teleport_stone data.temp.rfstp.new set value []

function x_ts__teleport_stone:x_ts__code/misc/rfstpr

data modify storage x_ts:teleport_stone data.teleport_points set from storage x_ts:teleport_stone data.temp.rfstp.new
data remove storage x_ts:teleport_stone data.temp.rfstp
scoreboard objectives remove x_teleport_stone.temp_rfstp
