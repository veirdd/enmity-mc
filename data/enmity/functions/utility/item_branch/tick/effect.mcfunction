execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:12b}].tag.CustomModelData
execute if score @s enmity.math_a matches 80 at @s run function enmity:items/accessories/magnet/tick
execute if score @s enmity.math_a matches 70 at @s run function enmity:items/accessories/wither_rose_ring/tick
execute if score @s enmity.math_a matches 92 if score @s enmity.food matches 15 run effect give @s hunger 1 100 true
execute if score @s enmity.math_a matches 93 at @s run function enmity:items/accessories/repelling_stone/tick
execute if score @s enmity.math_a matches 95 at @s run function enmity:items/accessories/frogs_leg/tick
execute if score @s enmity.math_a matches 107 run effect clear @s darkness
execute if score @s enmity.math_a matches 111 run effect clear @s poison
execute if score @s enmity.math_a matches 112 at @s run function enmity:items/accessories/ring_of_devotion/tick