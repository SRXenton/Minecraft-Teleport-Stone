### find interaction next step
### Called in: xm/fir.mcfunction


## Call Function: find interaction recursion
function x_ts__teleport_stone:x_ts__code/xm/fir with storage x_ts:teleport_stone data.temp.ds[0]

## Delete first data set and call this function, when an other dataset is exist on position 0
data remove storage x_ts:teleport_stone data.temp.ds[0]
execute if data storage x_ts:teleport_stone data.temp.ds[0] run function x_ts__teleport_stone:x_ts__code/xm/fins
