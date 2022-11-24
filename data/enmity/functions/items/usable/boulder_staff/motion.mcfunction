data modify entity @s NoGravity set value 0
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute if entity @s[tag=enmity.giant] as @e[type=marker,tag=enmity.direction_anchor] run function enmity:misc/projectiles/random_spread/20dg
execute as @e[type=marker,tag=enmity.direction_anchor] at @s run tp @s ^ ^ ^100
execute as @e[type=marker,tag=enmity.direction_anchor] at @s run tp @s ~ ~10 ~ ~ 0
execute as @e[type=marker,tag=enmity.direction_anchor] at @s run tp @s ^ ^ ^30
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2]
tp @s ~ ~ ~ ~ 0
execute store result entity @s Motion[0] double 0.02 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @s Motion[2] double 0.02 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
kill @e[type=marker,tag=enmity.direction_anchor]
tag @s remove enmity.no_motion