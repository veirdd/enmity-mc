summon marker ~ ~ ~ {Tags:["enmity.solid_detection"]}
execute store result score @s enmity.math_a run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[1] 100
scoreboard players operation @s enmity.math_a %= %const_100 enmity.value
execute if block ~ ~ ~ #minecraft:slabs[type=both] run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:slabs[type=top] if score @s enmity.math_a matches 50.. run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if score @s enmity.math_a matches ..50 run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:fence_gates[open=false] run tag @s add enmity.in_solid
kill @e[type=marker,tag=enmity.solid_detection,limit=1]