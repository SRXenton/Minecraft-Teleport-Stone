# Minecraft-Teleport-Stone
Datapack for Minecraft Java.<br>
- V 1.21.11
- V 26.1.x

Place with command a teleport stone in the world.<br>
With a right click, you can teleport between the stones.<br>
No knowlage needed over commands. All needed commands in this description


# !!! Attantion !!!

! This datapack is in alpha status, not all functions available!<br>


# Installation:
- Put this datapack in your savegame, in the folder datapacks
- - Example: .minecraft - saves - YourWorld - datapacks - Teleport_Stone_by_Xenton...

- After reload with command "/reload" your world, you can check is the datapack available with the command "/datapack list".<br>
    From Github as folder:<br>
        When you find in green brackets: [file/Teleport_Stone_by_xenton (world)], than the datapack is correct installed<br>
    (Coming Soon) From Curseforge as ZIP: <br>
         When you find in green brackets: [file/Teleport_Stone_x-x-x.zip (world)], than the datapack is correct installed.<br>
- You don't need to do anything to initalise this datapack, it will be run automaticly after correct install.<br>


# Run:
Since Alpha 0.4<br>
- To get Config/Admin items
- - /function x_ts__teleport_stone:give_items
- - - With Item: "Place Teleportstone", you can with a right click on a block, place the teleport stone over the highest block
- - - - When the block is to far away, you get the message in chat "Zu weit weg", and no teleport stone will be set
- - - With Item: "Edit Teleportstone", you can with a right click on a teleport stone, the open the admin dialog
- - - - Button: Set name, have actual no function
- - - - Button: Delete - Delete this teleport stone, and remove it from the teleporatation list


Until Alpha 0.3:<br>
- To set a Teleportstone:
- - /function x_ts__teleport_stone:set_teleport_stone

- For Debugging:
- - Remove all Teleport Stones in render distance and reset all scoreboards and data storages.
- - /function x_ts__teleport_stone:debug_commands/reset_button




# Changelog:
Alpha 0.4<br>
- New: Admin dialog, when right click teleport stone<br>
- - 2 Buttons: Set Name and Delete<br>
- - - Button: Set Name: without function<br>
- - - Button: Delete: Delete the teleport stone, and remove it from the teleport list<br>

- New: Function to give admin items<br>
- - With "/function x_ts__teleport_stone:give_items" you get the two admin items and set you as admin for this datapack<br>
- - Item: With name "Place Teleportstone", with right click on a block, you can now place the teleport stone<br>
- - Item: With name "Edit Teleportstone", with right click on a teleport stone, open the admin dialog<br>

- Remove Functions/Command:<br>
- - /function x_ts__teleport_stone:set_teleport_stone<br>
- - /function x_ts__teleport_stone:debug_commands/add_button<br>
- - /function x_ts__teleport_stone:debug_commands/reset_button<br>
- - /function x_ts__teleport_stone:debug_commands/start_dialog<br>

Alpha 0.3<br>
- New: Teleportation between Teleport-Stones<br>
- - All set Teleportstones set with /function x_ts__teleport_stone:set_teleport_stone, now in the dialog list<br>
- New: Todolist for the beta phase: Todo.txt in basefolder<br>

Alpha 0.2.1:<br>
- New: Write Spawn coordinates for teleport for every teleport stone in data storage<br>
- Change: Remove bug with number of teleport stone, when stone is doesn't set<br>

Alpha 0.2:<br>
- New: automatic ID for every teleport stone in data storage<br>
- Change: Data storage structure for teleport position<br>
- Change: Dialog window update all buttons, every time between call and show the window<br>
