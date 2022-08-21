execute store result score @s[gamemode=!creative] enmity.math_a run clear @s rotten_flesh 1
execute if score @s[gamemode=!creative] enmity.math_a matches 1 unless predicate enmity:random/random_0.25 run give @s rotten_flesh 1
execute if score @s[gamemode=!creative] enmity.math_a matches 1 run function enmity:items/usable/entrail_spewer/use
execute if entity @s[gamemode=creative] run function enmity:items/usable/entrail_spewer/use
stopsound @p * entity.item.pickup