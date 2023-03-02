# GRILL TRIGGER
# Triggers the emencipation grill event

execute if entity @s[type=player] if entity @e[tag=PG_Portal] run advancement grant @s only portalgun:emancipation_grill
execute if entity @s[type=player] as @e[tag=PG_Portal] if score @s PG_LinkerID = @p PG_LinkerID run function portalgun:portal/delete
execute if entity @s[type=#portalgun:emencipation_grill_destroy, tag=!PG_Object, tag=!PG_ObjectDestroy] run particle explosion ~ ~ ~ 0 0 0 1 1
execute if entity @s[type=#portalgun:emencipation_grill_destroy, tag=!PG_Object, tag=!PG_ObjectDestroy] run playsound entity.generic.explode neutral @a ~ ~ ~
execute if entity @s[type=#portalgun:emencipation_grill_destroy, tag=!PG_Object, tag=!PG_ObjectDestroy] run kill @s