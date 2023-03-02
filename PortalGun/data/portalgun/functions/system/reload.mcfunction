# RELOAD
# Executes upon reload

# Prepare scoreboards
scoreboard objectives add PG_DetectBow minecraft.used:minecraft.bow
scoreboard objectives add PG_LinkerID dummy
scoreboard objectives add PG_TempVar dummy
scoreboard objectives add PG_Settings dummy

# Set values
execute unless score DebugActive PG_Settings matches -2147483648..2147483647 run scoreboard players set DebugActive PG_Settings 0
execute unless score DebugDisplay PG_Settings matches -2147483648..2147483647 run scoreboard players set DebugDisplay PG_Settings 0

# Prepare teams
team add PG_Collisions
team modify PG_Collisions collisionRule never
team add PG_PortalPriColor
team modify PG_PortalPriColor color blue
team add PG_PortalSecColor
team modify PG_PortalSecColor color gold
team add PG_DebugMode

# Prepare schedules
function portalgun:other/debug_display
function portalgun:emencipation_grill/refresh

# Success message
tellraw @a [{"text": "[✔]", "bold": true, "color": "#00DD00"},{"text": " POrtalGun: Successfully loaded!", "bold": false, "color": "#70FF70"}]