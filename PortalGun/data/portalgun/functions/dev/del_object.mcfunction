# DELETE OBJECT
# Delete the closest object (in a radius of 5 blocks)

execute at @s as @e[tag=PG_Object, distance=..5, sort=nearest, limit=1] at @s run kill @e[tag=PG_Object, distance=...5]
execute if entity @e[tag=PG_ObjectDestroy] run kill @s