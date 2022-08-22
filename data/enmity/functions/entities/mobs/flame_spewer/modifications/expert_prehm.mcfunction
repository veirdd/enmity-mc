attribute @s generic.armor base set 12
attribute @s generic.max_health modifier add 0-0-0-0-0 "0" 1.25 multiply_base

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified