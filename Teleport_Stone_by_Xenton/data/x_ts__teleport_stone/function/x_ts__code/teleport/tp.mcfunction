## Teleport Player

scoreboard players set @s x_teleport_stone.target 0
scoreboard players set _temp1 x_teleport_stone.target 0
tellraw @a "portet"
$teleport @s $(x) $(y) $(z)
