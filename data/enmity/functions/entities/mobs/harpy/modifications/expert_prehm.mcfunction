attribute @s generic.armor base set 12
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 0.5 add
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 1.25 multiply_base
attribute @s generic.knockback_resistance base set 1

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_buffer_2 run data get entity @s Health
tag @s add enmity.modified