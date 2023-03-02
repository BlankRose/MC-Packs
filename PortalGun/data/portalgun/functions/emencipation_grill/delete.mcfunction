# DELETE GRILL
# Delete the closest emencipation grill (in a radius of 5 blocks)

execute at @s run kill @e[tag=PG_EmencipationGrill, distance=..5, sort=nearest, limit=1]
execute if entity @e[tag=PG_EmGrillDestroy] run kill @s