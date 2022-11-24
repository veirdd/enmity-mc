execute store result score @s enmity.use run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if score @s enmity.use matches 5 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "" 0.02 add
execute if score @s enmity.use matches 86 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "" 0.025 add
execute if score @s enmity.use matches 12 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "" 0.04 add
execute if score @s enmity.use matches 28 run attribute @s generic.movement_speed modifier add 0-0-0-0-2 "" 0.06 add
scoreboard players set @s enmity.use 0