summon marker ^ ^ ^30 {Tags:["enmity.direction_anchor"]}
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2]
execute store result entity @s Motion[0] double -0.01 run scoreboard players operation @s enmity.math_a -= @s enmity.math_d
execute store result entity @s Motion[2] double -0.01 run scoreboard players operation @s enmity.math_c -= @s enmity.math_f
kill @e[type=marker,tag=enmity.direction_anchor]