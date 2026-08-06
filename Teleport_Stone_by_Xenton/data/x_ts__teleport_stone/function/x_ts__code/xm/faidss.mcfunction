### Find action in data storage start
### Call in: xw/spfapd.mcfunction

## Open temporary scoreboard
scoreboard objectives add x_teleport_stone.temp_faids dummy

## Copy storage entries
data modify storage x_ts:teleport_stone data.temp.values set from storage x_ts:teleport_stone data.teleport_points

## Call: Find action in data storage repeat
function x_ts__teleport_stone:x_ts__code/xm/faidsr

## Close temporary scoreboard and remove temporary storage entries
scoreboard objectives remove x_teleport_stone.temp_faids
data remove storage x_ts:teleport_stone data.temp.values

return 1