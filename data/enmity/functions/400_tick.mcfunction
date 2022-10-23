# Items

execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:52}}]}] run function enmity:utility/health_modification/increase_health_by_1
execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:55}}]}] run function enmity:utility/health_modification/increase_health_by_1
execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:76}}]}] run function enmity:utility/health_modification/increase_health_by_1

#

schedule function enmity:400_tick 400t