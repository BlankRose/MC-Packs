# SET PORTAL SIDE
# Creates a vertical portal admiting there's enough space

# Set portal hole
fill ~ ~ ~ ~ ~1 ~ powder_snow

# Delete previous portal remotes
execute if entity @s[tag=PG_ShotPri] as @e[tag=PG_PortalPri] if score @s PG_LinkerID = @e[tag=PG_ShotPri, sort=nearest, limit=1] PG_LinkerID run function portalgun:portal/delete
execute if entity @s[tag=PG_ShotSec] as @e[tag=PG_PortalSec] if score @s PG_LinkerID = @e[tag=PG_ShotSec, sort=nearest, limit=1] PG_LinkerID run function portalgun:portal/delete

# Place portal decors depending on side (PRIMARY)
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotWest, distance=...1] run summon glow_item_frame ~-1 ~ ~ {Fixed:1b, Facing:4b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotWest, distance=...1] run summon glow_item_frame ~-1 ~1 ~ {Fixed:1b, Facing:4b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotEast, distance=...1] run summon glow_item_frame ~1 ~ ~ {Fixed:1b, Facing:5b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotEast, distance=...1] run summon glow_item_frame ~1 ~1 ~ {Fixed:1b, Facing:5b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotSouth, distance=...1] run summon glow_item_frame ~ ~ ~-1 {Fixed:1b, Facing:2b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotSouth, distance=...1] run summon glow_item_frame ~ ~1 ~-1 {Fixed:1b, Facing:2b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotNorth, distance=...1] run summon glow_item_frame ~ ~ ~1 {Fixed:1b, Facing:3b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}
execute if entity @e[tag=PG_ShotTmp, tag=PG_ShotNorth, distance=...1] run summon glow_item_frame ~ ~1 ~1 {Fixed:1b, Facing:3b, Item:{id:"minecraft:filled_map", tag:{map:48956}, Count:1}, Tags:[PG_PortalDecors], Glowing:1b}

# Colorize portal decorators with corresponding color
execute if entity @s[tag=PG_ShotPri] run team join PG_PortalPriColor @e[tag=PG_PortalDecors, sort=nearest, limit=1]
execute if entity @s[tag=PG_ShotPri] positioned ~ ~1 ~ run team join PG_PortalPriColor @e[tag=PG_PortalDecors, sort=nearest, limit=1]
execute if entity @s[tag=PG_ShotSec] run team join PG_PortalSecColor @e[tag=PG_PortalDecors, sort=nearest, limit=1]
execute if entity @s[tag=PG_ShotSec] positioned ~ ~1 ~ run team join PG_PortalSecColor @e[tag=PG_PortalDecors, sort=nearest, limit=1]

# Place and assign portal remotes
execute if entity @s[tag=PG_ShotPri] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Small:1b, Invisible:1b, DisabledSlots:10, NoGravity:1b, Tags:[PG_Portal, PG_PortalPri, PG_PortalSetup], ActiveEffects:[{Id:11, Amplifier:4, Duration:1000000, ShowParticles:0b}], Team:"PG_DebugMode"}
execute if entity @s[tag=PG_ShotPri] align xyz positioned ~.5 ~1 ~.5 run summon armor_stand ~ ~ ~ {Small:1b, Invisible:1b, DisabledSlots:10, NoGravity:1b, Tags:[PG_Portal, PG_PortalPri, PG_PortalSetup], ActiveEffects:[{Id:11, Amplifier:4, Duration:1000000, ShowParticles:0b}], Team:"PG_DebugMode"}
execute if entity @s[tag=PG_ShotSec] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Small:1b, Invisible:1b, DisabledSlots:10, NoGravity:1b, Tags:[PG_Portal, PG_PortalSec, PG_PortalSetup], ActiveEffects:[{Id:11, Amplifier:4, Duration:1000000, ShowParticles:0b}], Team:"PG_DebugMode"}
execute if entity @s[tag=PG_ShotSec] align xyz positioned ~.5 ~1 ~.5 run summon armor_stand ~ ~ ~ {Small:1b, Invisible:1b, DisabledSlots:10, NoGravity:1b, Tags:[PG_Portal, PG_PortalSec, PG_PortalSetup], ActiveEffects:[{Id:11, Amplifier:4, Duration:1000000, ShowParticles:0b}], Team:"PG_DebugMode"}

# Finalizing
execute store result score @e[tag=PG_PortalSetup] PG_LinkerID run scoreboard players get @s PG_LinkerID
tag @e[tag=PG_PortalSetup] remove PG_PortalSetup