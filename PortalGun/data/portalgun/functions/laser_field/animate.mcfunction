# ANIMATE FIELD
# Simply animate the laser field

execute as @e[tag=PG_LaserField, tag=!PG_Disabled] at @s run particle flame ~ ~1 ~ 0.2 0.4 0.2 0.01 1
execute as @e[tag=PG_LaserField, tag=!PG_Disabled] at @s run particle electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.1 3
execute as @e[tag=PG_LaserFieldDecor] at @s run teleport @s ~ ~ ~ ~ -90