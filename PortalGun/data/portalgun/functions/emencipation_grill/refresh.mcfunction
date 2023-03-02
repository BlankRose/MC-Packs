# GRILL RESET
# Resets all emencipations grills before they're about to explode (~27min)

execute as @e[tag=PG_EmencipationGrill, tag=!PG_Disabled] run function portalgun:emencipation_grill/set
schedule function portalgun:emencipation_grill/refresh 10000t replace