execute if entity @s[type=spider] unless entity @p[distance=..24] if predicate enmity:environment/underground_and_below run function enmity:entities/replacement_spawns/cave_spider
execute if entity @s[type=#enmity:wraith_replaceable] unless entity @p[distance=..24] if predicate enmity:random/random_0.05 run function enmity:entities/replacement_spawns/wraith
execute if entity @s[type=#enmity:wraith_replaceable] unless entity @p[distance=..24] if predicate enmity:random/random_0.2 if predicate enmity:environment/deep_underground run function enmity:entities/replacement_spawns/wraith
execute if entity @s[type=skeleton] unless entity @p[distance=..24] if predicate enmity:environment/in_the_nether run function enmity:entities/replacement_spawns/wraith
execute if entity @s[type=zombified_piglin] store result score @s enmity.math_a if entity @e[type=bat,distance=0..]
execute if entity @s[type=zombified_piglin] if score @s enmity.math_a matches ..14 unless entity @p[distance=..24] if predicate enmity:random/random_0.2 run function enmity:entities/replacement_spawns/hellbat
execute if entity @s[type=zombified_piglin] unless entity @p[distance=..24] if predicate enmity:random/random_0.1 run function enmity:entities/replacement_spawns/blaze
execute if entity @s[type=enderman] if predicate enmity:environment/in_the_end unless entity @p[distance=..24] positioned 0 64 0 unless entity @s[distance=..512] at @s if predicate enmity:random/random_0.2 run function enmity:entities/replacement_spawns/end_wither_skeleton
execute if entity @s[type=enderman] if predicate enmity:environment/in_the_end unless entity @p[distance=..24] positioned 0 64 0 unless entity @s[distance=..512] at @s if predicate enmity:random/random_0.25 run function enmity:entities/replacement_spawns/phantom
execute if entity @s[type=shulker] unless entity @p[distance=..24] if predicate enmity:environment/in_the_end run function enmity:entities/replacement_spawns/illusioner
execute if entity @s[type=enderman] unless entity @p[distance=..24] if predicate enmity:environment/in_the_end if predicate enmity:environment/structure/endcity run function enmity:entities/replacement_spawns/illusioner
execute if entity @s[type=bat] run function enmity:entities/replacement_spawns/bat
execute if entity @s[type=#enmity:enemy_replaceable] unless entity @p[distance=..24] if predicate enmity:random/random_0.05 if predicate enmity:environment/in_overworld if predicate enmity:environment/deep_underground run function enmity:entities/replacement_spawns/vex
execute if entity @s[type=#enmity:enemies,type=!illusioner,type=!silverfish] unless entity @p[distance=..24] if predicate enmity:environment/structure/stronghold run function enmity:entities/replacement_spawns/illusioner
execute if entity @s[type=#enmity:enemy_replaceable] unless entity @p[distance=..24] if entity @p[distance=..72] if predicate enmity:random/random_0.5 if predicate enmity:environment/in_overworld if predicate enmity:environment/is_smiler_time unless entity @e[type=zombie,tag=enmity.smiler,distance=..48] run function enmity:entities/replacement_spawns/smiler
execute if entity @s[type=illusioner,tag=!enmity.fixed_illusioner] run function enmity:entities/replacement_spawns/illusioner
execute if entity @s[type=squid] unless entity @p[distance=..24] if predicate enmity:random/random_0.25 run function enmity:entities/replacement_spawns/drowned_from_squid

execute if entity @s[type=#enmity:extend_follow_range,tag=!enmity.range_extended] run function enmity:entities/mobs/tag_extend_follow_range/modification
execute if entity @s[type=creeper,tag=!enmity.range_extended] run function enmity:entities/mobs/tag_extend_follow_range/modification
execute if entity @s[type=#enmity:enemies,type=!creeper] run attribute @s generic.armor base set 12
execute if entity @s[type=#minecraft:skeletons] run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "" 0.3 multiply_base
execute if entity @s[type=#enmity:increase_movement_speed] unless entity @s[nbt={IsBaby:1b}] run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "" 0.4 multiply_base
execute if entity @s[type=#enmity:increase_movement_speed] unless entity @s[nbt={IsBaby:1b}] if predicate enmity:random/random_0.5 run attribute @s generic.movement_speed modifier add 0-0-0-0-1 "" 0.25 multiply_base
execute if entity @s[type=#enmity:increase_attack_damage_more] run attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 23 add
execute if entity @s[type=#enmity:increase_attack_damage_less] run attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 20 add
execute if entity @s[type=#enmity:increase_max_health] run attribute @s generic.max_health modifier add 0-0-0-0-0 "" 2.5 multiply_base
attribute @s[type=#enmity:enemies,type=!creeper] generic.knockback_resistance modifier add 0-0-0-0-0 "" 0.25 add
execute if entity @s[type=#enmity:end_enemies] if predicate enmity:environment/in_the_end run tag @s add enmity.end
execute if entity @s[type=phantom,tag=enmity.end] run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "" 30 add
execute if entity @s[type=phantom,tag=enmity.end] run attribute @s generic.max_health modifier add 0-0-0-0-1 "" 3 multiply_base
scoreboard players set @s[type=#enmity:enemies,tag=!enmity.boss] enmity.dmg_rdc 4
execute if entity @s[type=iron_golem] run attribute @s generic.armor base set 30
execute if entity @s[type=iron_golem] run attribute @s generic.max_health base set 500
execute if entity @s[type=iron_golem] run attribute @s generic.attack_damage base set 24
execute if entity @s[type=#enmity:enemies] run attribute @s generic.follow_range base set 64
execute if entity @s[type=#enmity:villagers] run effect give @s regeneration 1000000 0 true
execute if entity @s[type=rabbit] if predicate enmity:random/random_0.005 run data modify entity @s RabbitType set value 99
execute if entity @s[type=wither] run function enmity:entities/mobs/wither/modifications/expert
execute if entity @s[type=elder_guardian] run function enmity:entities/mobs/elder_guardian/modifications/expert
execute if entity @s[type=ender_dragon] run function enmity:entities/mobs/ender_dragon/modifications/expert
execute if entity @s[type=giant] run function enmity:entities/mobs/giant/modifications/expert
execute if entity @s[type=vex] run attribute @s generic.attack_damage base set 0
execute if entity @s[type=vex] run attribute @s generic.max_health base set 22
execute if entity @s[type=creeper] run data merge entity @s {Fuse:20s}
data merge entity @s[type=ghast] {ExplosionPower:2}
execute if entity @s[type=#enmity:reinforcement_callers] if data entity @s Attributes[].Modifiers[{Name:"Leader zombie bonus"}] run function enmity:entities/modifications/remove_zombie_leaders
scoreboard players set @s[type=illusioner] enmity.dmg_bst 13
execute if entity @s[type=illusioner] run effect give @s health_boost 1000000 11 true
execute if entity @s[type=magma_cube] run scoreboard players set @s enmity.dmg_bst 10
execute if entity @s[type=wither_skeleton] run scoreboard players set @s enmity.dmg_bst 2
execute if entity @s[type=creeper] run scoreboard players set @s enmity.dmg_bst 6
data merge entity @s[type=skeleton] {HandItems:[{id:"bow",Count:1b},{}]}
execute if entity @s[type=skeleton] if predicate enmity:random/random_0.5 run enchant @s flame
execute if entity @s[type=wandering_trader] run function enmity:entities/mobs/wandering_trader/modification_hardmode
execute if entity @s[type=warden] run attribute @s generic.max_health base set 100
execute if entity @s[type=warden] run attribute @s generic.movement_speed base set 0.35
execute unless score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing] if predicate enmity:random/random_0.25 run function enmity:entities/modifications/equip/give_armor
execute unless score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing,type=!skeleton] if predicate enmity:random/random_0.25 run function enmity:entities/modifications/equip/give_weapon
execute unless score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing,tag=enmity.equipped] if predicate enmity:random/random_0.5 run function enmity:entities/modifications/equip/enchant_equipment
execute if score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing] if predicate enmity:random/random_0.5 run function enmity:entities/modifications/equip/give_armor
execute if score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing,type=!skeleton] if predicate enmity:random/random_0.5 run function enmity:entities/modifications/equip/give_weapon
execute if score %death_mode enmity.value matches 1 if entity @s[type=#enmity:armor_wearing,tag=enmity.equipped] unless predicate enmity:random/random_0.25 run function enmity:entities/modifications/equip/enchant_equipment
execute if entity @s[type=#enmity:armor_wearing] run function enmity:entities/modifications/equip/remove_durability
execute if entity @s[type=magma_cube,nbt={Size:0,PersistenceRequired:1b}] run function enmity:misc/despawn
execute if entity @s[type=magma_cube] run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "" 1.3 multiply_base

scoreboard players set @s enmity.cooldown 0
data modify entity @s Health set value 1024
tag @s add enmity.modified