execute store result score @s enmity.math_a run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s enmity.math_a matches 0 run effect give @s regeneration 10
execute if score @s enmity.math_a matches 1 run scoreboard players operation @s enmity.mana = @s enmity.max_mana
advancement revoke @s only enmity:eaten_food/honey_bottle