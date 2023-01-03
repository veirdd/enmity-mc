scoreboard players set @s enmity.math_a 0
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.math_a run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute store result score @s enmity.math_b run data get entity @s EnderItems[{Slot:4b}].tag.CustomModelData
execute if score @s enmity.math_b = @s enmity.math_a run scoreboard players set @s enmity.math_b 0
execute if score @s enmity.math_b matches 33 at @s unless predicate enmity:environment/near_deep_dark run effect give @s night_vision 30 0 true
execute if score @s enmity.math_b matches 89 run effect give @s dolphins_grace 2 0 true
execute if score @s enmity.math_b matches 91 run effect give @s haste 2 1 true
execute if score @s enmity.math_b matches 92 if score @s enmity.food matches ..13 run effect give @s saturation 1 0 true
execute if score @s enmity.math_b matches 92 if score @s enmity.food matches 15.. run effect give @s hunger 1 100 true
execute if score @s enmity.math_b matches 105 if entity @s[tag=enmity.flying] at @s run function enmity:items/accessories/effervescent_aglets/10_tick
execute if score @s enmity.math_b matches 107 run effect give @s night_vision 30 0 true