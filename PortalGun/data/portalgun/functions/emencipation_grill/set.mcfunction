# SET GRILL
# Ensures placement of the emencipation grill

execute at @s run summon creeper ~ ~ ~ {Tags:[PG_EmencipationGrill, PG_Object], powered:1b, ignited:1b, DeathTime:19, Fuse:32767s, ExplosionRadius:0, NoAI:1b, Silent:1b, NoGravity:1b, Invulnerable: 1b, Health:1000000, DeathLootTable:"", Attributes:[{Name:"minecraft:generic.knockback_resistance", Base:1000}, {Name:"minecraft:generic.max_health", Base:1000000}, {Name:"minecraft:generic.armor", Base:1000000}, {Name:"minecraft:generic.armor_toughness", Base:1000000}], ActiveEffects:[{Id:10, Amplifier:255, ShowParticles:0b, Duration:1000000}, {Id:11, Amplifier:4, ShowParticles:0b, Duration:1000000}, {Id:14, ShowParticles:0b, Duration:1000000}]}
team join PG_Collisions @e[tag=PG_EmencipationGrill]

execute if entity @s[tag=PG_EmGrillGetter] run kill @s
execute if entity @s[tag=PG_EmencipationGrill] run kill @s