scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.effect] store result score @s enmity.use run data get entity @s Inventory[{Slot:12b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.effect_1] store result score @s enmity.use run data get entity @s EnderItems[{Slot:3b}].tag.CustomModelData
execute if score @s enmity.use matches 84 run attribute @s generic.luck modifier add 0-0-0-0-3 "" 10 add
execute if score @s enmity.use matches 100 run attribute @s generic.knockback_resistance modifier add 0-0-0-0-3 "" 1 add
execute if score @s enmity.use matches 100 run scoreboard players add @s enmity.dmg_bst 5
execute if score @s enmity.use matches 100 at @s run particle end_rod ~ ~1.2 ~ 0.3 0.4 0.3 0 1
execute if score @s enmity.use matches 112 run scoreboard players remove @s enmity.dmg_bst 1
execute if score @s enmity.use matches 112 run scoreboard players remove @s enmity.dmg_rdc 1
execute if score @s enmity.use matches 70 at @s run function enmity:items/accessories/wither_rose_ring/20_tick
execute if score @s enmity.use matches 48 run tag @s add enmity.accessories.rotten_chunk
execute if score @s enmity.use matches 63 run tag @s add enmity.accessories.magic_cuffs
execute if score @s enmity.use matches 125 run tag @s add enmity.accessories.shield_capacitor
execute if score @s enmity.use matches 119 run tag @s add enmity.accessories.frostfire_charm
execute if score @s enmity.use matches 81 run tag @s add enmity.accessories.frozen_charm
execute if score @s enmity.use matches 82 run tag @s add enmity.accessories.fiery_charm
execute if entity @s[tag=enmity.accessories.ender.effect_2] run function enmity:misc/item_branch/20_tick/ender_effect
execute if score @s enmity.use matches 120 run scoreboard players operation @s enmity.dmg_rdc /= %const_2 enmity.value
execute if score @s enmity.use matches 120 run scoreboard players operation @s enmity.dmg_bst *= %const_2 enmity.value
execute if score @s enmity.use matches 121 run scoreboard players operation @s enmity.dmg_bst /= %const_2 enmity.value
scoreboard players set @s enmity.use 0