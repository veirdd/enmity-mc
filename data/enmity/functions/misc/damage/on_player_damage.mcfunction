execute if entity @s[tag=enmity.accessories.rotten_chunk] run function enmity:items/accessories/rotten_chunk/damage
execute if entity @s[tag=enmity.accessories.magic_cuffs] run function enmity:items/accessories/magic_cuffs/damage
execute if entity @s[tag=enmity.accessories.elemental_talisman] run function enmity:items/accessories/elemental_talisman/damage
execute if entity @s[tag=enmity.hit,tag=enmity.accessories.shield_capacitor] run function enmity:items/accessories/shield_capacitor/damage
execute if entity @s[tag=enmity.hit,tag=enmity.accessories.elemental_emblem] run function enmity:items/accessories/shield_capacitor/damage
execute if predicate enmity:entity/has_armor/crystalline_set run function enmity:items/armor/crystalline/summon_sparks
execute if score %death_mode enmity.value matches 1 if score @s enmity.taken_dmg matches 6.. if entity @s[nbt={HurtTime:10s}] run effect give @s blindness 1 0 true
execute if score %death_mode enmity.value matches 1 if score @s enmity.taken_dmg matches 6.. if entity @s[nbt={HurtTime:9s}] run effect give @s blindness 1 0 true