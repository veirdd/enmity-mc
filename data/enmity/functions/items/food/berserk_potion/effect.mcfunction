execute store result score @s enmity.math_a run data get entity @s ActiveEffects[{Id:27}].Amplifier
execute if score @s enmity.math_a matches 0 run attribute @s generic.luck modifier add 0-0-0-0-4 "" 1 add
execute if score @s enmity.math_a matches 1 run attribute @s generic.luck modifier add 0-0-0-0-4 "" 2 add
execute if score @s enmity.math_a matches 0 run scoreboard players add @s enmity.dmg_bst 2
execute if score @s enmity.math_a matches 1 run scoreboard players add @s enmity.dmg_bst 4