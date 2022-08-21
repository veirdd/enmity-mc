execute if score @s enmity.phase matches 1 run function enmity:entities/mobs/wither/phases/mobile
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches ..99 run function enmity:entities/mobs/wither/phases/spiral_preparation
execute if score @s[tag=enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches ..49 run function enmity:entities/mobs/wither/phases/spiral_preparation
scoreboard players add @e[type=wither_skeleton,tag=enmity.wither_minion] enmity.age 1
execute if score %difficulty enmity.value matches 1 run kill @e[type=wither_skeleton,tag=enmity.wither_minion,scores={enmity.age=150..}]
kill @e[type=wither_skeleton,tag=enmity.wither_minion,scores={enmity.age=200..}]
execute if score @s[tag=enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches 50.. run function enmity:entities/mobs/wither/phases/spiral
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches 100.. run function enmity:entities/mobs/wither/phases/spiral
execute unless block ~ ~ ~ #enmity:not_solid run tp @s ~ ~0.5 ~