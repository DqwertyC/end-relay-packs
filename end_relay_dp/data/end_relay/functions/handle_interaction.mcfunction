tag @e[tag=end_relay,tag=marker,sort=nearest,limit=1] add current_marker
tag @e[tag=end_relay,tag=display,sort=nearest,limit=1] add current_display
tag @e[tag=end_relay,tag=compass,sort=nearest,limit=1] add current_compass
execute on target run tag @s add current_player

execute if entity @e[tag=current_marker,nbt={data:{charged:1b}}] if data entity @e[tag=current_compass,limit=1] Item.tag.LodestonePos run function end_relay:use_relay
execute if entity @e[tag=current_marker,nbt={data:{charged:0b}}] if entity @p[tag=current_player,nbt={SelectedItem:{id:"minecraft:end_crystal"}}] run function end_relay:charge_relay
execute unless data entity @e[tag=current_compass,limit=1] Item.tag.LodestonePos if entity @p[tag=current_player,nbt={SelectedItem:{id:"minecraft:compass"}}] if data entity @p[tag=current_player] SelectedItem.tag.LodestonePos run function end_relay:aim_relay

data remove entity @s interaction
tag @e[tag=current_marker] remove current_marker
tag @e[tag=current_display] remove current_display
tag @e[tag=current_compass] remove current_compass
tag @e[tag=current_player] remove current_player