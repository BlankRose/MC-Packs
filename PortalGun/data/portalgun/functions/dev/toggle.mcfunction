# TOGGLE
# Toggles the targetted item

execute if entity @s[tag=PG_EmencipationGrill] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[PG_EmGrillGetter], Marker:1b}
execute if entity @s[tag=PG_LaserField, tag=!PG_LaserFieldDecor] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[PG_LaserFieldGetter], Marker:1b}