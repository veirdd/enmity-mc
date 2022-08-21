execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_17
execute if score @s enmity.math_a matches 1..4 if predicate enmity:random/random_0.25 run item replace entity @s armor.head with leather_helmet
execute if score @s enmity.math_a matches 1..4 if predicate enmity:random/random_0.25 run item replace entity @s armor.chest with leather_chestplate
execute if score @s enmity.math_a matches 1..4 if predicate enmity:random/random_0.25 run item replace entity @s armor.legs with leather_leggings
execute if score @s enmity.math_a matches 1..4 if predicate enmity:random/random_0.25 run item replace entity @s armor.feet with leather_boots
execute if score @s enmity.math_a matches 5..8 if predicate enmity:random/random_0.25 run item replace entity @s armor.head with chainmail_helmet
execute if score @s enmity.math_a matches 5..8 if predicate enmity:random/random_0.25 run item replace entity @s armor.chest with chainmail_chestplate
execute if score @s enmity.math_a matches 5..8 if predicate enmity:random/random_0.25 run item replace entity @s armor.legs with chainmail_leggings
execute if score @s enmity.math_a matches 5..8 if predicate enmity:random/random_0.25 run item replace entity @s armor.feet with chainmail_boots
execute if score @s enmity.math_a matches 9..12 if predicate enmity:random/random_0.25 run item replace entity @s armor.head with golden_helmet
execute if score @s enmity.math_a matches 9..12 if predicate enmity:random/random_0.25 run item replace entity @s armor.chest with golden_chestplate
execute if score @s enmity.math_a matches 9..12 if predicate enmity:random/random_0.25 run item replace entity @s armor.legs with golden_leggings
execute if score @s enmity.math_a matches 9..12 if predicate enmity:random/random_0.25 run item replace entity @s armor.feet with golden_boots
execute if score @s enmity.math_a matches 13..16 if predicate enmity:random/random_0.25 run item replace entity @s armor.head with iron_helmet
execute if score @s enmity.math_a matches 13..16 if predicate enmity:random/random_0.25 run item replace entity @s armor.chest with iron_chestplate
execute if score @s enmity.math_a matches 13..16 if predicate enmity:random/random_0.25 run item replace entity @s armor.legs with iron_leggings
execute if score @s enmity.math_a matches 13..16 if predicate enmity:random/random_0.25 run item replace entity @s armor.feet with iron_boots
execute if score @s enmity.math_a matches 17 if predicate enmity:random/random_0.25 run item replace entity @s armor.head with diamond_helmet
execute if score @s enmity.math_a matches 17 if predicate enmity:random/random_0.25 run item replace entity @s armor.chest with diamond_chestplate
execute if score @s enmity.math_a matches 17 if predicate enmity:random/random_0.25 run item replace entity @s armor.legs with diamond_leggings
execute if score @s enmity.math_a matches 17 if predicate enmity:random/random_0.25 run item replace entity @s armor.feet with diamond_boots
tag @s add enmity.equipped