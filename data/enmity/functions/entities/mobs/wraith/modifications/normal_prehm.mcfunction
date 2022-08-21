attribute @s generic.armor base set 8
attribute @s generic.follow_range base set 16
effect give @s slow_falling 1000000 0 true
effect give @s invisibility 1000000 0 true
attribute @s generic.knockback_resistance base set 0.75
attribute @s generic.movement_speed base set 0.2

data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified