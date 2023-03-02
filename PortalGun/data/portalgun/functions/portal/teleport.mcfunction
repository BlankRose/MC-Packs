# TELEPORT TRIGGER
# Executes upon entering portals

teleport @p @e[tag=PG_PortalDecors, distance=..1.2, sort=nearest, limit=1]
tag @p add PG_PortalTrigger