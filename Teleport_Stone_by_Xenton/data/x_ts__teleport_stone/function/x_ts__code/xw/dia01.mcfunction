### Teleport stones - dialogwindow
### Called in: xw/pd.mcfunction

## Enable trigger in scoreboard
scoreboard players enable @s x_teleport_stone.target

## Show dialog
$dialog show @s {\
    type:"minecraft:multi_action",\
    title:"Listen Test",\
    after_action:"close",\
    can_close_with_escape:true,\
    body:[],\
    columns:1,\
    pause:false,\
    actions:$(actions)\
}

return 1