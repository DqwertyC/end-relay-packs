# Teleport the player to the coordinates in the macro
effect give @s minecraft:blindness 1 9 true
$tp @s $(X) $(Y) $(Z)

# Force enter/exit a minecart to dismount at a "safe" spot
execute at @s run summon minecraft:minecart ~ ~2 ~ {Tags:["end_relay","cart"]}
execute at @s run ride @s mount @e[tag=end_relay,tag=cart,sort=nearest,limit=1]
ride @s dismount
execute at @s run tp @s ~ ~1 ~
execute at @s run kill @e[tag=end_relay,tag=cart]

# Play a sound!
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 0