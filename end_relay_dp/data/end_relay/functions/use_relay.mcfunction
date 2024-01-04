execute unless dimension minecraft:the_end run setblock ~ ~0.5 ~ air
execute unless dimension minecraft:the_end run summon creeper ~ ~1 ~ {powered:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Intentional Game Design"}'}
execute unless dimension minecraft:the_end run return fail

execute if entity @e[tag=current_compass,nbt=!{Item:{tag:{LodestoneDimension:"minecraft:the_end"}}}] run playsound minecraft:entity.enderman.scream block @a ~ ~ ~ 1 1.35 0
execute if entity @e[tag=current_compass,nbt=!{Item:{tag:{LodestoneDimension:"minecraft:the_end"}}}] run function end_relay:remove_compass

execute as @p[tag=current_player] run function end_relay:tp_macro with entity @e[tag=current_compass,limit=1] Item.tag.LodestonePos
data modify entity @e[tag=current_marker,limit=1] data.charged set value 0b
data modify entity @e[tag=current_display,limit=1] item.tag.CustomModelData set value 4173001
tag @p[tag=current_player] remove current_player