execute unless score @s enmity.health = @s enmity.max_hp if score @s enmity.xp matches 5.. if predicate enmity:entity/has_equipped_item/enchanted_with_mending run function enmity:misc/xp_gain/mending_to_life