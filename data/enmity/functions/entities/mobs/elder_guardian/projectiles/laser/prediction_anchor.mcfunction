summon marker ~ ~ ~ {Tags:["enmity.elder_laser_anchor"]}
execute store result score @s enmity.math_a run scoreboard players get @s enmity.math_d
execute store result score @s enmity.math_b run scoreboard players get @s enmity.math_e
execute store result score @s enmity.math_c run scoreboard players get @s enmity.math_f
execute store result score @s enmity.math_d run data get entity @p[tag=enmity.elder_target] Pos[0] 100
execute store result score @s enmity.math_e run data get entity @p[tag=enmity.elder_target] Pos[1] 100
execute store result score @s enmity.math_f run data get entity @p[tag=enmity.elder_target] Pos[2] 100
execute store result score @s enmity.math_a run scoreboard players operation @s enmity.math_a -= @s enmity.math_d
execute store result score @s enmity.math_b run scoreboard players operation @s enmity.math_b -= @s enmity.math_e
execute store result score @s enmity.math_c run scoreboard players operation @s enmity.math_c -= @s enmity.math_f
execute store result score @p enmity.math_c run scoreboard players get @s enmity.math_a
scoreboard players operation @s enmity.math_a *= %const_-1 enmity.value
scoreboard players operation @s enmity.math_b *= %const_-1 enmity.value
scoreboard players operation @s enmity.math_c *= %const_-1 enmity.value
scoreboard players operation @s enmity.math_a *= %const_7 enmity.value
scoreboard players operation @s enmity.math_b *= %const_7 enmity.value
scoreboard players operation @s enmity.math_c *= %const_7 enmity.value
scoreboard players operation @s enmity.math_d += @s enmity.math_a
scoreboard players operation @s enmity.math_e += @s enmity.math_b
scoreboard players operation @s enmity.math_f += @s enmity.math_c
scoreboard players operation @s enmity.math_e += %const_100 enmity.value
execute store result entity @e[type=marker,tag=enmity.elder_laser_anchor,limit=1] Pos[0] double 0.01 run scoreboard players get @s enmity.math_d
execute store result entity @e[type=marker,tag=enmity.elder_laser_anchor,limit=1] Pos[1] double 0.01 run scoreboard players get @s enmity.math_e
execute store result entity @e[type=marker,tag=enmity.elder_laser_anchor,limit=1] Pos[2] double 0.01 run scoreboard players get @s enmity.math_f
execute at @s anchored eyes facing entity @e[type=marker,tag=enmity.elder_laser_anchor,limit=1] eyes run function enmity:entities/mobs/elder_guardian/projectiles/laser/prediction_raycast