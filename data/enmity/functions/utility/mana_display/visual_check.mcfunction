execute if entity @s unless score @s enmity.air matches ..299 unless predicate enmity:entity/is_riding_living_vehicle run function enmity:utility/mana_display/visual_show
execute if entity @s if score @s enmity.air matches ..299 run title @s actionbar ""
execute if entity @s if predicate enmity:entity/is_riding_living_vehicle run title @s actionbar ""