scoreboard players set @s enmity.math_a 0
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.math_a run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute store result score @s enmity.math_b run data get entity @s EnderItems[{Slot:4b}].tag.CustomModelData
execute if score @s enmity.math_b = @s enmity.math_a run scoreboard players set @s enmity.math_b 0
execute if score @s enmity.math_b matches 84 run attribute @s generic.luck modifier add 0-0-0-0-3 "" 10 add
execute if score @s enmity.math_b matches 100 run attribute @s generic.knockback_resistance modifier add 0-0-0-0-3 "" 1 add
execute if score @s enmity.math_b matches 100 run scoreboard players add @s enmity.dmg_bst 5
execute if score @s enmity.math_b matches 112 run scoreboard players remove @s enmity.dmg_bst 1
execute if score @s enmity.math_b matches 112 run scoreboard players remove @s enmity.dmg_rdc 1
execute if score @s enmity.math_b matches 120 run scoreboard players operation @s enmity.dmg_rdc /= %const_2 enmity.value
execute if score @s enmity.math_b matches 120 run scoreboard players operation @s enmity.dmg_bst *= %const_2 enmity.value
execute if score @s enmity.math_b matches 121 run scoreboard players operation @s enmity.dmg_bst /= %const_2 enmity.value