scoreboard players set @s enmity.math_a 0
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.math_a run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute store result score @s enmity.math_b run data get entity @s EnderItems[{Slot:4b}].tag.CustomModelData
execute if score @s enmity.math_b = @s enmity.math_a run scoreboard players set @s enmity.math_b 0
execute if score @s enmity.math_b matches 70 at @s if entity @e[type=#enmity:enemies,distance=..12,tag=!enmity.projectile] run function enmity:items/accessories/soul_in_a_jar/100_tick