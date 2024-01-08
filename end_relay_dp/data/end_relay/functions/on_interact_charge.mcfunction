item modify entity @p[tag=current_player] weapon.mainhand end_relay:decrease_count
data modify entity @e[tag=current_marker,limit=1] data.charged set value 1b
data modify entity @e[tag=current_display,limit=1] item.tag.CustomModelData set value 4173002
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 2 0