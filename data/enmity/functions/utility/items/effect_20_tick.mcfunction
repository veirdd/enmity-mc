execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:12b}].tag.CustomModelData
execute if score @s enmity.math_a matches 84 run attribute @s generic.luck modifier add 0-0-0-0-3 "" 10 add
execute if score @s enmity.math_a matches 100 run attribute @s generic.knockback_resistance modifier add 0-0-0-0-3 "" 1 add
execute if score @s enmity.math_a matches 112 run scoreboard players remove @s enmity.dmg_bst 1
execute if score @s enmity.math_a matches 112 run scoreboard players remove @s enmity.dmg_rdc 1