### Switch prepare for admin pages, deep
### Called in: spfap.json
###
### Notes:
### @s

## Write teleport_stone id in storage
execute store result storage x_ts:teleport_stone data.temp.id int 1 run scoreboard players get @s x_teleport_stone.admin_pages_id

## Find action in data storage
function x_ts__teleport_stone:x_ts__code/misc/faidss

## Build temporary storage for dialog
data modify storage x_ts:teleport_stone data.temp.dialog.id set from storage x_ts:teleport_stone data.temp.admin.id
data modify storage x_ts:teleport_stone data.temp.dialog.name set from storage x_ts:teleport_stone data.temp.admin.action.label

## Startpage
execute if score @s x_teleport_stone.admin_pages matches 1 run function x_ts__teleport_stone:x_ts__code/windows/dap1 with storage x_ts:teleport_stone data.temp.dialog


## Delete Page
execute if score @s x_teleport_stone.admin_pages matches 5 run function x_ts__teleport_stone:x_ts__code/windows/dap5 with storage x_ts:teleport_stone data.temp.dialog
execute if score @s x_teleport_stone.admin_pages matches 6 run function x_ts__teleport_stone:x_ts__code/misc/rmts with storage x_ts:teleport_stone data.temp.dialog



## Set page to 0
execute if score @s x_teleport_stone.admin_pages matches 1.. run scoreboard players set @s x_teleport_stone.admin_pages 0

## Remove storage temp
data remove storage x_ts:teleport_stone data.temp
