execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if score @s enmity.math_a matches 43 run effect give @s jump_boost 2 1 true
execute if score @s enmity.math_a matches 43 run effect give @s slow_falling 2 0 true
execute if score @s enmity.math_a matches 44 run effect give @s jump_boost 2 1 true
execute if score @s enmity.math_a matches 44 run effect give @s slow_falling 2 0 true