attribute @s generic.armor base set 8
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 2 multiply_base
scoreboard players set @s enmity.dmg_rdc 1

data modify entity @s Health set value 1024
execute store result score @s enmity.dmg_taken_2 run data get entity @s Health
tag @s add enmity.modified