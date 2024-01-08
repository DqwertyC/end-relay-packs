advancement revoke @s only end_relay:attack
tag @e[tag=end_relay,tag=interaction,nbt={attack:{}},sort=nearest,limit=1] add current_interaction
tag @e[tag=end_relay,tag=marker,sort=nearest,limit=1] add current_marker
tag @e[tag=end_relay,tag=display,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=compass,sort=nearest,limit=1] add current_compass
execute on attacker run tag @s add current_player

execute if entity @e[tag=current_compass,nbt={Item:{id:"minecraft:compass"}}] run function end_relay:remove_compass
data merge entity @e[tag=current_interaction,limit=1] {width:0.95f,height:0.9f}
data remove entity @e[tag=current_interaction,limit=1] attack

tag @e[tag=current_marker] remove current_marker
tag @e[tag=current_display] remove current_display
tag @e[tag=current_compass] remove current_compass
tag @e[tag=current_player] remove current_player
tag @e[tag=current_interaction] remove current_interaction