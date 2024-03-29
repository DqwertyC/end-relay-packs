playsound minecraft:block.ancient_debris.place block @a ~ ~ ~ 1 1 0
setblock ~ ~ ~ minecraft:obsidian destroy
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.0005f,-0.0005f,-0.0005f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:respawn_anchor",Count:1b,tag:{CustomModelData:4173001}},Tags:["end_relay","display"]}

execute align xyz positioned ~0.5 ~0.025 ~0.5 run summon minecraft:interaction ~ ~ ~ {Tags:["end_relay","interaction"],width:1.05f,height:1.1f,response:1b}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["end_relay","marker"],data:{charged:0b,locked:0b}}
execute align xyz positioned ~0.5 ~1.0 ~0.5 run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["end_relay","compass"],Fixed:1b,Facing:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:1b}
data modify entity @e[tag=end_relay,tag=marker,sort=nearest,limit=1] data.target set from entity @s data.target
kill @s[tag=relay_spawner]