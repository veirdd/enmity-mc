#execute if score @s enmity.phase matches 0 run data modify entity @s DragonPhase set value 10
#execute if score @s enmity.phase matches 6 run data modify entity @s DragonPhase set value 0
#execute if score @s enmity.phase matches 10 run data modify entity @s DragonPhase set value 5
scoreboard players add @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 10 run scoreboard players set @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 1 run data modify entity @s DragonPhase set value 0
execute if score @s enmity.phase_ct matches 2 run data modify entity @s DragonPhase set value 10
execute if score @s enmity.phase_ct matches 3 run data modify entity @s DragonPhase set value 5
execute if score @s enmity.phase_ct matches 4 run data modify entity @s DragonPhase set value 0
execute if score @s enmity.phase_ct matches 5 run data modify entity @s DragonPhase set value 0
execute if score @s enmity.phase_ct matches 6 run data modify entity @s DragonPhase set value 10
execute if score @s enmity.phase_ct matches 7 run data modify entity @s DragonPhase set value 5
execute if score @s enmity.phase_ct matches 8 run data modify entity @s DragonPhase set value 0
execute if score @s enmity.phase_ct matches 9 run data modify entity @s DragonPhase set value 0
scoreboard players set @s enmity.age 0
tag @a[tag=enmity.dragon_target] remove enmity.dragon_target
execute positioned 0 64 0 run tag @r[scores={enmity.in_end_center_time=100..},distance=..128,gamemode=!spectator] add enmity.dragon_target
execute store result score @s enmity.hp_dummy run data get entity @s Health
execute if score %difficulty enmity.value matches 1 if score @s enmity.hp_dummy matches ..75 run tag @s add enmity.desperation_phase
execute if score %difficulty enmity.value matches 1 unless score @s enmity.hp_dummy matches ..75 run tag @s remove enmity.desperation_phase
execute if score %difficulty enmity.value matches 2 if score @s enmity.hp_dummy matches ..100 run tag @s add enmity.desperation_phase
execute if score %difficulty enmity.value matches 2 unless score @s enmity.hp_dummy matches ..100 run tag @s remove enmity.desperation_phase
execute if entity @s[tag=enmity.desperation_phase] run scoreboard players set @s enmity.phase_ct 8
execute if entity @s[tag=enmity.desperation_phase] run data modify entity @s DragonPhase set value 0
execute unless entity @p[tag=enmity.dragon_target] run scoreboard players set @s enmity.phase_ct 0
execute unless entity @p[tag=enmity.dragon_target] run data modify entity @s Health set value 1024