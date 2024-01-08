tag @s add current_marker
tag @e[tag=end_relay,tag=display,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=compass,sort=nearest,limit=1] add current_compass
tag @e[tag=end_relay,tag=interaction,sort=nearest,limit=1] add current_interaction

execute if entity @e[tag=current_compass,nbt={Item:{id:"minecraft:compass"}}] run function end_relay:remove_compass
summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:4173001,display:{Name:'{"text":"End Relay","italic":false}'},EntityTag:{NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["relay_spawner"]}}}}
kill @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},sort=nearest,distance=..1,limit=1]

kill @e[tag=current_display]
kill @e[tag=current_compass]
kill @e[tag=current_interaction]
kill @e[tag=current_marker]