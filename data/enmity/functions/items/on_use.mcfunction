execute if entity @s[predicate=enmity:entity/enmity_use/accessory_in_mainhand] run function enmity:items/accessories/equip_mh
execute if entity @s[predicate=enmity:entity/enmity_use/accessory_in_offhand,predicate=enmity:entity/enmity_use/none_in_mainhand] run function enmity:items/accessories/equip_oh
execute if entity @s[scores={enmity.cooldown=0},predicate=enmity:entity/enmity_use/usable_in_mainhand] run function enmity:items/use_modifiers
execute if entity @s[scores={enmity.cooldown=0},predicate=enmity:entity/enmity_use/usable_in_offhand,predicate=enmity:entity/enmity_use/none_in_mainhand] run function enmity:items/use_modifiers
scoreboard players set @s enmity.use 0