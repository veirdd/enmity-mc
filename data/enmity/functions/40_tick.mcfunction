# Other

execute unless entity @e[type=wither] run tag @a[tag=enmity.wither_target] remove enmity.wither_target
execute unless entity @e[type=elder_guardian] run tag @a[tag=enmity.elder_target] remove enmity.elder_target
execute unless entity @e[type=ender_dragon] run tag @a[tag=enmity.dragon_target] remove enmity.dragon_target

# Items

execute if score %death_mode enmity.value matches 0 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.health < @s enmity.max_hp if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:78}}]}] run function enmity:misc/health_modification/increase_health_by_1

execute as @a[gamemode=!spectator,predicate=enmity:entity/has_armor/crystalline_set] at @s run function enmity:items/armor/crystalline/40_tick

# Entities

scoreboard players add @e[type=item,tag=!enmity.projectile] enmity.age 2

execute as @e[type=ghast] at @s run function enmity:entities/mobs/ghast/40_tick
execute as @e[type=ender_dragon] at @s run function enmity:entities/mobs/ender_dragon/40_tick
execute as @e[type=warden] at @s run effect give @a[gamemode=!spectator,gamemode=!creative,distance=..24] darkness 10 0 true
execute as @e[type=magma_cube,tag=enmity.flame_spewer] at @s run function enmity:entities/mobs/flame_spewer/40_tick

execute as @a[gamemode=!spectator] at @s if predicate enmity:environment/near_deep_dark run function enmity:entities/mobs/sculker/spawn_check
execute unless predicate enmity:environment/is_night as @a[gamemode=!spectator,predicate=enmity:environment/in_overworld,tag=enmity.on_surface] if predicate enmity:random/random_0.05 at @s if entity @s[y=100,dy=10000] run function enmity:entities/mobs/harpy/spawning/spawn_check
execute if predicate enmity:environment/is_raining as @a[gamemode=!spectator,predicate=enmity:environment/in_overworld,predicate=!enmity:environment/biome/tag/has_no_rain,tag=enmity.on_surface] if predicate enmity:random/random_0.1 at @s run function enmity:entities/mobs/nimbus/spawning/spawn_check
execute if predicate enmity:environment/is_thundering as @a[gamemode=!spectator,predicate=enmity:environment/in_overworld,predicate=!enmity:environment/biome/tag/has_no_rain,tag=enmity.on_surface] if predicate enmity:random/random_0.15 at @s run function enmity:entities/mobs/nimbus/spawning/spawn_check
execute as @a[gamemode=!spectator] at @s if predicate enmity:random/random_0.25 run function enmity:entities/mobs/flame_spewer/spawning/spawn_check

execute as @e[type=item,scores={enmity.age=30..}] if entity @s[nbt={Item:{tag:{Enmity.ItemGroups:["tree_seeds"]}}}] at @s if predicate enmity:environment/tree_seed_valid_space run function enmity:entities/other_entities/items/tag_tree_seeds/check_type
execute as @e[type=item,scores={enmity.age=30..}] if entity @s[nbt={Item:{id:"minecraft:mangrove_propagule"}}] at @s if predicate enmity:environment/tree_seed_valid_space run function enmity:entities/other_entities/items/mangrove_propagule/place_sapling

# Temperature

scoreboard players set @a[gamemode=!adventure,gamemode=!survival] enmity.temp_cd 0
execute as @a unless score @s enmity.temp_cd matches -10..10 if score @s enmity.temp matches -3..3 at @s run function enmity:misc/health_modification/temperature_damage

# Other

execute as @a at @s run function enmity:misc/entity_encounter


schedule function enmity:40_tick 40t