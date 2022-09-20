attribute @s generic.armor base set 12
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 6 multiply_base
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 3.25 multiply_base
attribute @s generic.follow_range base set 64
attribute @s generic.knockback_resistance base set 1
attribute @s generic.movement_speed base set 0.23
effect give @s slow_falling 1000000 0 true
effect give @s invisibility 1000000 0 true
scoreboard players set @s enmity.dmg_rdc 3
scoreboard players set @s enmity.dmg_bst 8

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified