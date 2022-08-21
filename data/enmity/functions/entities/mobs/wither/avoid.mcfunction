execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
function enmity:entities/mobs/wither/woosh
execute if score @s enmity.math_a matches 1 as @e[type=marker,tag=enmity.wither_anchor] at @s run tp @s ~-8 ~ ~8
execute if score @s enmity.math_a matches 2 as @e[type=marker,tag=enmity.wither_anchor] at @s run tp @s ~8 ~ ~-8
execute if score @s enmity.math_a matches 3 as @e[type=marker,tag=enmity.wither_anchor] at @s run tp @s ~-8 ~ ~-8
execute if score @s enmity.math_a matches 4 as @e[type=marker,tag=enmity.wither_anchor] at @s run tp @s ~8 ~ ~8
execute if score @s enmity.math_a matches 1 run tp @s ~-8 ~ ~8
execute if score @s enmity.math_a matches 2 run tp @s ~8 ~ ~-8
execute if score @s enmity.math_a matches 3 run tp @s ~-8 ~ ~-8
execute if score @s enmity.math_a matches 4 run tp @s ~8 ~ ~8
execute unless entity @a[tag=enmity.wither_target,distance=..24] run tp @s ^ ^1 ^8 facing entity @a[tag=enmity.wither_target,limit=1] eyes