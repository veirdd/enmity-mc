execute if entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:48}}]}] run function enmity:items/accessories/rotten_chunk/damage
execute if entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:63}}]}] run function enmity:items/accessories/magic_cuffs/damage
execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:64}}]}] run function enmity:items/accessories/elemental_talisman/damage
execute if predicate enmity:entity/has_armor/crystalline_set run function enmity:items/armor/crystalline/summon_sparks
execute if entity @s[tag=enmity.hit] run playsound entity.player.hurt player @a[distance=0..] ~ ~ ~ 1 1 0