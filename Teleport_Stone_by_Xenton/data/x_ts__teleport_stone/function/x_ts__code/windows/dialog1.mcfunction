scoreboard players enable @s x_teleport_stone.target


$dialog show @s {\
    type:"minecraft:multi_action",\
    title:"Listen Test",\
    after_action:"close",\
    can_close_with_escape:true,\
    body:[],\
    pause:false,\
    actions:$(actions)\
}