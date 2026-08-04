### Dialog Admin Page 1
### Call in: spfapd.mcfunction
#$(name) - $(id)
## Enable trigger in scoreboard
scoreboard players enable @s x_teleport_stone.admin_pages


## Show dialog
$dialog show @s {\
    "type": "minecraft:multi_action",\
    "title": "Adminpage",\
    "body": [{type:"minecraft:plain_message",contents:{text:"You are edit the Teleport Stone: $(name)"}}],\
    "inputs": [],\
    "can_close_with_escape": true,\
    "pause": false,\
    "after_action": "close",\
    "columns":1,\
    "exit_action": {\
        "label": "Close",\
        "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 0"\
            }\
    },\
    "actions": [\
        {\
            "label": "Set name",\
            "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 10"\
            }\
        },\
        {\
            "label": "Delete Teleport Stone",\
            "action":{\
                type:"minecraft:run_command",\
                command:"trigger x_teleport_stone.admin_pages set 5"\
            }\
        }\
    ]\
}