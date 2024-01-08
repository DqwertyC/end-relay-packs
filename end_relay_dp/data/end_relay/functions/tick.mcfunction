# Clean up old entities
execute as @e[tag=end_relay,tag=marker,predicate=!end_relay:in_obsidian] at @s run function end_relay:handle_break
kill @e[tag=end_relay,tag=cart]

# Shrink interactions near crouching players
execute as @e[tag=end_relay,tag=interaction,tag=!hidden] at @s if entity @p[distance=..5,predicate=end_relay:crouching] run tag @s add hidden
execute as @e[tag=end_relay,tag=interaction,tag=hidden] at @s unless entity @p[distance=..5,predicate=end_relay:crouching] run tag @s remove hidden
execute as @e[tag=end_relay,tag=interaction,tag=hidden] run data merge entity @s {width:0.95f,height:0.9f}
execute as @e[tag=end_relay,tag=interaction,tag=!hidden] run data merge entity @s {width:1.05f,height:1.1f}

# Charge relays from nearby hoppers
execute as @e[tag=end_relay,tag=marker,nbt={data:{charged:0b}}] at @s run function end_relay:try_charge