execute if entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:48}}]}] run function enmity:items/accessories/rotten_chunk/damage
execute if entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:63}}]}] run function enmity:items/accessories/magic_cuffs/damage
execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:64}}]}] run function enmity:items/accessories/elemental_talisman/damage
execute if predicate enmity:entity/has_armor/crystalline_set run function enmity:items/armor/crystalline/summon_sparks
execute if score %death_mode enmity.value matches 1 if score @s enmity.taken_dmg matches 6.. if entity @s[nbt={HurtTime:10s}] run effect give @s blindness 1 0 true
execute if score %death_mode enmity.value matches 1 if score @s enmity.taken_dmg matches 6.. if entity @s[nbt={HurtTime:9s}] run effect give @s blindness 1 0 true