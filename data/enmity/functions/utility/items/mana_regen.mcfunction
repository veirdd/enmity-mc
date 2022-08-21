execute store result score @s enmity.math_b run data get entity @s Inventory[{Slot:9b}].tag.CustomModelData
execute if score @s enmity.math_b matches 9 run scoreboard players add @s enmity.mana_regen 1
execute if score @s enmity.math_b matches 10 run scoreboard players add @s enmity.mana_regen 1
execute if score @s enmity.math_b matches 20 run scoreboard players add @s enmity.mana_regen 1
execute if score @s enmity.math_b matches 21 run scoreboard players add @s enmity.mana_regen 2
execute if score @s enmity.math_b matches 22 run scoreboard players add @s enmity.mana_regen 2
execute if score @s enmity.math_b matches 64 run scoreboard players add @s enmity.mana_regen 4