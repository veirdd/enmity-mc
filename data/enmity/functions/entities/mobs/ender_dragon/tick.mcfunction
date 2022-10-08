execute if score @s enmity.phase_ct matches 1.. at @a[scores={enmity.in_end_center_time=100..}] as @e[type=!ender_dragon,type=!player,type=!#enmity:not_living,distance=..16,tag=!enmity.projectile] at @s run function enmity:entities/mobs/ender_dragon/kill_mob
kill @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"},tag=!enmity.custom]
execute as @e[type=area_effect_cloud,tag=enmity.dragon_breath_cloud] at @s if block ~ ~-0.1 ~ #enmity:not_solid run tp @s ~ ~-0.1 ~
execute as @e[type=area_effect_cloud,tag=enmity.dragon_breath_cloud] at @s unless block ~ ~ ~ #enmity:not_solid run tp @s ~ ~0.1 ~
execute as @e[type=end_crystal,tag=enmity.dragon_crystal,scores={enmity.cooldown=0}] at @s if entity @p[gamemode=!spectator,gamemode=!creative,distance=..5] run function enmity:entities/mobs/ender_dragon/crystal_explosion
scoreboard players remove @e[type=end_crystal,tag=enmity.dragon_crystal,scores={enmity.cooldown=1..}] enmity.cooldown 1

execute store result score @s enmity.phase run data get entity @s DragonPhase
execute if score @s enmity.phase matches 1..4 run data modify entity @s DragonPhase set value 0
execute if score @s enmity.phase matches 0 run function enmity:entities/mobs/ender_dragon/phases/dp0/tick
execute if score @s enmity.phase matches 5 run function enmity:entities/mobs/ender_dragon/phases/dp5/tick
execute if score @s enmity.phase matches 10 run function enmity:entities/mobs/ender_dragon/phases/dp10/tick
execute store result score @s enmity.hp_dummy run data get entity @s Health
execute unless score @s enmity.phase_ct matches 1.. if score @s enmity.hp_dummy matches ..1023 run function enmity:entities/mobs/ender_dragon/change_phase
execute unless score @s enmity.phase_ct matches 1.. run tag @s remove enmity.desperation_phase
execute if score @s enmity.phase matches 6 run function enmity:entities/mobs/ender_dragon/change_phase
execute if score %difficulty enmity.value matches 1 if score @s enmity.hp_dummy matches ..75 unless score @s enmity.phase_ct matches 8 run function enmity:entities/mobs/ender_dragon/change_phase
execute if score %difficulty enmity.value matches 2 if score @s enmity.hp_dummy matches ..100 unless score @s enmity.phase_ct matches 8 run function enmity:entities/mobs/ender_dragon/change_phase

tag @a[gamemode=spectator] remove enmity.dragon_target
execute positioned 0 64 0 run tag @a[tag=enmity.dragon_target,distance=128..] remove enmity.dragon_target
execute unless entity @a[tag=enmity.dragon_target] if score @s enmity.hp_dummy matches ..1023 run function enmity:entities/mobs/ender_dragon/change_phase
execute unless entity @a[tag=enmity.dragon_target] if score @s enmity.hp_dummy matches 1024 run data modify entity @s DragonPhase set value 0
execute unless entity @a[tag=enmity.dragon_target] if score @s enmity.hp_dummy matches 1024 run scoreboard players set @s enmity.phase_ct 0

scoreboard players add @s enmity.age 1
scoreboard players add @s enmity.cooldown 1
execute if score @s enmity.cooldown matches 5.. run function enmity:entities/mobs/ender_dragon/5_tick
execute if score @s enmity.cooldown matches 5.. run scoreboard players set @s enmity.cooldown 0
execute if entity @s[tag=!enmity.dead] if score @s enmity.phase matches 9 unless score @s enmity.hp_dummy matches 1024 run function enmity:entities/mobs/ender_dragon/die