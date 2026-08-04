### Teleport Player
### Call in: xt/tpp.mcfunction

## Remove teleport ids from scoreboard
scoreboard players set @s x_teleport_stone.target 0
scoreboard players set _temp1 x_teleport_stone.target 0

## Chatoutput
tellraw @a [{text:"You are teleported to ", color:"green"}, {storage:"x_ts:teleport_stone", nbt:"data.target_temp[0].action.label", color:"gold"}]

## Teleport
$teleport @s $(x) $(y) $(z)
