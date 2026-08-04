### Switch prepare for admin pages
### Called in: tick.json

## Check is player admin
execute as @a[scores={x_teleport_stone.admin_pages=1..}] unless score @s x_teleport_stone.admin matches 1 run scoreboard players set @s x_teleport_stone.admin_pages 0

## Call: Switch prepare for admin pages, deep
execute as @a[scores={x_teleport_stone.admin_pages=1..}] run function x_ts__teleport_stone:x_ts__code/xw/spfapd
