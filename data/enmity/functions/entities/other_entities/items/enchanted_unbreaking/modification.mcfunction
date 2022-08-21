execute store result score @s enmity.math_a run data get entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score @s enmity.math_a matches 1 run data modify entity @s Age set value -6000s
execute if score @s enmity.math_a matches 2 run data modify entity @s Age set value -12000s
execute if score @s enmity.math_a matches 3 run data modify entity @s Age set value -18000s