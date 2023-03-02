# SNAP ROTATION
# Snaps target entity's rotation

execute store result score @s PG_TempVar run data get entity @s Rotation[0]

execute at @s if score @s PG_TempVar matches -45..45 run tp @s ~ ~ ~ 0 ~
execute at @s if score @s PG_TempVar matches 45..135 run tp @s ~ ~ ~ 90 ~
execute at @s if score @s PG_TempVar matches 135.. run tp @s ~ ~ ~ 180 ~
execute at @s if score @s PG_TempVar matches ..-135 run tp @s ~ ~ ~ 180 ~
execute at @s if score @s PG_TempVar matches -135..-45 run tp @s ~ ~ ~ 270 ~

scoreboard players reset @s PG_TempVar