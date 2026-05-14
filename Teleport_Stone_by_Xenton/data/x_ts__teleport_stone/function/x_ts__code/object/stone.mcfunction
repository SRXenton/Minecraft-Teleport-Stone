# execute at @e[tag=x_ts.interaction.all] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
# kill @e[tag=x_ts.interaction.all]

fill ~-1 ~ ~-1 ~1 ~4 ~1 air
setblock ~ ~ ~ minecraft:lodestone
setblock ~ ~1 ~ stone_brick_wall
setblock ~ ~2 ~ minecraft:waxed_weathered_copper_bulb[powered=false,lit=true]
$execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {width:1.2f,height:3.1f,Tags:["x_ts.interaction.all","x_ts.interaction.id.$(id)"]}
