### Teleport Player
### Call in: tpp.mcfunction

## Remove teleport ids from scoreboard
scoreboard players set @s x_teleport_stone.target 0
scoreboard players set _temp1 x_teleport_stone.target 0

## Chatoutput
tellraw @a "portet"

## Teleport
$teleport @s $(x) $(y) $(z)
