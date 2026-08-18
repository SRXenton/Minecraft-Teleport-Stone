### Detect interaction right click, under function
### Called in: xm/dirc.mcfunction

## Call Prepare dialog for every player how has right click an interaction
execute as @s on target run function x_ts__teleport_stone:x_ts__code/xw/pd

## Remove from all interaction attack and interaction
data remove entity @s attack
data remove entity @s interaction

return 1