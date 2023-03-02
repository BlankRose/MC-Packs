# ASSIGN ID
# Functions to assign a new id to a player

execute unless score IDTracker PG_Settings matches -2147483648..2147483647 run scoreboard players set IDTracker PG_Settings 0
execute store result score @s PG_LinkerID run scoreboard players get IDTracker PG_Settings
scoreboard players add IDTracker PG_Settings 1