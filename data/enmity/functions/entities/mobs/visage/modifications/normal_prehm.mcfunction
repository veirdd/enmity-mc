attribute @s generic.armor base set 8
scoreboard players set @s enmity.dmg_rdc 1
scoreboard players set @s enmity.dmg_bst -8

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_buffer_2 run data get entity @s Health
tag @s add enmity.modified