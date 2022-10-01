# Other

execute as @a if score @s enmity.health > @s enmity.max_hp run effect give @s instant_health
execute as @a[tag=!enmity.update_health] run function enmity:utility/health_modification/update_health
kill @e[type=item,name="Air"]
difficulty hard
gamerule freezeDamage false
gamerule announceAdvancements false
execute if score %death_mode enmity.value matches 1 run gamerule naturalRegeneration false
execute if score %death_mode enmity.value matches 0 run gamerule naturalRegeneration true
execute as @e[type=item] at @s if block ~ ~ ~ enchanting_table run function enmity:items/crafting/custom/checks/check_if_applicable
execute as @a run function enmity:utility/projectiles/sentries/sentry_counter
execute as @a if score @s enmity.snt_ct > @s enmity.max_snt run function enmity:utility/projectiles/sentries/remove_sentry
execute as @a at @s run function enmity:ambience/set_biome_type
execute as @a at @s run function enmity:utility/surface_detection
execute as @a at @s run function enmity:utility/temperature

# Stats

scoreboard players remove @a[scores={enmity.egapple_cooldown=1..}] enmity.egapple_cooldown 1

execute as @a run attribute @s generic.movement_speed modifier remove 0-0-0-0-2
execute as @a run attribute @s generic.armor modifier remove 0-0-0-0-1
execute as @a run attribute @s generic.attack_damage modifier remove 0-0-0-0-1
execute as @a run attribute @s generic.attack_speed modifier remove 0-0-0-0-1
execute as @a run attribute @s generic.luck modifier remove 0-0-0-0-3
execute as @a run attribute @s generic.luck modifier remove 0-0-0-0-4
execute as @a run attribute @s generic.knockback_resistance modifier remove 0-0-0-0-3

scoreboard players set @a enmity.max_hp 20
execute as @a unless score @s enmity.temp_cd matches -2147483648..2147483647 run scoreboard players set @s enmity.temp_cd 0
execute as @a unless entity @s[scores={enmity.mana=0..}] run scoreboard players set @s enmity.mana 0
execute as @a unless entity @s[scores={enmity.cooldown=0..}] run scoreboard players set @s enmity.cooldown 0
scoreboard players set @a enmity.max_mana 200
scoreboard players set @a enmity.max_snt 1
scoreboard players set @a enmity.dmg_rdc 0
scoreboard players set @a enmity.dmg_bst 0
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/item_branch/mana_20_tick
execute as @a[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/item_branch/strength_20_tick
execute as @a[nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/item_branch/mobility_20_tick
execute as @a[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/item_branch/effect_20_tick
execute as @a if predicate enmity:entity/has_armor/enmity_set run function enmity:utility/item_branch/armor_20_tick
execute as @a run function enmity:utility/protection_to_dr
execute if score %death_mode enmity.value matches 0 as @a run function enmity:utility/calculate_dmg_rdc_mtp
execute if score %death_mode enmity.value matches 1 run scoreboard players set @a enmity.dmg_rdc_mtp 110
execute as @a if predicate enmity:entity/has_effect/berserked run function enmity:items/food/berserk_potion/effect

# Projectiles

scoreboard players remove @e[tag=enmity.sentry,scores={enmity.age=1..}] enmity.age 1

execute as @e[type=armor_stand,tag=enmity.silvan_spirit,scores={enmity.age=0}] at @s run function enmity:items/usable/silvan_spirit_staff/die
execute as @e[type=armor_stand,tag=enmity.silvan_spirit] at @s run function enmity:items/usable/silvan_spirit_staff/20_tick
execute as @e[type=area_effect_cloud,tag=enmity.infernal_helix,scores={enmity.age=0}] at @s run function enmity:items/usable/infernal_helix_staff/die
execute as @e[type=area_effect_cloud,tag=enmity.infernal_helix] at @s run function enmity:items/usable/infernal_helix_staff/20_tick
execute as @e[type=area_effect_cloud,tag=enmity.charm_of_decay,scores={enmity.age=0}] at @s run function enmity:items/usable/charm_of_decay/die
execute as @e[type=area_effect_cloud,tag=enmity.charm_of_decay] at @s run function enmity:items/usable/charm_of_decay/20_tick
execute as @e[type=zombie,tag=enmity.call_of_the_undead,scores={enmity.age=0}] at @s run function enmity:items/usable/call_of_the_undead/die
execute as @e[type=zombie,tag=enmity.call_of_the_undead] at @s run function enmity:items/usable/call_of_the_undead/20_tick
execute as @e[type=guardian,tag=enmity.guardian_sentry,scores={enmity.age=0}] at @s run function enmity:items/usable/guardian_thorn/die
execute as @e[type=guardian,tag=enmity.guardian_sentry] at @s run function enmity:items/usable/guardian_thorn/20_tick
execute as @e[type=area_effect_cloud,tag=enmity.sacred_storm,scores={enmity.age=0}] at @s run function enmity:items/usable/sacred_storm/die
execute as @e[type=area_effect_cloud,tag=enmity.sacred_storm] at @s run function enmity:items/usable/sacred_storm/20_tick
execute as @e[type=area_effect_cloud,tag=enmity.cloud,scores={enmity.age=0}] at @s run function enmity:items/usable/cloud_staff/die
execute as @e[type=area_effect_cloud,tag=enmity.cloud] at @s run function enmity:items/usable/cloud_staff/20_tick

# Items

execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:70}}]}] at @s run function enmity:items/accessories/wither_rose_ring/20_tick

# Entities

execute as @e[type=skeleton,tag=enmity.wraith] at @s run function enmity:entities/mobs/wraith/20_tick
execute as @e[type=wither] at @s run function enmity:entities/mobs/wither/20_tick
execute unless entity @e[type=wither] run kill @e[type=wither_skeleton,tag=enmity.wither_minion]
execute as @e[type=giant] at @s run function enmity:entities/mobs/giant/20_tick
execute as @e[type=elder_guardian] at @s run function enmity:entities/mobs/elder_guardian/20_tick
execute as @e[type=marker,tag=enmity.elder_anchor,tag=!enmity.arena_built] at @s run function enmity:entities/mobs/elder_guardian/build_arena/20_tick
execute if entity @e[type=elder_guardian] run bossbar set enmity.elder_guardian visible true
execute unless entity @e[type=elder_guardian] run bossbar set enmity.elder_guardian visible false
execute if score %difficulty enmity.value matches 1 as @e[type=bat,tag=enmity.bat] at @s run function enmity:entities/mobs/bat/10-20_tick
execute as @e[type=magma_cube,tag=!enmity.custom_mob] at @s run function enmity:entities/mobs/magma_cube/20_tick
execute as @e[type=wither_skeleton,tag=enmity.end_wither_skeleton] at @s run function enmity:entities/mobs/end_wither_skeleton/20_tick
execute as @e[type=illusioner] at @s run function enmity:entities/mobs/illusioner/20_tick
execute as @e[type=zombie,tag=enmity.target_dummy] at @s run function enmity:entities/other_entities/target_dummy/20_tick_body
execute as @e[type=armor_stand,tag=enmity.nametag_hider] unless predicate enmity:entity/is_riding_vehicle run kill @s
execute as @e[type=!#enmity:not_living,tag=enmity.hit_by_alliance] at @s anchored eyes run particle glow ^ ^ ^ 0.3 0.3 0.3 0 5
execute as @e[type=phantom,tag=enmity.harpy] at @s run function enmity:entities/mobs/harpy/20_tick
execute as @e[type=!#enmity:not_living,tag=enmity.nametag_hidden] unless data entity @s Passengers[{id:"minecraft:armor_stand"}] run data merge entity @s {CustomName:""}

# Ambience

execute as @a[scores={enmity.amb_loop=0}] at @s run function enmity:ambience/loop
execute as @a at @s run function enmity:ambience/random
execute as @a[scores={enmity.amb_loop=1..}] run scoreboard players remove @s enmity.amb_loop 1

# Other

execute as @a unless score @s enmity.health matches 0.. run function enmity:utility/enable_health
execute as @a unless score @s enmity.player_id matches 0.. run function enmity:utility/register_new_player/request
execute as @e unless score @s enmity.iframes matches -9999.. run scoreboard players set @s enmity.iframes 0

schedule function enmity:20_tick 1s