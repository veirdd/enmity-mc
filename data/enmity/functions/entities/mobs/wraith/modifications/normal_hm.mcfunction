attribute @s generic.armor base set 8
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "0" 4.5 multiply_base
attribute @s generic.max_health modifier add 0-0-0-0-0 "0" 2.75 multiply_base
attribute @s generic.follow_range base set 16
attribute @s generic.knockback_resistance base set 0.75
attribute @s generic.movement_speed base set 0.21
effect give @s slow_falling 1000000 0 true
effect give @s invisibility 1000000 0 true
scoreboard players set @s enmity.dmg_rdc 1
scoreboard players set @s enmity.dmg_bst 4

data modify entity @s Health set value 1024
scoreboard players set @s enmity.cooldown 0
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified