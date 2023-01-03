scoreboard players set @s enmity.use 0
execute if entity @s[tag=enmity.accessories.inventory.strength] store result score @s enmity.use run data get entity @s Inventory[{Slot:10b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.strength] store result score @s enmity.use run data get entity @s EnderItems[{Slot:1b}].tag.CustomModelData
execute if score @s enmity.use matches 52 if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp run function enmity:misc/health_modification/increase_health_by_1
execute if score @s enmity.use matches 55 if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp run function enmity:misc/health_modification/increase_health_by_1
execute if score @s enmity.use matches 76 if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp run function enmity:misc/health_modification/increase_health_by_1
scoreboard players set @s enmity.use 0