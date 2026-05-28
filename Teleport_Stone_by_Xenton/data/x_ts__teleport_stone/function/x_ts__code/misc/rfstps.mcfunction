### Remove from storage teleport_points start
### Call in: rmts.mcfunction

## Add temporary scoreboard and values
scoreboard objectives add x_teleport_stone.temp_rfstp dummy
scoreboard players set _temp1 x_teleport_stone.temp_rfstp 0

## Copy values from storage in temp storage
data modify storage x_ts:teleport_stone data.temp.rfstp.values set from storage x_ts:teleport_stone data.teleport_points
data modify storage x_ts:teleport_stone data.temp.rfstp.new set value []

## Call: Remove from storage teleport_points repeat
function x_ts__teleport_stone:x_ts__code/misc/rfstpr

## Copy the new teleport points list from new in teleport_points
data modify storage x_ts:teleport_stone data.teleport_points set from storage x_ts:teleport_stone data.temp.rfstp.new

## Remove temporary scoreboard and storage
data remove storage x_ts:teleport_stone data.temp.rfstp
scoreboard objectives remove x_teleport_stone.temp_rfstp
