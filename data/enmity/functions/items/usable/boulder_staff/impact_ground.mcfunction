tp @s ~ ~ ~ ~ 0
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
summon area_effect_cloud ~ ~ ~ {Tags:["enmity.new","enmity.projectile"]}
execute store result entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute as @e[type=area_effect_cloud,tag=enmity.new,limit=1] at @s run tp @s ^ ^ ^50
execute store result score @s enmity.math_d run data get entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] Pos[2]
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
kill @e[type=area_effect_cloud,tag=enmity.new,limit=1]
playsound entity.boat.paddle_land neutral @a[distance=0..] ~ ~ ~ 1 0 0