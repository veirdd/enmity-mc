data merge entity @s {NoAI:0}
execute rotated as @p[tag=enmity.rider] positioned ^ ^ ^-30 run summon marker ~ ~-10 ~ {Tags:["enmity.direction_anchor_2"]}
execute facing entity @e[type=marker,tag=enmity.direction_anchor_2,limit=1] eyes run summon marker ^ ^ ^70 {Tags:["enmity.direction_anchor"]}
kill @e[type=marker,tag=enmity.direction_anchor_2]
execute store result score @s enmity.math_a run data get entity @s Pos[0] 100
execute store result score @s enmity.math_b run data get entity @s Pos[1] 100
execute store result score @s enmity.math_c run data get entity @s Pos[2] 100
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0] 100
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[1] 100
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2] 100
scoreboard players operation @s enmity.math_a -= @s enmity.math_d
scoreboard players operation @s enmity.math_b -= @s enmity.math_e
scoreboard players operation @s enmity.math_c -= @s enmity.math_f
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s enmity.math_a
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s enmity.math_b
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s enmity.math_c 
kill @e[type=marker,tag=enmity.direction_anchor]