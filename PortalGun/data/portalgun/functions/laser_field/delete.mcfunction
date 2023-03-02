# DELETE FIELD
# Delete the closest laser field (in a radius of 5 blocks)

execute at @s run kill @e[tag=PG_LaserField, distance=..5, sort=nearest, limit=1]
execute if entity @s[tag=PG_ObjectDestroy] run kill @s