tag @s add current_marker
tag @e[tag=end_relay,tag=display,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=compass,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=interaction,sort=nearest,limit=5] add current_interaction

execute if entity @e[tag=current_compass,nbt={Item:{id:"minecraft:compass"}}] run function end_relay:remove_compass
summon item ~ ~ ~ {Item:{id:"minecraft:ender_dragon_spawn_egg",Count:1b,tag:{CustomModelData:4173001,EntityTag:{id:"minecraft:marker",Tags:["relay_spawner"]}}}}
kill @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},sort=nearest,limit=1]

kill @e[tag=current_display]
kill @e[tag=current_display]
kill @e[tag=current_interaction]
kill @e[tag=current_marker]