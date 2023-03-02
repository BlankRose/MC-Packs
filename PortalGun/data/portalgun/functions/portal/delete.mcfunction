# DELETE PORTAL
# Delete a portal from existance

execute at @s if entity @s[tag=PG_Portal] run setblock ~ ~ ~ snow_block
execute at @s if entity @s[tag=PG_Portal] as @e[tag=PG_PortalDecors, distance=..1.2, sort=nearest, limit=1] run kill @s
execute at @s if entity @s[tag=PG_Portal] run kill @s