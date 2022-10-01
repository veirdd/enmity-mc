execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:9b}].tag.CustomModelData
execute if score @s enmity.math_a matches 8 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.math_a matches 10 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.math_a matches 20 run scoreboard players add @s enmity.max_mana 400
execute if score @s enmity.math_a matches 21 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.math_a matches 22 run scoreboard players add @s enmity.max_mana 400
execute if score @s enmity.math_a matches 23 run scoreboard players add @s enmity.max_mana 100
execute if score @s enmity.math_a matches 64 run scoreboard players add @s enmity.max_mana 800
execute if score @s enmity.math_a matches 23 run scoreboard players add @s enmity.max_snt 1
execute if score @s enmity.math_a matches 64 run scoreboard players add @s enmity.max_snt 1