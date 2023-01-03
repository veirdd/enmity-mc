scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.mobility] store result score @s enmity.use run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.mobility] store result score @s enmity.use run data get entity @s EnderItems[{Slot:2b}].tag.CustomModelData
execute if score @s enmity.use matches 43 run effect give @s jump_boost 2 1 true
execute if score @s enmity.use matches 43 run effect give @s slow_falling 2 0 true
execute if score @s enmity.use matches 44 run effect give @s jump_boost 2 1 true
execute if score @s enmity.use matches 44 run effect give @s slow_falling 2 0 true
scoreboard players set @s enmity.use 0