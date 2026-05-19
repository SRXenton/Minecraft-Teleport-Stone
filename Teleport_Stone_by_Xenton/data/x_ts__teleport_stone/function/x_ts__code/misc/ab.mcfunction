## Add button to dialog window
## Called in: pr.mcfunction

$data modify storage x_ts:teleport_stone data.teleport_points append value \
    {\
        "id":$(id),\
        "action":{\
            "label":"$(name)",\
            "action": {\
			    "type": "minecraft:run_command",\
			    "command": "trigger x_teleport_stone.target set $(id)"\
		    }\
        },\
        "teleport_coords":{\
            "x":$(x)d,\
            "y":$(y)d,\
            "z":$(z)d\
        }\
    }