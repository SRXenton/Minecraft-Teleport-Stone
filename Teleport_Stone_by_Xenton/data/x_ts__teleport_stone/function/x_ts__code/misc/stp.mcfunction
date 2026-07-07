### Set teleport point - preparing
### Called in: diih2.mcfunction


## Check is teleport stone to fare away
$execute unless entity @e[tag=x_ts.interaction.id.$(changeid), distance=..10] run return 1

## Write position coordinates in storage
execute store result storage x_ts:teleport_stone data.stone.x double 1 run data get entity @s Pos[0]
execute store result storage x_ts:teleport_stone data.stone.y double 1 run data get entity @s Pos[1]
execute store result storage x_ts:teleport_stone data.stone.z double 1 run data get entity @s Pos[2]

data modify storage x_ts:teleport_stone data.stone.id set from storage x_ts:teleport_stone data.temp.changeid
data modify storage x_ts:teleport_stone data.temp.ds set from storage x_ts:teleport_stone data.teleport_points
data modify storage x_ts:teleport_stone data.temp.nds set value []

## Call: Set Stone
function x_ts__teleport_stone:x_ts__code/misc/fidss

## Write new teleport_points, when new dataset is created
scoreboard objectives add x_teleport_stone.temp dummy
execute store result score _temp1 x_teleport_stone.temp if data storage x_ts:teleport_stone data.temp.nds[]
execute store result score _temp2 x_teleport_stone.temp if data storage x_ts:teleport_stone data.teleport_points[]
execute if score _temp1 x_teleport_stone.temp = _temp2 x_teleport_stone.temp run data modify storage x_ts:teleport_stone data.teleport_points set from storage x_ts:teleport_stone data.temp.nds
scoreboard objectives remove x_teleport_stone.temp

## Chat output
tellraw @a [{text:"You have set a new spawn from Teleport Stone:  ", color:"green"}, {storage:"x_ts:teleport_stone", nbt:"data.temp.changeName", color:"gold"}]

## Set counter
scoreboard players set _counter x_teleport_stone.set_tp_stone -1

## Remove temp
data remove storage x_ts:teleport_stone data.temp
data remove storage x_ts:teleport_stone data.stone