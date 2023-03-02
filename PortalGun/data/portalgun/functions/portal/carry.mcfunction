# CARRY
# Function that constantly keeps the carried object in front

execute as @e[tag=PG_Carried] if score @s PG_LinkerID = @p PG_LinkerID facing entity @p eyes run tp @s ~ ~ ~