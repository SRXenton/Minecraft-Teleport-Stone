## Add Admin button to dialog window
## Called in: pr.mcfunction

##!!!!!!!!!!!!!!!
## Depricated
##!!!!!!!!!!!!!!!

data modify storage x_ts:teleport_stone data.actions_temp append value \
    {\
        "id":1,\
        "action":{\
            "label":"Edit",\
            "action": {\
                "type": "minecraft:run_command",\
                "command": "trigger x_teleport_stone.target set 1"\
            }\
        },\
        "teleport_coords":{\
            "x":0.0d,\
            "y":0.0d,\
            "z":0.0d\
        }\
    }