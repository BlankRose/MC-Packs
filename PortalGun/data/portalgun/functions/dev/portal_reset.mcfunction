# PORTAL RESET
# Destroys all portals and resets portal linker

# Destroy any existing portals
execute as @e[tag=PG_Portal] run function portalgun:portal/delete
kill @e[tag=PG_PortalDecors]

# Reset linkers
scoreboard players reset IDTracker PG_Settings
scoreboard objectives remove PG_LinkerID
scoreboard objectives add PG_LinkerID dummy