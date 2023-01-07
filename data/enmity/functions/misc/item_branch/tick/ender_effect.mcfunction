scoreboard players set @s enmity.math_a 0
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.math_a run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute store result score @s enmity.use run data get entity @s EnderItems[{Slot:4b}].tag.CustomModelData
execute if score @s enmity.use = @s enmity.math_a run scoreboard players set @s enmity.use 0
execute if score @s enmity.use matches 80 at @s run function enmity:items/accessories/magnet/tick
execute if score @s enmity.use matches 70 at @s run function enmity:items/accessories/wither_rose_ring/tick
execute if score @s enmity.use matches 92 if score @s enmity.food matches 15 run effect give @s hunger 1 100 true
execute if score @s enmity.use matches 93 at @s run function enmity:items/accessories/repelling_stone/tick
execute if score @s enmity.use matches 95 at @s run function enmity:items/accessories/frogs_leg/tick
execute if score @s enmity.use matches 107 run effect clear @s darkness
execute if score @s enmity.use matches 111 run effect clear @s poison
execute if score @s enmity.use matches 112 at @s run function enmity:items/accessories/ring_of_devotion/tick
execute if score @s enmity.use matches 120 at @s run function enmity:items/accessories/crimson_glyph/tick
execute if score @s enmity.use matches 121 at @s run function enmity:items/accessories/warped_glyph/tick
execute if score @s enmity.use matches 100 at @s run function enmity:items/accessories/pocket_moon/tick
execute if score @s enmity.use matches 125 at @s run function enmity:items/accessories/shield_capacitor/tick