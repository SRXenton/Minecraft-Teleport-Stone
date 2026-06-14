### Set teleport stone - preparing
### Called in: diih2.mcfunction

## Write first values for teleport stone in storage
## Use gametime as id for the teleport stone
execute store result storage x_ts:teleport_stone data.stone.id int 1 run time query gametime
execute store result storage x_ts:teleport_stone data.stone.name int 1 run scoreboard players get _counter1 x_teleport_stone.counter

## Call: Start raycast
function x_ts__teleport_stone:x_ts__code/raycast/s1

## Add one to counter
scoreboard players add _counter1 x_teleport_stone.counter 1

## Remove stone values from storage
data remove storage x_ts:teleport_stone data.stone