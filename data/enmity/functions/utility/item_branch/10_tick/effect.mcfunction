execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:12b}].tag.CustomModelData
execute if score @s enmity.math_a matches 33 at @s unless predicate enmity:environment/near_deep_dark run effect give @s night_vision 30 0 true
execute if score @s enmity.math_a matches 89 run effect give @s dolphins_grace 2 0 true
execute if score @s enmity.math_a matches 91 run effect give @s haste 2 1 true
execute if score @s enmity.math_a matches 92 run effect give @s saturation 1 0 true
execute if score @s enmity.math_a matches 105 at @s run function enmity:items/accessories/effervescent_aglets/10_tick
execute if score @s enmity.math_a matches 107 run effect give @s night_vision 30 0 true