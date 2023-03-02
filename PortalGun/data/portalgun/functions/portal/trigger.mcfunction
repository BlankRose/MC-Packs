# PORTAL TRIGGER
# Executes upon entering portals

execute if entity @s[tag=!PG_PortalTrigger] if entity @e[tag=PG_PortalPri, distance=..1] as @e[tag=PG_PortalSec] if entity @e[tag=PG_PortalDecors, distance=...8] if score @s PG_LinkerID = @e[tag=PG_PortalPri, sort=nearest, limit=1] PG_LinkerID at @s align y run function portalgun:portal/teleport
execute if entity @s[tag=!PG_PortalTrigger] if entity @e[tag=PG_PortalSec, distance=..1] as @e[tag=PG_PortalPri] if entity @e[tag=PG_PortalDecors, distance=...8] if score @s PG_LinkerID = @e[tag=PG_PortalSec, sort=nearest, limit=1] PG_LinkerID at @s align y run function portalgun:portal/teleport