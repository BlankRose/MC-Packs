# TOGGLE GRILL
# Toggles on/off the targetted emencipation grill

# Enable
execute if entity @s[tag=PG_EmencipationGrill, tag=PG_Disabled] at @s run function portalgun:emencipation_grill/set
execute if entity @s[tag=PG_EmencipationGrill, tag=PG_Disabled] run kill @s

# Disable
execute if entity @s[tag=PG_EmencipationGrill, tag=!PG_Disabled] at @s run summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b, Tags:[PG_EmencipationGrill, PG_Object, PG_Disabled, PG_ShowDebug]}
execute if entity @s[tag=PG_EmencipationGrill, tag=!PG_Disabled] run kill @s

# Kill Getter
execute as @e[tag=PG_EmGrillGetter, distance=...5] run kill @s