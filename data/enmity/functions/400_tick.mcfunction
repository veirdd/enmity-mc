# Items

execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:52}}]}] run function enmity:misc/health_modification/increase_health_by_1
execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:55}}]}] run function enmity:misc/health_modification/increase_health_by_1
execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:76}}]}] run function enmity:misc/health_modification/increase_health_by_1

#

execute unless entity @e[type=giant,tag=enmity.boss] run bossbar set enmity.giant players
execute unless entity @e[type=elder_guardian,tag=enmity.boss] run bossbar set enmity.elder_guardian players


schedule function enmity:400_tick 400t