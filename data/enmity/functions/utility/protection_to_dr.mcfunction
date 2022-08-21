scoreboard players set @s enmity.math_a 0
execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score @s enmity.math_b run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation @s enmity.math_a += @s enmity.math_b
execute store result score @s enmity.math_b run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation @s enmity.math_a += @s enmity.math_b
execute store result score @s enmity.math_b run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation @s enmity.math_a += @s enmity.math_b
scoreboard players operation @s enmity.math_a /= %const_4 enmity.value
scoreboard players operation @s enmity.dmg_rdc += @s enmity.math_a