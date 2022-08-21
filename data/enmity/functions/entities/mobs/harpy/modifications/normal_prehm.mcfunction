attribute @s generic.armor base set 8
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "0" -1 add
attribute @s generic.knockback_resistance base set 0.75

data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified