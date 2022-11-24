summon marker ~ ~ ~ {Tags:["enmity.solid_detection"]}
execute store result score @s enmity.math_a run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[0] 100
execute store result score @s enmity.math_b run data get entity @e[type=marker,tag=enmity.solid_detection,limit=1] Pos[2] 100
scoreboard players operation @s enmity.math_a %= %const_100 enmity.value
scoreboard players operation @s enmity.math_b %= %const_100 enmity.value
execute if block ~ ~ ~ #minecraft:doors[facing=north] run function enmity:misc/solid_detection/doors/north
execute if block ~ ~ ~ #minecraft:doors[facing=south] run function enmity:misc/solid_detection/doors/south
execute if block ~ ~ ~ #minecraft:doors[facing=east] run function enmity:misc/solid_detection/doors/east
execute if block ~ ~ ~ #minecraft:doors[facing=west] run function enmity:misc/solid_detection/doors/west
kill @e[type=marker,tag=enmity.solid_detection,limit=1]