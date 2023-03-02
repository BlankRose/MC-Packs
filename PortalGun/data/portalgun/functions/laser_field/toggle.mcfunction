# TOGGLE FIELD
# Toggles on/off the targetted emencipation grill

# Enable
execute if entity @s[tag=PG_LaserField, tag=PG_Disabled] at @s run function portalgun:laser_field/set
execute if entity @s[tag=PG_LaserField, tag=PG_Disabled] at @s rotated as @s as @e[tag=PG_LaserField, tag=!PG_Disabled, tag=!PG_LaserFieldDecor, distance=..1, sort=nearest, limit=1] run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=PG_LaserField, tag=PG_Disabled] run kill @s

# Disable
execute if entity @s[tag=PG_LaserField, tag=!PG_Disabled] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, Tags:[PG_LaserField, PG_Object, PG_Disabled, PG_ShowDebug]}
execute if entity @s[tag=PG_LaserField, tag=!PG_Disabled] at @s run kill @e[tag=PG_LaserFieldDecor, distance=.5, sort=nearest, limit=1]
execute if entity @s[tag=PG_LaserField, tag=!PG_Disabled] at @s rotated as @s as @e[tag=PG_LaserField, tag=PG_Disabled, distance=..1, sort=nearest, limit=1] run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=PG_LaserField, tag=!PG_Disabled] run kill @s

# Kill Getter
execute as @e[tag=PG_LaserFieldGetter, distance=...1, sort=nearest, limit=1] run kill @s