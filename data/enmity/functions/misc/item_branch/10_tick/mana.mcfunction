scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.mana] store result score @s enmity.use run data get entity @s Inventory[{Slot:9b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.mana] store result score @s enmity.use run data get entity @s EnderItems[{Slot:0b}].tag.CustomModelData
execute if score @s enmity.use matches 64 at @s run effect give @s night_vision 30 0 true
execute if score @s enmity.use matches 22 at @s unless predicate enmity:environment/near_deep_dark run effect give @s night_vision 30 0 true
scoreboard players set @s enmity.use 0