execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
execute if score %difficulty enmity.value matches 1 facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ^ ^ ^90 positioned ~ ~45 ~ run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute if score %difficulty enmity.value matches 2 facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ^ ^ ^120 positioned ~ ~60 ~ run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2]
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @s Motion[1] double 0.005 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
kill @e[type=marker,tag=enmity.direction_anchor]