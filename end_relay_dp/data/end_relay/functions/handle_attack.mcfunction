tag @e[tag=end_relay,tag=marker,sort=nearest,limit=1] add current_marker
tag @e[tag=end_relay,tag=display,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=compass,sort=nearest,limit=1] add current_compass
execute on attacker run tag @s add current_player

execute if entity @e[tag=current_compass,nbt={Item:{id:"minecraft:compass"}}] run function end_relay:remove_compass

data remove entity @s attack
tag @e[tag=current_marker] remove current_marker
tag @e[tag=current_display] remove current_display
tag @e[tag=current_compass] remove current_compass
tag @e[tag=current_player] remove current_player