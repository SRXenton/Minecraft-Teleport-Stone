### Dialog Admin Page 1
### Call in: spfapd.mcfunction

## Enable trigger in  scoreboard
scoreboard players enable @s x_teleport_stone.admin_pages

## Show dialog
$dialog show @s {\
    "type": "minecraft:multi_action",\
    "title": "$(name) - $(id) - Delete",\
    "body": [{type:"minecraft:plain_message",contents:{text:"Remove Teleport Stone ?"}}],\
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