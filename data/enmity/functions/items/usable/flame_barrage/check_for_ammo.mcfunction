execute store result score @s[gamemode=!creative] enmity.math_a run clear @s blaze_powder 0
execute if score @s[gamemode=!creative] enmity.math_a matches 1.. if predicate enmity:random/random_0.1 run clear @s blaze_powder 1
execute if score @s[gamemode=!creative] enmity.math_a matches 1.. run function enmity:items/usable/flame_barrage/use
execute if entity @s[gamemode=creative] run function enmity:items/usable/flame_barrage/use