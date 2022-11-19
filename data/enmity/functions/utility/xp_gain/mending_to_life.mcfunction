execute if predicate enmity:random/random_0.2 if predicate enmity:entity/has_equipped_item/weapon_enchanted_with_mending run tag @s add enmity.heal
execute if predicate enmity:random/random_0.1 if predicate enmity:entity/has_equipped_item/helmet_enchanted_with_mending run tag @s add enmity.heal
execute if predicate enmity:random/random_0.1 if predicate enmity:entity/has_equipped_item/chestplate_enchanted_with_mending run tag @s add enmity.heal
execute if predicate enmity:random/random_0.1 if predicate enmity:entity/has_equipped_item/leggings_enchanted_with_mending run tag @s add enmity.heal
execute if predicate enmity:random/random_0.1 if predicate enmity:entity/has_equipped_item/boots_enchanted_with_mending run tag @s add enmity.heal
execute if entity @s[tag=enmity.heal,tag=!enmity.give_instant_health,tag=!enmity.update_health] run xp add @s -5 points
execute if entity @s[tag=enmity.heal,tag=!enmity.give_instant_health,tag=!enmity.update_health] run function enmity:utility/health_modification/increase_health_by_1
tag @s remove enmity.heal