# SHOT
# Executed when a bow shot is detected

# Reset detector and gives back arrow if no infinity / creative (anti-dups)
scoreboard players reset @s PG_DetectBow
execute if entity @s[gamemode=!creative] if predicate portalgun:gun/held_off unless predicate portalgun:gun/held_off_inf unless predicate portalgun:gun/held_main_inf run give @s arrow
execute if entity @s[gamemode=!creative] if predicate portalgun:gun/held_main unless predicate portalgun:gun/held_main_inf run give @s arrow

# Detect if the shot is primary or secondary
execute at @s if predicate portalgun:gun/held_main as @e[type=#arrows, distance=..2, tag=!PG_Shot] run tag @s add PG_Shot
execute at @s if predicate portalgun:gun/held_main as @e[type=#arrows, distance=..2, tag=PG_Shot] run tag @s add PG_ShotPri
execute at @s if predicate portalgun:gun/held_off as @e[type=#arrows, distance=..2, tag=!PG_ShotPri] run tag @s add PG_Shot
execute at @s if predicate portalgun:gun/held_off as @e[type=#arrows, distance=..2, tag=!PG_ShotPri] run tag @s add PG_ShotSec

# Gives arrow the player's LinkerID
execute at @s if predicate portalgun:gun/held_any if entity @e[type=#arrows, distance=..2, tag=PG_Shot] store result score @e[type=#arrows, distance=..2, tag=PG_Shot] PG_LinkerID run scoreboard players get @s PG_LinkerID
execute as @e[type=#arrows, tag=PG_Shot, tag=PG_ShotPri] run data merge entity @s {damage:0, pickup:0b, crit:false, Silent:1b, Color:23039}
execute as @e[type=#arrows, tag=PG_Shot, tag=PG_ShotSec] run data merge entity @s {damage:0, pickup:0b, crit:false, Silent:1b, Color:16755200}

# Alternative controls
execute if predicate portalgun:shift at @s if entity @e[type=#arrows, distance=..2, tag=PG_ShotSec] run function portalgun:emencipation_grill/trigger
execute if predicate portalgun:shift at @s if entity @e[type=#arrows, distance=..2, tag=PG_ShotPri] run say Insert Pickup
execute if predicate portalgun:shift at @s run kill @e[type=#arrows, distance=..2, tag=PG_Shot]