# Other

tag @a[gamemode=spectator] add enmity.projectile
tag @a[gamemode=!spectator] remove enmity.projectile
execute as @e[type=!#enmity:not_living] at @s run function enmity:utility/damage_indicators/check
execute as @a[tag=enmity.update_health,tag=!enmity.give_instant_health] run function enmity:utility/health_modification/update_health
execute as @a[tag=enmity.give_instant_health] run function enmity:utility/health_modification/give_instant_health
execute as @a[tag=enmity.clear_hunger] run function enmity:items/food/rotten_flesh/clear_hunger
effect clear @a absorption

# Items

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={enmity.use=1..,enmity.cooldown=0}] run function enmity:items/usable
execute as @a if score @s enmity.use_bundle matches 1.. if entity @s[nbt={SelectedItem:{tag:{Enmity:1,CustomModelData:4}}}] at @s run function enmity:items/usable/void_bag/use

execute as @a[tag=enmity.delirium] at @s anchored eyes positioned ^ ^ ^3 run function enmity:items/usable/delirium/tick
execute as @e[type=marker,tag=enmity.sky_fracture] at @s run function enmity:items/usable/sky_fracture/tick
execute as @e[type=marker,tag=enmity.liquidator] at @s run function enmity:items/usable/liquidator/tick
execute as @a[tag=enmity.flame_barrage] at @s run function enmity:items/usable/flame_barrage/tick
execute as @a[tag=enmity.entrail_spewer] at @s run function enmity:items/usable/entrail_spewer/tick
execute as @a[tag=enmity.subjugator] at @s run function enmity:items/usable/subjugator/tick
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:97}}}] at @s run function enmity:items/other/calculator/tick
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:97}}]}] at @s run function enmity:items/other/calculator/tick_offhand

scoreboard players set @a enmity.use 0

execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/items/mobility_tick
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/items/effect_tick
execute as @a if predicate enmity:entity/has_armor/hadal_set run effect clear @s darkness
execute as @a if predicate enmity:entity/has_armor/celestial_set run function enmity:items/armor/celestial/tick

execute as @a if predicate enmity:entity/has_effect/berserked run function enmity:items/food/berserk_potion/particles
execute as @a[tag=enmity.eldritch_candle_choosing_difficulty,scores={enmity.setup=1..}] at @s run function enmity:items/usable/eldritch_candle/change_difficulty
execute as @a[tag=enmity.eldritch_candle_choosing_difficulty,scores={enmity.left=1..}] run function enmity:items/usable/eldritch_candle/text

execute as @a run function enmity:utility/remove_durability

# Projectiles

scoreboard players add @e[tag=enmity.projectile,tag=!enmity.sentry] enmity.age 1

execute as @e[type=marker,tag=enmity.projectile] run function enmity:utility/projectile_branch/marker
execute as @e[type=armor_stand,tag=enmity.projectile] run function enmity:utility/projectile_branch/armor_stand
execute as @e[type=bat,tag=enmity.projectile] run data modify entity @s Fire set value -1s

execute as @e[type=!#enmity:not_living,scores={enmity.phantasmal_curse=1..}] at @s run function enmity:items/usable/delirium/tick_curse

execute as @e[type=bat,tag=enmity.soul2] at @s run function enmity:items/usable/the_dance_of_souls/tick_projectile
execute as @e[type=area_effect_cloud,tag=enmity.infernal_helix] at @s run function enmity:items/usable/infernal_helix_staff/tick
execute if score %difficulty enmity.value matches 2 as @e[type=bat,tag=enmity.homing_soul] at @s run function enmity:entities/mobs/wither/projectiles/homing_soul/tick_expert
execute if score %difficulty enmity.value matches 1 as @e[type=bat,tag=enmity.homing_soul] at @s run function enmity:entities/mobs/wither/projectiles/homing_soul/tick_normal
execute as @e[type=bat,tag=enmity.infernal_helix_projectile] at @s run function enmity:items/usable/infernal_helix_staff/tick_projectile
execute as @e[type=area_effect_cloud,tag=enmity.charm_of_decay] at @s run function enmity:items/usable/charm_of_decay/tick
execute as @e[type=zombie,tag=enmity.call_of_the_undead] run data modify entity @s Fire set value 0s
execute as @e[type=item,tag=enmity.flame_barrage] at @s run function enmity:items/usable/flame_barrage/tick_projectile
execute as @e[type=item,tag=enmity.flame_barrage,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/flame_barrage/motion
execute as @e[type=item,tag=enmity.entrail_spewer] at @s run function enmity:items/usable/entrail_spewer/tick_projectile
execute as @e[type=item,tag=enmity.entrail_spewer,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/entrail_spewer/motion
execute as @e[type=area_effect_cloud,tag=enmity.sacred_storm] at @s run function enmity:items/usable/sacred_storm/tick
execute as @e[type=bat,tag=enmity.sacred_storm_projectile] at @s run function enmity:items/usable/sacred_storm/tick_projectile
execute as @e[type=area_effect_cloud,tag=enmity.cloud] at @s run function enmity:items/usable/cloud_staff/tick
execute as @e[type=item,tag=enmity.gunpowder_bomb] at @s run function enmity:items/usable/sulphur_staff/tick_projectile
execute as @e[type=item,tag=enmity.gunpowder_bomb,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/sulphur_staff/motion
execute as @e[type=bat,tag=enmity.sculkbolt] at @s run function enmity:entities/mobs/warden/tick_projectile

# Stats

scoreboard players remove @e[scores={enmity.iframes=1..}] enmity.iframes 1
scoreboard players set @a[scores={enmity.jump=1..}] enmity.jump 0
execute as @a unless score @s enmity.age matches 2147483647 unless score @s enmity.health matches 0 run scoreboard players add @s enmity.age 1
execute store result score %time enmity.value run time query daytime

scoreboard players set @a[gamemode=!survival,gamemode=!adventure] enmity.mana 9999
execute as @a[gamemode=!creative,gamemode=!spectator,scores={enmity.mana=4999..}] run scoreboard players operation @s enmity.mana = @s enmity.max_mana
scoreboard players remove @a[scores={enmity.cooldown=1..}] enmity.cooldown 1
scoreboard players set @a[gamemode=!creative,gamemode=!spectator] enmity.mana_regen 2
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/items/mana_regen
scoreboard players operation @a[gamemode=!creative,gamemode=!spectator,scores={enmity.cooldown=1..}] enmity.mana_regen /= %const_2 enmity.value
execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s enmity.mana += @s enmity.mana_regen
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s enmity.mana > @s enmity.max_mana run scoreboard players operation @s enmity.mana = @s enmity.max_mana
execute as @a run function enmity:utility/mana_display/check_type
execute as @a if score @s[tag=!enmity.mana_sound_played] enmity.mana = @s enmity.max_mana at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 2 0
execute as @a if score @s enmity.mana = @s enmity.max_mana run tag @s add enmity.mana_sound_played
execute as @a if score @s enmity.mana < @s enmity.max_mana run tag @s remove enmity.mana_sound_played

# Blocks

execute as @e[type=item_frame,tag=enmity.block,tag=enmity.block_unset] at @s run function enmity:blocks/check_type
execute as @e[type=item_frame,tag=enmity.block] at @s unless block ~ ~ ~ spawner run function enmity:blocks/destroy

# Entities

scoreboard players add @e[type=#enmity:target_dummy,tag=enmity.target_dummy] enmity.age 1
execute as @e[type=!#enmity:not_living,type=!player,tag=!enmity.modified,tag=!enmity.projectile] at @s run function enmity:entities/modifications/check_type
execute as @e[type=end_crystal,tag=!enmity.modified] at @s run function enmity:entities/other_entities/end_crystal/modification
execute as @e[type=furnace_minecart,tag=!enmity.modified] at @s run function enmity:entities/other_entities/furnace_minecart/modification
execute as @e[type=end_crystal,tag=enmity.dragon_crystal] if entity @s[nbt={Invulnerable:0b}] at @s run data merge entity @s {Invulnerable:1}
execute as @e[type=item,tag=!enmity.modified,nbt={Age:1s}] at @s run function enmity:entities/modifications/items_age1
execute as @e[type=item,tag=!enmity.modified] at @s run function enmity:entities/modifications/items

execute as @e[type=skeleton,tag=enmity.wraith] at @s run function enmity:entities/mobs/wraith/tick
execute as @e[type=wither,tag=!enmity.despawning] at @s run function enmity:entities/mobs/wither/tick
execute as @e[type=elder_guardian] at @s run function enmity:entities/mobs/elder_guardian/tick
execute as @e[type=wither,tag=enmity.despawning] at @s run function enmity:entities/mobs/wither/despawning/silent
execute as @e[type=bat,tag=enmity.hellbat] at @s run function enmity:entities/mobs/hellbat/tick
execute as @e[type=marker,tag=enmity.nether_geyser_spawner] at @s run function enmity:entities/other_entities/nether_geyser/tick_spawner
execute as @e[type=marker,tag=enmity.nether_geyser] at @s run function enmity:entities/other_entities/nether_geyser/tick_geyser
execute as @e[type=giant] at @s run function enmity:entities/mobs/giant/tick
execute as @e[type=zombie,tag=enmity.zombie_minion] at @s run function enmity:entities/mobs/giant/zombie_minion_tick
execute as @e[type=phantom,tag=!enmity.custom_mob] at @s run particle portal ~ ~ ~ 0.25 0.1 0.25 0.5 1 normal
execute as @e[type=illusioner] at @s run function enmity:entities/mobs/illusioner/tick
execute if score %difficulty enmity.value matches 2 as @e[type=#enmity:can_jump] run function enmity:entities/mobs/tag_can_jump/tick
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
execute as @e[type=armor_stand,tag=enmity.nametag_hider] run data modify entity @s Fire set value -1s
execute as @e[type=phantom,tag=enmity.harpy] at @s run function enmity:entities/mobs/harpy/tick
execute as @e[type=pig,tag=enmity.harpy_saddle] at @s run function enmity:entities/mobs/harpy/saddle/tick
execute as @e[type=armor_stand,tag=enmity.structure_spawn] at @s unless block ~ ~-1 ~ jigsaw run function enmity:entities/structure_spawns/init
execute as @e[type=area_effect_cloud,tag=enmity.waystone_id] at @s run function enmity:blocks/functions/waystone/tick_aec
execute as @e[type=magma_cube,tag=enmity.flame_spewer] at @s run function enmity:entities/mobs/flame_spewer/tick
execute as @e[type=magma_cube,nbt={NoAI:1b,Size:0}] at @s run function enmity:utility/despawn

# Other

execute as @a run function enmity:utility/xp_gain/check
execute as @e[type=!#enmity:not_living] unless entity @s[gamemode=spectator] at @s run function enmity:utility/fall_through_leaves
execute as @a[scores={enmity.age=1}] unless data entity @s SpawnX run function enmity:utility/spawn_spread
execute as @a at @s if predicate enmity:entity/is_using_waystone run function enmity:blocks/functions/waystone/tick_user
execute if entity @e[type=!#enmity:not_living,scores={enmity.subjugator_capture_id=-2147483648..2147483647}] as @a run function enmity:items/usable/subjugator/capture_validity_check
execute as @a if score @s enmity.wiki matches 1.. run function enmity:wiki/open
execute as @a run function enmity:utility/player_toggles/player_toggles
execute as @e[type=arrow,nbt={HasBeenShot:0b}] at @s run function enmity:utility/arrow_damage
execute if score %hardmode enmity.value matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] at @s if entity @e[type=lightning_bolt,distance=..3] run function enmity:items/crafting/custom/lightning_surge
execute if score %hardmode enmity.value matches 0 as @a[gamemode=!creative,gamemode=!spectator] at @s unless score %giant_defeated enmity.value matches 1 run function enmity:utility/prevent_nether
execute as @a[scores={enmity.die=1..}] at @s run function enmity:utility/on_player_death
clear @a firework_star{Enmity.DeleteItem:1}
clear @a gunpowder{Enmity.DeleteItem:1}
kill @e[type=item,tag=!enmity.projectile,nbt={Item:{tag:{Enmity.DeleteItem:1}}}]
execute as @e[type=!ender_dragon] at @s if predicate enmity:environment/in_the_end if entity @s[y=-32,dy=-10000] run function enmity:utility/end_to_overworld_tp
execute as @a[tag=enmity.dragon_target] at @s if predicate enmity:environment/in_overworld run tag @s remove enmity.dragon_target
execute in the_end positioned 0 64 0 run scoreboard players add @a[distance=..128] enmity.in_end_center_time 1
execute in the_end positioned 0 64 0 as @a unless entity @s[distance=..128] run scoreboard players set @s enmity.in_end_center_time 0
execute at @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}}] run effect give @e[type=strider,distance=..10] slowness 1 255 true
execute if score %difficulty enmity.value matches 0.. as @a unless score @s enmity.left matches 0.. run function enmity:utility/on_join/welcome
execute if score %difficulty enmity.value matches 0 run function enmity:utility/setup/setup_tick
title @a[scores={enmity.left=1}] times 0 20 10
scoreboard players set @a[scores={enmity.left=1..}] enmity.left 0
clear @a knowledge_book
tag @e[type=#enmity:not_living,tag=enmity.hurt] remove enmity.hurt