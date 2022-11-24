execute store result score @s enmity.use run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if score @s enmity.use matches 5 at @s run function enmity:items/accessories/hermes_boots/tick
execute if score @s enmity.use matches 11 at @s run function enmity:items/accessories/cloud_in_a_bottle/tick
execute if score @s enmity.use matches 12 at @s run function enmity:items/accessories/ethereal_boots/tick
execute if score @s enmity.use matches 28 at @s run function enmity:items/accessories/celestial_tracers/tick
execute if score @s enmity.use matches 44 at @s run function enmity:items/accessories/cloud_in_a_balloon/tick
execute if score @s enmity.use matches 86 at @s run function enmity:items/accessories/cloud_hoppers/tick
execute if score @s enmity.use matches 113 at @s run function enmity:items/accessories/winged_strawberry/tick
scoreboard players set @s enmity.use 0