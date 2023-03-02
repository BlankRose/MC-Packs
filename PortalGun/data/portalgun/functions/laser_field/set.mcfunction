# SET FIELD
# Ensures placement of the laser fields

execute at @s run summon armor_stand ~ ~ ~ {Tags:[PG_LaserField, PG_Object, PG_FieldSetup], NoGravity:1b, HasVisualFire:1b, Invulnerable: 1b, Marker:1b, NoBasePlate:1b}
execute at @s as @e[tag=PG_FieldSetup, sort=nearest, limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @s as @e[tag=PG_FieldSetup, sort=nearest, limit=1] run function portalgun:other/snap_rot
tag @e[tag=PG_FieldSetup, sort=nearest, limit=1] remove PG_FieldSetup

execute at @s align xyz run summon arrow ~.5 ~.5 ~.5 {Tags:[PG_LaserField, PG_Object, PG_LaserFieldDecor], NoGravity:1b, HasVisualFire: 1b, pickup:0b, Rotation:[0f, -90f]}
team join PG_Collisions @e[tag=PG_LaserField]

execute if entity @s[tag=PG_LaserFieldGetter] run kill @s