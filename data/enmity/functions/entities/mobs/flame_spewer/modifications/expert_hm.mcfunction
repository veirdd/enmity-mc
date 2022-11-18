attribute @s generic.armor base set 12
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 8 multiply_base
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 6 multiply_base
scoreboard players set @s enmity.dmg_rdc 4
scoreboard players set @s enmity.dmg_bst 6

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_buffer_2 run data get entity @s Health
tag @s add enmity.modified