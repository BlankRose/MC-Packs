# DEBUG
# Toggles the debug mode

team join PG_DebugMode @a
scoreboard players set @s PG_TempVar 1
execute if score DebugActive PG_Settings matches 0 run scoreboard players set @s PG_TempVar 0
execute if score DebugActive PG_Settings matches 0 run scoreboard players set DebugActive PG_Settings 1
execute if score DebugActive PG_Settings = @p PG_TempVar run team leave @a
execute if score DebugActive PG_Settings = @p PG_TempVar run scoreboard players set DebugActive PG_Settings 0
scoreboard players reset @s PG_TempVar