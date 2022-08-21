execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if score @s enmity.math_a matches 5 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "0" 0.025 add
execute if score @s enmity.math_a matches 86 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "0" 0.025 add
execute if score @s enmity.math_a matches 12 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "0" 0.04 add
execute if score @s enmity.math_a matches 28 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "0" 0.06 add