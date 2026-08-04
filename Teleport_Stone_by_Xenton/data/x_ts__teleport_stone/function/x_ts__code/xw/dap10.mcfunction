### Dialog Admin Page 10 - Edit Name
### Call in: spfapd.mcfunction
## $(name) - $(id) - Edit Name

## Enable trigger in  scoreboard
scoreboard players enable @s x_teleport_stone.admin_pages

## Show dialog
$dialog show @s {\
    "type": "minecraft:multi_action",\
    "title": "Edit Name",\
    "body": [{type:"minecraft:plain_message",contents:{text:"You are edit the name from Teleport Stone: $(name)"}}],\
    "inputs": [\
        {\
            "type": "minecraft:text",\
            "key": "newName",\
            "label": "Name of the Stone",\
            "label_visible": true,\
            "initial": "$(name)"\
        }\
    ],\
    "can_close_with_escape": true,\
    "pause": false,\
    "after_action": "close",\
    "actions": [\
        {\
            "label": "Save",\
            "action":{\
                type:"minecraft:dynamic/run_command",\
                template:"function x_ts__teleport_stone:x_ts__code/xm/snn {name:'\u0024(newName)', id:$(id)}"\
            }\
        },\
        {\
        "label": "Close",\
        "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 0"\
            }\
        }\
    ]\
}
