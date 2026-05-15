# Minecraft-Teleport-Stone in Alpha 0.1
Datapack for Minecraft Java.<br>
- V 1.21.11
- V 26.1.x

Place with command a teleport stone in the world.<br>
With a right click, you can teleport between the stones.<br>
No knowlage needed over commands. All needed commands in this description


# !!! Attantion !!!

! This datapack is in alpha status, not all functions available!

#

# Installation:
- Put this datapack in your savegame, in the folder datapacks<br>
- - Example: .minecraft - saves - YourWorld - datapacks - Teleport_Stone_by_Xenton...<br>

- After reload with command "/reload" your world, you can check is the datapack available with the command "/datapack list".<br>
    From Github as folder:<br>
        When you find in green brackets: [file/Teleport_Stone_by_xenton (world)], than the datapack is correct installed<br>
    (Coming Soon) From Curseforge as ZIP: <br>
         When you find in green brackets: [file/Teleport_Stone_x-x-x.zip (world)], than the datapack is correct installed.<br>
- You don't need to do anything to initalise this datapack, it will be run automaticly after correct install.<br>


# Run:
To set a Teleportstone:<br>
- /function x_ts__teleport_stone:set_teleport_stone<br>

For Debugging:<br>
Remove all Teleport Stones in render distance and reset all scoreboards and data storages.<br>
- /function x_ts__teleport_stone:debug_commands/reset_button<br>




# Changelog:
Alpha 0.2.1:<br>
- New: Write Spawn coordinates for teleport for every teleport stone in data storage<br>
- Change: Remove bug with number of teleport stone, when stone is doesn't set<br>

Alpha 0.2:<br>
- New: automatic ID for every teleport stone in data storage<br>
- Change: Data storage structure for teleport position<br>
- Change: Dialog window update all buttons, every time between call and show the window<br>
