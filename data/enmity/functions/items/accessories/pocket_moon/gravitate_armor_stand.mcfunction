execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_2
execute as @e[type=!#enmity:not_living,tag=enmity.homing_target,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~-1.7 ~ {Tags:["enmity.direction_anchor"]}
execute if score @s enmity.math_a matches 1 positioned ^ ^ ^1 facing entity @e[type=marker,tag=enmity.direction_anchor] feet positioned ^0.01 ^ ^0.15 run tp @e[type=marker,tag=enmity.direction_anchor] ~ ~ ~
execute if score @s enmity.math_a matches 2 positioned ^ ^ ^1 facing entity @e[type=marker,tag=enmity.direction_anchor] feet positioned ^-0.01 ^ ^0.15 run tp @e[type=marker,tag=enmity.direction_anchor] ~ ~ ~
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1]
execute positioned ~ ~-1 ~ if entity @p[tag=enmity.homing_target,distance=..10] at @s run tp @s ^ ^ ^0.025
execute positioned ~ ~-1 ~ if entity @p[tag=enmity.homing_target,distance=..7.5] at @s run tp @s ^ ^ ^0.05
execute positioned ~ ~-1 ~ if entity @p[tag=enmity.homing_target,distance=..4] at @s run tp @s ^ ^ ^0.075
execute positioned ~ ~-1 ~ if entity @p[tag=enmity.homing_target,distance=..2] at @s run tp @s ^ ^ ^0.1
execute positioned ~ ~-1 ~ if entity @p[tag=enmity.homing_target,distance=..1] at @s run tp @s ^ ^ ^0.15
kill @e[type=marker,tag=enmity.direction_anchor]