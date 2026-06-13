### Set teleport point - preparing
### Called in: diih2.mcfunction

## Write first values for teleport stone in storage
## Use gametime as id for the teleport stone
#execute store result storage x_ts:teleport_stone data.stone.id int 1 run time query gametime
#execute store result storage x_ts:teleport_stone data.stone.name int 1 run scoreboard players get _counter1 x_teleport_stone.counter

## Call: Start raycast
#function x_ts__teleport_stone:x_ts__code/raycast/rcfstps

## Add one to counter
#scoreboard players add _counter1 x_teleport_stone.counter 1

## Remove stone values from storage
#data remove storage x_ts:teleport_stone data.stone

## Check is teleport stone to fare away
$execute unless entity @e[tag=x_ts.interaction.id.$(changeid), distance=..10] run return 1

## Write position coordinates in storage
execute store result storage x_ts:teleport_stone data.stone.x double 1 run data get entity @s Pos[0]
execute store result storage x_ts:teleport_stone data.stone.y double 1 run data get entity @s Pos[1]
execute store result storage x_ts:teleport_stone data.stone.z double 1 run data get entity @s Pos[2]

data modify storage x_ts:teleport_stone data.stone.id set from storage x_ts:teleport_stone data.temp.changeid
data modify storage x_ts:teleport_stone data.temp.ds set from storage x_ts:teleport_stone data.teleport_points

## Call: Set Stone
function x_ts__teleport_stone:x_ts__code/misc/fidss

## Chat output
tellraw @s "Gesetzt!!"

## Set counter
scoreboard players set _counter x_teleport_stone.set_tp_stone -1
