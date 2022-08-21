execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_17
execute store result score @s enmity.math_b run loot spawn ~ ~ ~ loot enmity:random_7
execute if score @s enmity.math_a matches 1..4 if score @s enmity.math_b matches 1..2 run item replace entity @s weapon.mainhand with wooden_sword
execute if score @s enmity.math_a matches 5..8 if score @s enmity.math_b matches 1..2 run item replace entity @s weapon.mainhand with stone_sword
execute if score @s enmity.math_a matches 9..12 if score @s enmity.math_b matches 1..2 run item replace entity @s weapon.mainhand with golden_sword
execute if score @s enmity.math_a matches 13..16 if score @s enmity.math_b matches 1..2 run item replace entity @s weapon.mainhand with iron_sword
execute if score @s enmity.math_a matches 17 if score @s enmity.math_b matches 1..2 run item replace entity @s weapon.mainhand with diamond_sword
execute if score @s enmity.math_a matches 1..4 if score @s enmity.math_b matches 3..4 run item replace entity @s weapon.mainhand with wooden_shovel
execute if score @s enmity.math_a matches 5..8 if score @s enmity.math_b matches 3..4 run item replace entity @s weapon.mainhand with stone_shovel
execute if score @s enmity.math_a matches 9..12 if score @s enmity.math_b matches 3..4 run item replace entity @s weapon.mainhand with golden_shovel
execute if score @s enmity.math_a matches 13..16 if score @s enmity.math_b matches 3..4 run item replace entity @s weapon.mainhand with iron_shovel
execute if score @s enmity.math_a matches 17 if score @s enmity.math_b matches 3..4 run item replace entity @s weapon.mainhand with diamond_shovel
execute if score @s enmity.math_a matches 1..4 if score @s enmity.math_b matches 5..6 run item replace entity @s weapon.mainhand with wooden_pickaxe
execute if score @s enmity.math_a matches 5..8 if score @s enmity.math_b matches 5..6 run item replace entity @s weapon.mainhand with stone_pickaxe
execute if score @s enmity.math_a matches 9..12 if score @s enmity.math_b matches 5..6 run item replace entity @s weapon.mainhand with golden_pickaxe
execute if score @s enmity.math_a matches 13..16 if score @s enmity.math_b matches 5..6 run item replace entity @s weapon.mainhand with iron_pickaxe
execute if score @s enmity.math_a matches 17 if score @s enmity.math_b matches 5..6 run item replace entity @s weapon.mainhand with diamond_pickaxe
execute if score @s enmity.math_a matches 1..4 if score @s enmity.math_b matches 7 run item replace entity @s weapon.mainhand with wooden_axe
execute if score @s enmity.math_a matches 5..8 if score @s enmity.math_b matches 7 run item replace entity @s weapon.mainhand with stone_axe
execute if score @s enmity.math_a matches 9..12 if score @s enmity.math_b matches 7 run item replace entity @s weapon.mainhand with golden_axe
execute if score @s enmity.math_a matches 13..16 if score @s enmity.math_b matches 7 run item replace entity @s weapon.mainhand with iron_axe
execute if score @s enmity.math_a matches 17 if score @s enmity.math_b matches 7 run item replace entity @s weapon.mainhand with diamond_axe
tag @s add enmity.equipped