# Items

execute as @a[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:33}}]}] at @s unless predicate enmity:environment/near_deep_dark run effect give @s night_vision 30 0 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:43}}]},nbt=!{Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:95}}]}] run effect give @s jump_boost 2 1 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:44}}]},nbt=!{Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:95}}]}] run effect give @s jump_boost 2 1 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:43}}]}] run effect give @s slow_falling 2 0 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:44}}]}] run effect give @s slow_falling 2 0 true
execute as @a[gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:33}}}] at @s run effect give @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=0.01..16,tag=!enmity.target_dummy] glowing 1 0 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:33}}]}] at @s run effect give @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=0.01..16,tag=!enmity.target_dummy] glowing 1 0 true
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:64}}]}] at @s run effect give @s night_vision 30 0 true
execute as @a[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:107}}]}] at @s run effect give @s night_vision 30 0 true
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:22}}]}] at @s unless predicate enmity:environment/near_deep_dark run effect give @s night_vision 30 0 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:91}}]}] run effect give @s haste 2 1 true
execute as @a[scores={enmity.food=..13},nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:92}}]}] run effect give @s saturation 1 0 true
execute as @a[gamemode=!spectator,nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:89}}]}] run effect give @s dolphins_grace 2 0 true
execute as @a[tag=enmity.flying] if entity @s[gamemode=!spectator,nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:105}}]}] at @s run function enmity:items/accessories/effervescent_aglets/10_tick

execute as @a[gamemode=!spectator] if predicate enmity:entity/has_armor/witherbone_set at @s run function enmity:items/armor/witherbone/10_tick
execute as @a[gamemode=!spectator] if predicate enmity:entity/has_armor/molten_set at @s run function enmity:items/armor/molten/10_tick
execute as @a[gamemode=!spectator] if predicate enmity:entity/has_armor/silvan_set at @s run function enmity:items/armor/silvan/10_tick
execute as @a[gamemode=!spectator] if predicate enmity:entity/has_armor/tidal_set at @s run function enmity:items/armor/tidal/10_tick
execute as @a[gamemode=!spectator] if predicate enmity:entity/has_armor/celestial_set at @s run effect give @s resistance 2 3 true

execute as @a if predicate enmity:entity/has_armor/bone_boots run item modify entity @s armor.feet enmity:armor_color/bone
execute as @a if predicate enmity:entity/has_armor/bone_leggings run item modify entity @s armor.legs enmity:armor_color/bone
execute as @a if predicate enmity:entity/has_armor/bone_chestplate run item modify entity @s armor.chest enmity:armor_color/bone
execute as @a if predicate enmity:entity/has_armor/bone_helmet run item modify entity @s armor.head enmity:armor_color/bone
execute as @a if predicate enmity:entity/has_armor/silvan_boots run item modify entity @s armor.feet enmity:armor_color/silvan
execute as @a if predicate enmity:entity/has_armor/silvan_leggings run item modify entity @s armor.legs enmity:armor_color/silvan
execute as @a if predicate enmity:entity/has_armor/silvan_chestplate run item modify entity @s armor.chest enmity:armor_color/silvan
execute as @a if predicate enmity:entity/has_armor/silvan_helmet run item modify entity @s armor.head enmity:armor_color/silvan
execute as @a if predicate enmity:entity/has_armor/molten_boots run item modify entity @s armor.feet enmity:armor_color/molten
execute as @a if predicate enmity:entity/has_armor/molten_leggings run item modify entity @s armor.legs enmity:armor_color/molten
execute as @a if predicate enmity:entity/has_armor/molten_chestplate run item modify entity @s armor.chest enmity:armor_color/molten
execute as @a if predicate enmity:entity/has_armor/molten_helmet run item modify entity @s armor.head enmity:armor_color/molten
execute as @a if predicate enmity:entity/has_armor/witherbone_boots run item modify entity @s armor.feet enmity:armor_color/witherbone
execute as @a if predicate enmity:entity/has_armor/witherbone_leggings run item modify entity @s armor.legs enmity:armor_color/witherbone
execute as @a if predicate enmity:entity/has_armor/witherbone_chestplate run item modify entity @s armor.chest enmity:armor_color/witherbone
execute as @a if predicate enmity:entity/has_armor/witherbone_helmet run item modify entity @s armor.head enmity:armor_color/witherbone
execute as @a if predicate enmity:entity/has_armor/wool_boots run item modify entity @s armor.feet enmity:armor_color/wool
execute as @a if predicate enmity:entity/has_armor/wool_leggings run item modify entity @s armor.legs enmity:armor_color/wool
execute as @a if predicate enmity:entity/has_armor/wool_chestplate run item modify entity @s armor.chest enmity:armor_color/wool
execute as @a if predicate enmity:entity/has_armor/wool_helmet run item modify entity @s armor.head enmity:armor_color/wool
execute as @a if predicate enmity:entity/has_armor/crystalline_boots run item modify entity @s armor.feet enmity:armor_color/crystalline
execute as @a if predicate enmity:entity/has_armor/crystalline_leggings run item modify entity @s armor.legs enmity:armor_color/crystalline
execute as @a if predicate enmity:entity/has_armor/crystalline_chestplate run item modify entity @s armor.chest enmity:armor_color/crystalline
execute as @a if predicate enmity:entity/has_armor/crystalline_helmet run item modify entity @s armor.head enmity:armor_color/crystalline
execute as @a if predicate enmity:entity/has_armor/tidal_boots run item modify entity @s armor.feet enmity:armor_color/tidal
execute as @a if predicate enmity:entity/has_armor/tidal_leggings run item modify entity @s armor.legs enmity:armor_color/tidal
execute as @a if predicate enmity:entity/has_armor/tidal_chestplate run item modify entity @s armor.chest enmity:armor_color/tidal
execute as @a if predicate enmity:entity/has_armor/tidal_helmet run item modify entity @s armor.head enmity:armor_color/tidal
execute as @a if predicate enmity:entity/has_armor/amethyst_boots run item modify entity @s armor.feet enmity:armor_color/amethyst
execute as @a if predicate enmity:entity/has_armor/amethyst_leggings run item modify entity @s armor.legs enmity:armor_color/amethyst
execute as @a if predicate enmity:entity/has_armor/amethyst_chestplate run item modify entity @s armor.chest enmity:armor_color/amethyst
execute as @a if predicate enmity:entity/has_armor/amethyst_helmet run item modify entity @s armor.head enmity:armor_color/amethyst
execute as @a if predicate enmity:entity/has_armor/celestial_boots run item modify entity @s armor.feet enmity:armor_color/celestial
execute as @a if predicate enmity:entity/has_armor/celestial_leggings run item modify entity @s armor.legs enmity:armor_color/celestial
execute as @a if predicate enmity:entity/has_armor/celestial_helmet run item modify entity @s armor.head enmity:armor_color/celestial
execute as @a if predicate enmity:entity/has_armor/hadal_boots run item modify entity @s armor.feet enmity:armor_color/hadal
execute as @a if predicate enmity:entity/has_armor/hadal_leggings run item modify entity @s armor.legs enmity:armor_color/hadal
execute as @a if predicate enmity:entity/has_armor/hadal_chestplate run item modify entity @s armor.chest enmity:armor_color/hadal
execute as @a if predicate enmity:entity/has_armor/hadal_helmet run item modify entity @s armor.head enmity:armor_color/hadal

# Projectiles

execute as @e[type=area_effect_cloud,tag=enmity.charm_of_decay] at @s run function enmity:items/usable/charm_of_decay/10_tick
execute as @e[type=marker,tag=enmity.crystalline_sparks] at @s run function enmity:items/armor/crystalline/sparks_10_tick
execute as @e[type=area_effect_cloud,tag=enmity.sacred_storm] at @s run function enmity:items/usable/sacred_storm/10_tick
execute as @e[type=area_effect_cloud,tag=enmity.cloud] at @s run function enmity:items/usable/cloud_staff/10_tick

# Temperature

scoreboard players set @a[gamemode=!adventure,gamemode=!survival] enmity.temp_cd 0
execute if score %difficulty enmity.value matches 2 as @a at @s unless score @s enmity.temp_cd matches -10..10 unless score @s enmity.temp matches -4..4 run function enmity:utility/health_modification/temperature_damage

# Entities

execute if score %difficulty enmity.value matches 2 as @e[type=spider] at @s run function enmity:entities/mobs/spider/10_tick
execute as @e[type=zombified_piglin] at @s run function enmity:entities/mobs/zombified_piglin/10_tick
execute as @e[type=wither] at @s run function enmity:entities/mobs/wither/10_tick
execute as @e[type=giant] at @s run function enmity:entities/mobs/giant/10_tick
execute if score %difficulty enmity.value matches 2 as @e[type=bat,tag=enmity.bat] at @s run function enmity:entities/mobs/bat/10-20_tick
execute as @e[type=elder_guardian] at @s run function enmity:entities/mobs/elder_guardian/10_tick
execute if score %difficulty enmity.value matches 2 as @e[type=phantom,tag=!enmity.custom_mob] at @s run function enmity:entities/mobs/phantom/10_tick
execute if score %hardmode enmity.value matches 1 as @e[type=wither_skeleton,tag=!enmity.custom_mob] at @s run function enmity:entities/mobs/wither_skeleton/10_tick
execute as @e[type=skeleton,tag=enmity.wraith] if score %hardmode enmity.value matches 1 at @s run function enmity:entities/mobs/wraith/10_tick
execute as @e[type=wither_skeleton,tag=enmity.end_wither_skeleton] at @s run function enmity:entities/mobs/end_wither_skeleton/10_tick
execute as @e[type=illusioner] at @s run function enmity:entities/mobs/illusioner/10_tick
execute as @e[type=ender_dragon] at @s run function enmity:entities/mobs/ender_dragon/10_tick
execute as @e[type=zombie,tag=enmity.smiler] unless score @s enmity.cooldown matches 1.. at @s run function enmity:entities/mobs/smiler/10_tick
execute as @e[type=shulker] at @s run function enmity:entities/mobs/sculker/10_tick
execute as @e[type=marker,tag=enmity.dragon_egg_placer] at @s run function enmity:entities/mobs/ender_dragon/egg_raycast
execute as @e[type=marker,tag=enmity.end_gateway_placer] at @s run function enmity:entities/other_entities/end_gateway_placer/place_gateway
execute if score %difficulty enmity.value matches 2 if score %hardmode enmity.value matches 1 as @e[type=#enmity:can_leap,tag=!enmity.custom_mob,tag=!enmity.hit_by_alliance,tag=!enmity.projectile] if predicate enmity:random/random_0.25 at @s if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] if entity @s[nbt={OnGround:1b}] run function enmity:entities/mobs/tag_can_leap/check
execute if score %difficulty enmity.value matches 1 if score %hardmode enmity.value matches 1 as @e[type=#enmity:can_leap,tag=!enmity.custom_mob,tag=!enmity.hit_by_alliance,tag=!enmity.projectile] if predicate enmity:random/random_0.1 at @s if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] if entity @s[nbt={OnGround:1b}] run function enmity:entities/mobs/tag_can_leap/check
execute if score %difficulty enmity.value matches 2 as @e[type=enderman,nbt=!{AngerTime:0}] at @s run function enmity:entities/mobs/enderman/10_tick
execute if score %hardmode enmity.value matches 1 as @e[type=creeper] at @s run function enmity:entities/mobs/creeper/10_tick
execute as @e[type=furnace_minecart,nbt=!{Fuel:0s}] at @s run function enmity:entities/other_entities/furnace_minecart/10_tick
execute as @e[type=allay] at @s run function enmity:entities/mobs/allay/10_tick
execute as @e[type=magma_cube,tag=enmity.flame_spewer] at @s run function enmity:entities/mobs/flame_spewer/10_tick

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:7}}}] at @s run particle portal ~ ~0.2 ~ 0 0 0 0.5 5
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:7}}}] at @s run playsound minecraft:entity.allay.ambient_without_item neutral @a[distance=0..] ~ ~ ~ 0.3 0.4 0
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:7}}}] at @s run particle portal ~ ~0.8 ~ 0.2 0.4 0.2 0.5 10

# Environment

execute as @a if score @s enmity.biome_type matches 14 if score %difficulty enmity.value matches 1 if predicate enmity:random/random_0.05 at @s run function enmity:entities/other_entities/nether_geyser/spawn
execute as @a if score @s enmity.biome_type matches 14 if score %difficulty enmity.value matches 2 if predicate enmity:random/random_0.25 at @s run function enmity:entities/other_entities/nether_geyser/spawn

# Other

effect give @e[tag=enmity.invulnerable] resistance 2 255 true

schedule function enmity:10_tick 10t