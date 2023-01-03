# Other

execute as @e[type=!#enmity:not_living] at @s run function enmity:misc/damage/check
execute as @a[tag=enmity.update_health,tag=!enmity.give_instant_health] run function enmity:misc/health_modification/update_health
execute as @a[tag=enmity.give_instant_health] run function enmity:misc/health_modification/give_instant_health
execute as @a[tag=enmity.clear_hunger] run function enmity:items/food/rotten_flesh/clear_hunger
execute as @a[tag=enmity.clear_wither] run function enmity:misc/health_modification/clear_wither
effect clear @a absorption
effect clear @e[type=!#enmity:not_living] levitation
clear @a #enmity:used_as_projectiles{Enmity.DeleteItem:1}
clear @a knowledge_book

# Stats

scoreboard players remove @e[type=!#enmity:not_living,scores={enmity.iframes=1..}] enmity.iframes 1
scoreboard players set @a[scores={enmity.jump=1..}] enmity.jump 0
execute as @a unless score @s enmity.age matches 2147483647 unless score @s enmity.health matches 0 run scoreboard players add @s enmity.age 1
execute store result score %time enmity.value run time query daytime
scoreboard players add @a[predicate=!enmity:entity/is_on_ground] enmity.midair_time 1
scoreboard players set @a[predicate=enmity:entity/is_on_ground] enmity.midair_time 0
scoreboard players remove @a[scores={enmity.cooldown=1..}] enmity.cooldown 1

# Entities

scoreboard players add @e[type=#enmity:target_dummy,tag=enmity.target_dummy] enmity.age 1
execute as @e[type=!#enmity:not_living,type=!player,tag=!enmity.modified,tag=!enmity.projectile] at @s run function enmity:entities/modifications/check_type
execute as @e[type=end_crystal,tag=!enmity.modified] at @s run function enmity:entities/other_entities/end_crystal/modification
execute as @e[type=furnace_minecart,tag=!enmity.modified] at @s run function enmity:entities/other_entities/furnace_minecart/modification

# Items

execute as @a[tag=enmity.delirium] at @s anchored eyes positioned ^ ^ ^3 run function enmity:items/usable/delirium/tick
execute as @a[tag=enmity.flame_barrage] at @s run function enmity:items/usable/flame_barrage/tick
execute as @a[tag=enmity.entrail_spewer] at @s run function enmity:items/usable/entrail_spewer/tick
execute as @a[tag=enmity.subjugator] at @s run function enmity:items/usable/subjugator/tick

execute as @a[scores={enmity.use=1..}] run function enmity:items/on_use
execute as @a if score @s enmity.use_bundle matches 1.. if entity @s[nbt={SelectedItem:{tag:{Enmity:1,CustomModelData:4}}}] at @s run function enmity:items/usable/void_bag/use

execute as @a[gamemode=!spectator,tag=enmity.accessories.any.mobility] run function enmity:misc/item_branch/tick/mobility
execute as @a[gamemode=!spectator,tag=enmity.accessories.any.effect] run function enmity:misc/item_branch/tick/effect

# Items

execute as @a if predicate enmity:entity/has_armor/hadal_set run effect clear @s darkness
execute as @a if predicate enmity:entity/has_armor/celestial_set run function enmity:items/armor/celestial/tick
execute as @a if predicate enmity:entity/has_effect/berserked run function enmity:items/food/berserk_potion/particles
execute as @a[tag=enmity.eldritch_candle_choosing_difficulty,scores={enmity.setup=1..}] at @s run function enmity:items/usable/eldritch_candle/change_difficulty
execute as @a[tag=enmity.eldritch_candle_choosing_difficulty,scores={enmity.left=1..}] run function enmity:items/usable/eldritch_candle/text

execute as @a[predicate=enmity:entity/remove_durability/any] run function enmity:misc/remove_durability

# Projectiles

scoreboard players add @e[tag=enmity.projectile,tag=!enmity.sentry] enmity.age 1

execute as @e[type=#enmity:common_projectiles,tag=enmity.projectile] run function enmity:misc/projectile_branch/tick/check_type

execute as @e[type=!#enmity:not_living,scores={enmity.phantasmal_curse=1..}] at @s run function enmity:items/usable/delirium/tick_curse
execute as @e[type=zombie,tag=enmity.call_of_the_undead] run data modify entity @s Fire set value -1s

# Blocks

execute as @e[type=item_frame,tag=enmity.block,tag=enmity.block_unset] at @s run function enmity:blocks/check_type
execute as @e[type=item_frame,tag=enmity.block] at @s unless block ~ ~ ~ spawner run function enmity:blocks/destroy

# Entities

execute as @e[type=item,tag=!enmity.modified,nbt={Age:1s}] at @s run function enmity:entities/modifications/items_age1
execute as @e[type=item,tag=!enmity.modified] at @s run function enmity:entities/modifications/items

execute as @e[type=skeleton,tag=enmity.wraith] at @s run function enmity:entities/mobs/wraith/tick
execute as @e[type=wither,tag=!enmity.despawning] at @s run function enmity:entities/mobs/wither/tick
execute as @e[type=wither,tag=enmity.despawning] at @s run function enmity:entities/mobs/wither/despawning/silent
execute as @e[type=elder_guardian] at @s run function enmity:entities/mobs/elder_guardian/tick
execute as @e[type=bat,tag=enmity.hellbat] at @s run function enmity:entities/mobs/hellbat/tick
execute as @e[type=giant] at @s run function enmity:entities/mobs/giant/tick
execute as @e[type=zombie,tag=enmity.zombie_minion] at @s run function enmity:entities/mobs/giant/zombie_minion_tick
execute as @e[type=phantom,tag=!enmity.custom_mob] at @s run particle portal ~ ~ ~ 0.25 0.1 0.25 0.5 1 normal
execute as @e[type=illusioner] at @s run function enmity:entities/mobs/illusioner/tick
execute as @e[type=bat,tag=enmity.bat] at @s run function enmity:entities/mobs/bat/tick
execute as @e[type=wither_skeleton,tag=enmity.end_wither_skeleton] at @s run function enmity:entities/mobs/end_wither_skeleton/tick
execute as @e[type=armor_stand,tag=enmity.target_dummy] at @s run function enmity:entities/other_entities/target_dummy/tick_model
execute as @e[type=zombie,tag=enmity.target_dummy] at @s run function enmity:entities/other_entities/target_dummy/tick_body
execute as @e[type=ender_dragon] at @s run function enmity:entities/mobs/ender_dragon/tick
execute as @e[type=marker,tag=enmity.delirium_crafting] at @s run function enmity:items/crafting/custom/delirium/tick
execute as @e[type=zombie,tag=enmity.follow_range_extender] at @s run function enmity:entities/other_entities/follow_range_extender/tick
execute as @e[type=zombie,tag=enmity.smiler] at @s run function enmity:entities/mobs/smiler/tick
execute as @e[type=warden] at @s run function enmity:entities/mobs/warden/tick
execute as @e[type=furnace_minecart] at @s run function enmity:entities/other_entities/furnace_minecart/tick
execute as @e[type=phantom,tag=enmity.harpy] at @s run function enmity:entities/mobs/harpy/tick
execute as @e[type=pig,tag=enmity.harpy_saddle] at @s run function enmity:entities/mobs/harpy/saddle/tick
execute as @e[type=armor_stand,tag=enmity.structure_spawn] at @s unless block ~ ~-1 ~ jigsaw run function enmity:entities/structure_spawns/init
execute as @e[type=area_effect_cloud,tag=enmity.waystone_id] at @s run function enmity:blocks/functions/waystone/tick_aec
execute as @e[type=magma_cube,tag=enmity.flame_spewer] at @s run function enmity:entities/mobs/flame_spewer/tick
execute as @e[type=drowned] at @s run function enmity:entities/mobs/drowned/tick
execute as @e[type=zombie,tag=enmity.nimbus] at @s run function enmity:entities/mobs/nimbus/tick
execute as @e[type=shulker] if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/sculker/sensed_player
execute as @e[type=zombie,tag=enmity.visage] at @s run function enmity:entities/mobs/visage/tick

kill @e[type=item,tag=!enmity.projectile,tag=enmity.modified,nbt={Item:{tag:{Enmity.DeleteItem:1}}}]
execute as @e[type=arrow,nbt={HasBeenShot:0b}] at @s run function enmity:misc/arrow_damage

# Other

execute as @a at @s run function enmity:misc/projectiles/sentries/sentry_anchor/tick
execute as @a run function enmity:misc/xp_gain/check
execute as @a if score @s enmity.guide matches 1.. run function enmity:guide/open
execute as @a if score @s enmity.remove_sentries matches 1.. run function enmity:misc/projectiles/sentries/remove_all
execute as @a run function enmity:misc/player_toggles/player_toggles
execute as @a[gamemode=!spectator] unless predicate enmity:entity/is_riding_vehicle at @s run function enmity:misc/fall_through_leaves
execute if score %difficulty enmity.value matches 1.. as @a[scores={enmity.age=1}] unless data entity @s SpawnX run function enmity:misc/spawn_spread
execute as @a at @s if predicate enmity:entity/is_using_waystone run function enmity:blocks/functions/waystone/tick_user
execute if entity @e[type=!#enmity:not_living,scores={enmity.subjugator_capture_id=-2147483648..2147483647}] as @a run function enmity:items/usable/subjugator/capture_validity_check
execute if score %hardmode enmity.value matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] at @s if entity @e[type=lightning_bolt,distance=..3] run function enmity:items/crafting/custom/lightning_surge
execute unless score %giant_defeated enmity.value matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s run function enmity:misc/prevent_nether
execute as @a[scores={enmity.die=1..}] at @s run function enmity:misc/on_player_death
execute in the_end as @e[type=!ender_dragon,distance=0..] at @s if entity @s[y=-32,dy=-10000] run function enmity:misc/end_to_overworld_tp
execute as @a[tag=enmity.dragon_target] at @s if predicate enmity:environment/in_overworld run tag @s remove enmity.dragon_target
execute in the_end positioned 0 64 0 as @a if entity @s[distance=..128] run scoreboard players add @s enmity.in_end_center_time 1
execute in the_end positioned 0 64 0 as @a unless entity @s[distance=..128] run scoreboard players set @s enmity.in_end_center_time 0
execute at @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}}] run effect give @e[type=strider,distance=..10] slowness 1 255 true
execute if score %difficulty enmity.value matches 0.. as @a unless score @s enmity.left matches 0.. run function enmity:misc/on_join/welcome
execute if score %difficulty enmity.value matches 0 run function enmity:misc/setup/setup_tick
execute as @a[scores={enmity.left=1}] run function enmity:misc/on_join/always

execute as Veird run function enmity:items/accessories/pocket_moon/tick