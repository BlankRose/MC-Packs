# DISPLAY DEBUG
# Swaps the scoreboard displaying on the sidebar

execute if score DebugActive PG_Settings matches 1 if score DebugDisplay PG_Settings matches 0 run scoreboard objectives setdisplay sidebar PG_LinkerID
execute if score DebugActive PG_Settings matches 1 if score DebugDisplay PG_Settings matches 1 run scoreboard objectives setdisplay sidebar PG_Settings
execute if score DebugActive PG_Settings matches 0 run scoreboard objectives setdisplay sidebar

scoreboard players add DebugDisplay PG_Settings 1
execute if score DebugDisplay PG_Settings matches 2.. run scoreboard players set DebugDisplay PG_Settings 0
schedule function portalgun:other/debug_display 3s