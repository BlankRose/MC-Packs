# TICK
# Execute upon every tick

# System
execute as @a unless score @s PG_LinkerID matches -2147483648..2147483647 run function portalgun:other/assign_id

# Portal Gun
execute as @a[scores={PG_DetectBow=1..}] run function portalgun:portal/shot
execute as @e[type=#arrows, tag=PG_Shot, nbt={inGround:1b}] run function portalgun:portal/landed
execute as @a[tag=!PG_PortalTrigger] at @s if entity @e[tag=PG_Portal, distance=...5] run function portalgun:portal/trigger
execute as @a[tag=PG_PortalTrigger] at @s unless entity @e[tag=PG_Portal, distance=...5] run tag @s remove PG_PortalTrigger
execute as @a[tag=PG_Carry] at @s run function portalgun:portal/carry

# Emencipation Grill
execute as @e[tag=PG_EmGrillGetter] at @s as @e[tag=PG_EmencipationGrill, distance=...5, sort=nearest, limit=1] run function portalgun:emencipation_grill/toggle
execute as @e[tag=PG_EmGrillGetter] run function portalgun:emencipation_grill/set
execute as @e[tag=PG_EmencipationGrill] run data modify entity @s Fire set value 0
execute as @e at @s if entity @e[tag=PG_EmencipationGrill, tag=!PG_Disabled, distance=..1] run function portalgun:emencipation_grill/trigger
execute as @e at @s positioned ~ ~1 ~ if entity @e[tag=PG_EmencipationGrill, tag=!PG_Disabled, distance=..1] run function portalgun:emencipation_grill/trigger
execute as @e at @s positioned ~ ~-1 ~ if entity @e[tag=PG_EmencipationGrill, tag=!PG_Disabled, distance=..1] run function portalgun:emencipation_grill/trigger

# Laser Field
function portalgun:laser_field/animate
execute as @e[tag=PG_LaserFieldGetter] at @s as @e[tag=PG_LaserField, tag=!PG_LaserFieldDecor, distance=...5, sort=nearest, limit=1] run function portalgun:laser_field/toggle
execute as @e[tag=PG_LaserFieldGetter] run function portalgun:laser_field/set
execute as @e at @s if entity @e[tag=PG_LaserField, tag=!PG_Disabled, distance=..1] run function portalgun:laser_field/trigger
execute as @e at @s positioned ~ ~1 ~ if entity @e[tag=PG_LaserField, tag=!PG_Disabled, distance=..1] run function portalgun:laser_field/trigger
execute as @e at @s positioned ~ ~-1 ~ if entity @e[tag=PG_LaserField, tag=!PG_Disabled, distance=..1] run function portalgun:laser_field/trigger

# Others
execute as @e[tag=PG_ObjectDestroy] run function portalgun:dev/del_object
team join PG_DebugMode @e[tag=PG_ShowDebug]