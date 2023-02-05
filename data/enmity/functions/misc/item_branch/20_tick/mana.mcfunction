scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.mana] store result score @s enmity.use run data get entity @s Inventory[{Slot:9b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.mana] store result score @s enmity.use run data get entity @s EnderItems[{Slot:0b}].tag.CustomModelData
execute if score @s enmity.use matches 8 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.use matches 10 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.use matches 20 run scoreboard players add @s enmity.max_mana 400
execute if score @s enmity.use matches 21 run scoreboard players add @s enmity.max_mana 200
execute if score @s enmity.use matches 22 run scoreboard players add @s enmity.max_mana 400
execute if score @s enmity.use matches 23 run scoreboard players add @s enmity.max_snt 1
execute if score @s enmity.use matches 64 run scoreboard players add @s enmity.max_mana 800
execute if score @s enmity.use matches 64 run scoreboard players add @s enmity.max_snt 1
execute if score @s enmity.use matches 64 run tag @s add enmity.accessories.elemental_talisman
execute if score @s enmity.use matches 114 run scoreboard players add @s enmity.max_mana 800
execute if score @s enmity.use matches 114 run scoreboard players add @s enmity.dmg_bst 5
execute if score @s enmity.use matches 114 run tag @s add enmity.accessories.mana_capacitor
execute if score @s enmity.use matches 118 run function enmity:items/accessories/necklace_of_vitality/sentry_boost
scoreboard players set @s enmity.use 0