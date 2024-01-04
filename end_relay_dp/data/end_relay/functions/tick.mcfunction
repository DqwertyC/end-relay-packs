# Modify lodestones to have "custom model data", which will be passed to the spawn egg item when crafting.
execute as @a[nbt={Inventory:[{id:"minecraft:lodestone"}]}] run function end_relay:scan_inventory

# Modify the spawn egg in the player's hand.
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_dragon_spawn_egg",tag:{CustomModelData:4173001}}},nbt=!{SelectedItem:{tag:{EntityTag:{id:"minecraft:marker"}}}}] run item modify entity @s weapon.mainhand end_relay:edit_egg

# Place new end relays
execute as @e[type=marker,tag=relay_spawner] at @s run function end_relay:place_block

# Handle interacting with and hitting the block
execute as @e[tag=end_relay,tag=interaction] at @s if data entity @s interaction run function end_relay:handle_interaction
execute as @e[tag=end_relay,tag=interaction] at @s if data entity @s attack run function end_relay:handle_attack

# Clean up old entities
execute as @e[tag=end_relay,tag=marker] at @s unless block ~ ~ ~ minecraft:obsidian run function end_relay:break_block
kill @e[tag=end_relay,tag=cart]