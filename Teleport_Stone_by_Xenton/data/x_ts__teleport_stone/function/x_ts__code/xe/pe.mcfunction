### Preparing edit
### Call in tsft.mcfunction

## Prepare scorboards
scoreboard players set @s x_teleport_stone.target 0
scoreboard players set @s x_teleport_stone.admin_pages 0

## Check if the player admin
execute unless score @s x_teleport_stone.admin matches 1 run return -1

## Set scoreboard to call first admin page
scoreboard players set @s x_teleport_stone.admin_pages 1
