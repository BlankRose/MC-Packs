# LANDED
# Executes upon portal shot landing

# Detect if surface is applicable
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~.05 ~ ~ snow_block run summon arrow ~.5 ~ ~ {Tags:[PG_ShotTmp, PG_ShotSide, PG_ShotWest]}
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~-.05 ~ ~ snow_block run summon arrow ~-.5 ~ ~ {Tags:[PG_ShotTmp, PG_ShotSide, PG_ShotEast]}
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~ ~.05 ~ snow_block run summon arrow ~ ~.5 ~ {Tags:[PG_ShotTmp, PG_ShotVert, PG_ShotCeiling]}
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~ ~-.05 ~ snow_block run summon arrow ~ ~-.5 ~ {Tags:[PG_ShotTmp, PG_ShotVert, PG_ShotGround]}
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~ ~ ~.05 snow_block run summon arrow ~ ~ ~.5 {Tags:[PG_ShotTmp, PG_ShotSide, PG_ShotSouth]}
execute at @s unless entity @e[tag=PG_ShotTmp, distance=..2] if block ~ ~ ~-.05 snow_block run summon arrow ~ ~ ~-.5 {Tags:[PG_ShotTmp, PG_ShotSide, PG_ShotNorth]}

# Remove gravity
data modify entity @s NoGravity set value 1b
data modify entity @e[tag=PG_ShotTmp, sort=nearest, limit=1] NoGravity set value 1b

# Create portals
execute at @s at @e[tag=PG_ShotTmp, tag=PG_ShotSide, distance=..2] if block ~ ~ ~ snow_block if block ~ ~1 ~ snow_block run function portalgun:portal/set_side
execute at @s at @e[tag=PG_ShotTmp, tag=PG_ShotSide, distance=..2] if block ~ ~ ~ snow_block if block ~ ~-1 ~ snow_block run tp @e[tag=PG_ShotTmp, tag=PG_ShotSide, distance=..2] ~ ~-1 ~
execute at @s at @e[tag=PG_ShotTmp, tag=PG_ShotSide, distance=..2] if block ~ ~ ~ snow_block if block ~ ~1 ~ snow_block run function portalgun:portal/set_side
execute at @s at @e[tag=PG_ShotTmp, tag=PG_ShotVert, distance=..2] if block ~ ~ ~ snow_block run function portalgun:portal/set_vert

# Destroy arrows
execute at @s run kill @e[tag=PG_ShotTmp, distance=..2, sort=nearest, limit=1]
kill @s