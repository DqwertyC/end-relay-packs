data remove entity @e[tag=current_compass,limit=1] Item.tag.CustomModelData
summon item ~ ~1 ~ {Item:{id:"minecraft:compass",Count:1b},Tags:["new_compass"]}
data modify entity @e[tag=new_compass,limit=1] Item.tag set from entity @e[tag=current_compass,limit=1] Item.tag
data modify entity @e[tag=current_compass,limit=1] Item.Count set value 0b
tag @e[tag=new_compass] remove new_compass