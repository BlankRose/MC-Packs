# FIELD TRIGGER
# Triggers the laser field event

execute if entity @s[type=#portalgun:laser_field_kill, tag=!PG_Object, tag=!PG_ObjectDestroy] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] at @s run advancement grant @a[distance=..20] only portalgun:laser_field
execute if entity @s[type=player, gamemode=!creative] unless entity @s[gamemode=spectator] run kill @s
execute if entity @s[type=#portalgun:laser_field_kill, tag=!PG_Object, tag=!PG_ObjectDestroy] unless entity @s[type=player] run data merge entity @s {DeathLootTable:""}
execute if entity @s[type=#portalgun:laser_field_kill, tag=!PG_Object, tag=!PG_ObjectDestroy] unless entity @s[type=player] run particle explosion ~ ~ ~ 0 0 0 1 1
execute if entity @s[type=#portalgun:laser_field_kill, tag=!PG_Object, tag=!PG_ObjectDestroy] unless entity @s[type=player] run playsound entity.generic.explode neutral @a ~ ~ ~
execute if entity @s[type=#portalgun:laser_field_kill, tag=!PG_Object, tag=!PG_ObjectDestroy] unless entity @s[type=player] run kill @s