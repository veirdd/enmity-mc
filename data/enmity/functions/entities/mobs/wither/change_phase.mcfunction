function enmity:entities/mobs/wither/retarget
scoreboard players add @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 9 run scoreboard players set @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 1 run scoreboard players set @s enmity.phase 1
execute if score @s enmity.phase_ct matches 2 run scoreboard players set @s enmity.phase 2
execute if score @s enmity.phase_ct matches 3 run scoreboard players set @s enmity.phase 3
execute if score @s enmity.phase_ct matches 4 run scoreboard players set @s enmity.phase 4
execute if score @s enmity.phase_ct matches 5 run scoreboard players set @s enmity.phase 2
execute if score @s enmity.phase_ct matches 6 run scoreboard players set @s enmity.phase 1
execute if score @s enmity.phase_ct matches 7 run scoreboard players set @s enmity.phase 5
execute if score @s enmity.phase_ct matches 8 run scoreboard players set @s enmity.phase 4
execute store result score @s enmity.hp_dummy run data get entity @s Health
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.hp_dummy 50
execute if score @s enmity.hp_dummy matches ..300 run tag @s add enmity.phase_2
execute if score @s enmity.hp_dummy matches 301.. run tag @s remove enmity.phase_2
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 1 run scoreboard players set @s enmity.math_c 7
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 2 run scoreboard players set @s enmity.math_c 9
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 3 run scoreboard players set @s enmity.math_c 11
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 4 run scoreboard players set @s enmity.math_c 12
execute if score %difficulty enmity.value matches 1 if score @s[tag=!enmity.phase_2] enmity.phase matches 5 run scoreboard players set @s enmity.math_c 12
execute if score %difficulty enmity.value matches 2 if score @s[tag=!enmity.phase_2] enmity.phase matches 5 run scoreboard players set @s enmity.math_c 8
execute if score @s[tag=enmity.phase_2] enmity.phase matches 1 run scoreboard players set @s enmity.math_c 5
execute if score @s[tag=enmity.phase_2] enmity.phase matches 2 run scoreboard players set @s enmity.math_c 6
execute if score @s[tag=enmity.phase_2] enmity.phase matches 3 run scoreboard players set @s enmity.math_c 9
execute if score @s[tag=enmity.phase_2] enmity.phase matches 4 run scoreboard players set @s enmity.math_c 10
execute if score %difficulty enmity.value matches 1 if score @s[tag=enmity.phase_2] enmity.phase matches 5 run scoreboard players set @s enmity.math_c 9
execute if score %difficulty enmity.value matches 2 if score @s[tag=enmity.phase_2] enmity.phase matches 5 run scoreboard players set @s enmity.math_c 6
scoreboard players set @s enmity.age 0
data modify entity @s NoAI set value 1b
execute if score @s enmity.phase matches 5 run data merge entity @s {Invulnerable:1}
execute unless score @s enmity.phase matches 5 run data merge entity @s {Invulnerable:0}
execute if score %difficulty enmity.value matches 2 if entity @s[tag=enmity.phase_2] run scoreboard players set @s enmity.dmg_rdc 2
execute if score %difficulty enmity.value matches 2 if entity @s[tag=!enmity.phase_2] run scoreboard players set @s enmity.dmg_rdc 5
execute if score %difficulty enmity.value matches 1 if entity @s[tag=enmity.phase_2] run scoreboard players set @s enmity.dmg_rdc 1
execute if score %difficulty enmity.value matches 1 if entity @s[tag=!enmity.phase_2] run scoreboard players set @s enmity.dmg_rdc 3