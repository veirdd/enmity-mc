summon marker ~ ~ ~ {Tags:["enmity.solid_detection"]}
execute store result score @s enmity.math_a run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[1] 100
scoreboard players operation @s enmity.math_a %= %const_100 enmity.value
execute if block ~ ~ ~ snow[layers=2] if score @s enmity.math_a matches ..13 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=3] if score @s enmity.math_a matches ..25 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=4] if score @s enmity.math_a matches ..38 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=5] if score @s enmity.math_a matches ..50 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=6] if score @s enmity.math_a matches ..63 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=7] if score @s enmity.math_a matches ..75 run tag @s add enmity.in_solid
execute if block ~ ~ ~ snow[layers=8] if score @s enmity.math_a matches ..88 run tag @s add enmity.in_solid
kill @e[type=marker,tag=enmity.solid_detection,limit=1]