execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
tag @s add enmity.bounced
scoreboard players add @s enmity.impact_ct 1