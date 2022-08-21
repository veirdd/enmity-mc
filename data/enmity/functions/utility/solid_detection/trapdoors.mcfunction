summon marker ~ ~ ~ {Tags:["enmity.solid_detection"]}
execute store result score @s enmity.math_a run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[0] 100
execute store result score @s enmity.math_b run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[1] 100
execute store result score @s enmity.math_c run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[2] 100
scoreboard players operation @s enmity.math_a %= %const_100 enmity.value
scoreboard players operation @s enmity.math_b %= %const_100 enmity.value
scoreboard players operation @s enmity.math_c %= %const_100 enmity.value
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run function enmity:utility/solid_detection/trapdoors/open
execute if block ~ ~ ~ #minecraft:trapdoors[open=false] run function enmity:utility/solid_detection/trapdoors/closed
execute if block ~ ~ ~ #enmity:carpets if score @s enmity.math_b matches ..20 run tag @s add enmity.in_solid
kill @e[type=marker,tag=enmity.solid_detection,limit=1]