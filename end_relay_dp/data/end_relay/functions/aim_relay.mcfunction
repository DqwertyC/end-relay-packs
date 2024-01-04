item replace entity @e[tag=current_compass,limit=1] container.0 from entity @p[tag=current_player] weapon.mainhand
item modify entity @p[tag=current_player] weapon.mainhand end_relay:decrease_count
data modify entity @e[tag=current_compass,limit=1] Item.tag.CustomModelData set value 4173003