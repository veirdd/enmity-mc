tag @s remove enmity.accessories.inventory.mana
tag @s remove enmity.accessories.inventory.strength
tag @s remove enmity.accessories.inventory.mobility
tag @s remove enmity.accessories.inventory.effect
tag @s remove enmity.accessories.ender.mana
tag @s remove enmity.accessories.ender.strength
tag @s remove enmity.accessories.ender.mobility
tag @s remove enmity.accessories.ender.effect_1
tag @s remove enmity.accessories.ender.effect_2
tag @s remove enmity.accessories.any.mana
tag @s remove enmity.accessories.any.strength
tag @s remove enmity.accessories.any.mobility
tag @s remove enmity.accessories.any.effect
tag @s remove enmity.accessories.soul_gem
tag @s remove enmity.accessories.elemental_emblem
tag @s remove enmity.accessories.rotten_chunk
tag @s remove enmity.accessories.magic_cuffs
tag @s remove enmity.accessories.shield_capacitor
tag @s remove enmity.accessories.elemental_talisman
tag @s remove enmity.accessories.mana_capacitor
tag @s remove enmity.accessories.warped_glyph
execute if entity @s[nbt={Inventory:[{Slot:12b,tag:{Enmity:1,CustomModelData:124}}]}] run tag @s add enmity.accessories.soul_gem
execute if entity @s[tag=!enmity.accessories.soul_gem,nbt={Inventory:[{Slot:9b,tag:{Enmity.ItemGroups:["accessories","mana"]}}]}] run tag @s add enmity.accessories.inventory.mana
execute if entity @s[tag=!enmity.accessories.soul_gem,nbt={Inventory:[{Slot:10b,tag:{Enmity.ItemGroups:["accessories","strength"]}}]}] run tag @s add enmity.accessories.inventory.strength
execute if entity @s[tag=!enmity.accessories.soul_gem,nbt={Inventory:[{Slot:11b,tag:{Enmity.ItemGroups:["accessories","mobility"]}}]}] run tag @s add enmity.accessories.inventory.mobility
execute if entity @s[tag=!enmity.accessories.soul_gem,nbt={Inventory:[{Slot:12b,tag:{Enmity.ItemGroups:["accessories","effect"]}}]}] run tag @s add enmity.accessories.inventory.effect
execute if entity @s[tag=enmity.accessories.soul_gem,nbt={EnderItems:[{Slot:0b,tag:{Enmity.ItemGroups:["accessories","mana"]}}]}] run tag @s add enmity.accessories.ender.mana
execute if entity @s[tag=enmity.accessories.soul_gem,nbt={EnderItems:[{Slot:1b,tag:{Enmity.ItemGroups:["accessories","strength"]}}]}] run tag @s add enmity.accessories.ender.strength
execute if entity @s[tag=enmity.accessories.soul_gem,nbt={EnderItems:[{Slot:2b,tag:{Enmity.ItemGroups:["accessories","mobility"]}}]}] run tag @s add enmity.accessories.ender.mobility
execute if entity @s[tag=enmity.accessories.soul_gem,nbt={EnderItems:[{Slot:3b,tag:{Enmity.ItemGroups:["accessories","effect"]}}]}] run tag @s add enmity.accessories.ender.effect_1
execute if entity @s[tag=enmity.accessories.soul_gem,nbt={EnderItems:[{Slot:4b,tag:{Enmity.ItemGroups:["accessories","effect"]}}]}] run tag @s add enmity.accessories.ender.effect_2
execute if entity @s[tag=enmity.accessories.inventory.mana] run tag @s add enmity.accessories.any.mana
execute if entity @s[tag=enmity.accessories.inventory.strength] run tag @s add enmity.accessories.any.strength
execute if entity @s[tag=enmity.accessories.inventory.mobility] run tag @s add enmity.accessories.any.mobility
execute if entity @s[tag=enmity.accessories.inventory.effect] run tag @s add enmity.accessories.any.effect
execute if entity @s[tag=enmity.accessories.ender.mana] run tag @s add enmity.accessories.any.mana
execute if entity @s[tag=enmity.accessories.ender.strength] run tag @s add enmity.accessories.any.strength
execute if entity @s[tag=enmity.accessories.ender.mobility] run tag @s add enmity.accessories.any.mobility
execute if entity @s[tag=enmity.accessories.ender.effect_1] run tag @s add enmity.accessories.any.effect
execute if entity @s[tag=enmity.accessories.ender.effect_2] run tag @s add enmity.accessories.any.effect