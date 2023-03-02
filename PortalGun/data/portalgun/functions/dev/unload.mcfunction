# UNLOAD
# Ensure safe unloading of the datapack

# Clear any placed portals
execute as @e[tag=PG_Portal] run function portalgun:portal/delete
kill @e[tag=PG_PortalDecors]

# Destroy every scoreboards and teams
scoreboard objectives remove PG_DetectBow
scoreboard objectives remove PG_LinkerID
scoreboard objectives remove PG_Settings
scoreboard objectives remove PG_TempVar
team remove PG_Collisions
team remove PG_PortalPriColor
team remove PG_PortalSecColor
team remove PG_DebugMode

# Clear any tags existing on players
tag @a remove PG_PortalTrigger

# Success message
tellraw @a [{"text": "[✔]", "bold": true, "color": "#00DD00"},{"text": " POrtalGun: Successfully unloaded!", "bold": false, "color": "#70FF70"}]