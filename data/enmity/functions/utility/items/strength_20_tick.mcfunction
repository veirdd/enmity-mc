execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:10b}].tag.CustomModelData

execute if score @s enmity.math_a matches 59 run scoreboard players add @s enmity.dmg_bst 1
execute if score @s enmity.math_a matches 60 run scoreboard players add @s enmity.dmg_bst 2
execute if score @s enmity.math_a matches 56 run scoreboard players add @s enmity.dmg_bst 2
execute if score @s enmity.math_a matches 54 run scoreboard players add @s enmity.dmg_rdc 1
execute if score @s enmity.math_a matches 55 run scoreboard players add @s enmity.dmg_rdc 1
execute if score @s enmity.math_a matches 76 run scoreboard players add @s enmity.dmg_bst 1
execute if score @s enmity.math_a matches 76 run scoreboard players add @s enmity.dmg_rdc 2
execute if score @s enmity.math_a matches 77 run scoreboard players add @s enmity.dmg_bst 3
execute if score @s enmity.math_a matches 77 run scoreboard players add @s enmity.dmg_rdc 1
execute if score @s enmity.math_a matches 78 run scoreboard players add @s enmity.dmg_bst 5
execute if score @s enmity.math_a matches 78 run scoreboard players add @s enmity.dmg_rdc 5
execute if score @s enmity.math_a matches 53 run scoreboard players add @s enmity.max_hp 2
execute if score @s enmity.math_a matches 55 run scoreboard players add @s enmity.max_hp 2
execute if score @s enmity.math_a matches 76 run scoreboard players add @s enmity.max_hp 6
execute if score @s enmity.math_a matches 77 run scoreboard players add @s enmity.max_hp 4
execute if score @s enmity.math_a matches 78 run scoreboard players add @s enmity.max_hp 12

execute if score @s enmity.math_a matches 51 run attribute @s generic.armor modifier add 0-0-0-0-1 "0" 2 add
execute if score @s enmity.math_a matches 58 run attribute @s generic.attack_damage modifier add 0-0-0-0-1 "0" 0.15 multiply
execute if score @s enmity.math_a matches 61 run attribute @s generic.attack_speed modifier add 0-0-0-0-1 "0" 0.2 multiply
execute if score @s enmity.math_a matches 55 run attribute @s generic.armor modifier add 0-0-0-0-1 "0" 2 add
execute if score @s enmity.math_a matches 56 run attribute @s generic.attack_damage modifier add 0-0-0-0-1 "0" 0.15 multiply
execute if score @s enmity.math_a matches 56 run attribute @s generic.attack_speed modifier add 0-0-0-0-1 "0" 0.2 multiply
execute if score @s enmity.math_a matches 76 run attribute @s generic.armor modifier add 0-0-0-0-1 "0" 6 add
execute if score @s enmity.math_a matches 76 run attribute @s generic.attack_damage modifier add 0-0-0-0-1 "0" 0.3 multiply
execute if score @s enmity.math_a matches 76 run attribute @s generic.attack_speed modifier add 0-0-0-0-1 "0" 0.2 multiply
execute if score @s enmity.math_a matches 77 run attribute @s generic.armor modifier add 0-0-0-0-1 "0" 2 add
execute if score @s enmity.math_a matches 77 run attribute @s generic.attack_damage modifier add 0-0-0-0-1 "0" 0.6 multiply
execute if score @s enmity.math_a matches 77 run attribute @s generic.attack_speed modifier add 0-0-0-0-1 "0" 0.3 multiply
execute if score @s enmity.math_a matches 78 run attribute @s generic.armor modifier add 0-0-0-0-1 "0" 10 add
execute if score @s enmity.math_a matches 78 run attribute @s generic.attack_damage modifier add 0-0-0-0-1 "0" 1 multiply
execute if score @s enmity.math_a matches 78 run attribute @s generic.attack_speed modifier add 0-0-0-0-1 "0" 0.5 multiply