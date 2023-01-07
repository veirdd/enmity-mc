scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.strength] store result score @s enmity.use run data get entity @s Inventory[{Slot:10b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.strength] store result score @s enmity.use run data get entity @s EnderItems[{Slot:1b}].tag.CustomModelData
execute if score @s enmity.use matches 78 at @s run function enmity:items/accessories/shield_capacitor/tick
scoreboard players set @s enmity.use 0