execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/harpy/ambience
scoreboard players remove @s enmity.idle_cd 20
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1
execute store result score @s enmity.hp_dummy run data get entity @s Health 4
execute store result entity @s Health float 0.25 run scoreboard players operation @s enmity.hp_dummy += %const_1 enmity.value