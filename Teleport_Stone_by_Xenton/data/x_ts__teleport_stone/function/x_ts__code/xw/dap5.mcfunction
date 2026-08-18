### Dialog Admin Page 5 - Delete Stone
### Call in: xw/spfapd.mcfunction
### Possible macros: $(name), $(id)

## Enable trigger in  scoreboard
scoreboard players enable @s x_teleport_stone.admin_pages

## Show dialog
$dialog show @s {\
    "type": "minecraft:multi_action",\
    "title": "Remove Teleport-Stone",\
    "body": [\
        {type:"minecraft:plain_message",contents:{text:"You are sure to delete the Teleport-Stone $(name)?"}}\
    ],\
    "inputs": [],\
    "can_close_with_escape": true,\
    "pause": false,\
    "after_action": "close",\
    "exit_action": {\
        "label": "Close",\
        "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 0"\
            }\
    },\
    "actions": [\
        {\
            "label": "Yes",\
            "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 6"\
            }\
        },\
        {\
        "label": "No",\
        "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 0"\
            }\
        }\
    ]\
}

return 1