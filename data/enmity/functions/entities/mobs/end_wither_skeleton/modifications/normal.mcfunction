attribute @s generic.armor base set 8
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 17 multiply_base
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 5.5 multiply_base
attribute @s generic.follow_range modifier add 0-0-0-0-0 "" 2 multiply_base
scoreboard players set @s enmity.dmg_rdc 4
scoreboard players set @s enmity.dmg_bst 11

data modify entity @s Health set value 1024
scoreboard players set @s enmity.cooldown 0
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified