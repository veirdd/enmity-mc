execute unless predicate enmity:entity/is_riding_vehicle run function enmity:entities/other_entities/follow_range_extender/remove
execute if entity @p[distance=..15,gamemode=!spectator] run function enmity:entities/other_entities/follow_range_extender/remove
execute if entity @e[type=villager,distance=..15,limit=1] run function enmity:entities/other_entities/follow_range_extender/remove
data modify entity @s Fire set value -1s