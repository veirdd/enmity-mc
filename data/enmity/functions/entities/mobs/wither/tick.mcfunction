tag @a[distance=48..,tag=enmity.wither_target] remove enmity.wither_target
execute unless entity @a[tag=enmity.wither_target] run function enmity:entities/mobs/wither/retarget
execute unless score @s enmity.phase matches 4 as @e[type=marker,tag=enmity.wither_anchor] at @s run function enmity:entities/mobs/wither/anchor_tick
execute if score @s[tag=!enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches ..99 as @e[type=marker,tag=enmity.wither_anchor] at @s run function enmity:entities/mobs/wither/anchor_tick
execute if score @s[tag=enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches ..49 as @e[type=marker,tag=enmity.wither_anchor] at @s run function enmity:entities/mobs/wither/anchor_tick
execute positioned ~ ~2.5 ~ run tp @e[type=marker,tag=enmity.wither_head,tag=enmity.left] ^1.2 ^ ^
execute positioned ~ ~2.5 ~ run tp @e[type=marker,tag=enmity.wither_head,tag=enmity.right] ^-1.2 ^ ^
scoreboard players add @s enmity.age 1
execute if score @s enmity.phase matches 0 if score @s enmity.age matches 221.. run function enmity:entities/mobs/wither/change_phase
scoreboard players add @s enmity.math_a 1
execute if score @s enmity.math_a matches 2 run function enmity:entities/mobs/wither/2_tick
execute if score @s enmity.math_a matches 2.. run scoreboard players set @s enmity.math_a 0
execute if score @s enmity.phase matches 4 if score @s enmity.age matches 100 run scoreboard players set @s enmity.math_b 39
execute if entity @e[type=!#enmity:not_living,type=!wither,distance=..4,tag=!enmity.projectile] run function enmity:entities/mobs/wither/avoid
execute if score %difficulty enmity.value matches 2 unless score @s[tag=enmity.phase_2] enmity.phase matches 4 if score @s enmity.age matches 20.. if predicate enmity:random/random_0.01 run function enmity:entities/mobs/wither/avoid
execute if score %difficulty enmity.value matches 2 unless score @s enmity.phase matches 0 unless score @s[tag=!enmity.phase_2] enmity.phase matches 4..5 if score @s enmity.age matches 20.. if predicate enmity:random/random_0.002 run function enmity:entities/mobs/wither/avoid
execute if score %difficulty enmity.value matches 1 unless score @s enmity.phase matches 0 unless score @s[tag=enmity.phase_2] enmity.phase matches 4..5 if score @s enmity.age matches 20.. if predicate enmity:random/random_0.005 run function enmity:entities/mobs/wither/avoid
execute if score @s enmity.phase matches 0 run data modify entity @s Health set value 1024
execute as @e[distance=..48,type=!#enmity:not_living,type=!player,tag=!enmity.wither_minion,type=!wither,tag=!enmity.projectile] at @s run function enmity:entities/mobs/wither/kill_mob