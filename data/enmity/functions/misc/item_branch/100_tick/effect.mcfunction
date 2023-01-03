scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.effect] store result score @s enmity.use run data get entity @s Inventory[{Slot:12b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.use run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute if score @s enmity.use matches 70 at @s if entity @e[type=#enmity:enemies,distance=..12,tag=!enmity.projectile] run function enmity:items/accessories/soul_in_a_jar/100_tick
scoreboard players set @s enmity.use 0