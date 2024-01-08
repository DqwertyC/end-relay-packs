$item modify block ~ ~ ~ container.$(slot) end_relay:decrease_count
data modify entity @s data.charged set value 1b
execute at @s run data modify entity @e[tag=end_relay,tag=display,sort=nearest,limit=1] item.tag.CustomModelData set value 4173002
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 2 0