execute if entity @s[tag=enmity.phantasmal_projectile] at @s run function enmity:items/usable/delirium/tick_projectile
execute if entity @s[tag=enmity.mineral_rumbler] at @s run function enmity:items/usable/mineral_rumbler/tick
execute if entity @s[tag=enmity.gust] at @s run function enmity:items/usable/gust_caster/tick_projectile
execute if entity @s[tag=enmity.water_bolt] at @s run function enmity:items/usable/water_bolt/tick_projectile
execute if entity @s[tag=enmity.flare_bolt] at @s run function enmity:items/usable/flare_bolt/tick_projectile
execute if entity @s[tag=enmity.diamond_bolt] at @s run function enmity:items/usable/diamond_staff/tick_projectile
execute if entity @s[tag=enmity.redstone_bolt] at @s run function enmity:items/usable/redstone_staff/tick_projectile
execute if entity @s[tag=enmity.lapis_bolt] at @s run function enmity:items/usable/lapis_staff/tick_projectile
execute if entity @s[tag=enmity.emerald_bolt] at @s run function enmity:items/usable/emerald_staff/tick_projectile
execute if entity @s[tag=enmity.soul] at @s run function enmity:items/usable/soul_scepter/tick_projectile
execute if entity @s[tag=enmity.withers_ray_summon] if score @s enmity.age matches 70.. at @s run function enmity:entities/mobs/wither/projectiles/ray/activate
execute if entity @s[tag=enmity.withering_beam_track] if score @s enmity.age matches 25.. at @s run function enmity:items/usable/withering_beam_staff/activate
execute if entity @s[tag=enmity.crystal_shard] at @s run function enmity:items/usable/crystal_storm/tick_projectile
execute if entity @s[tag=enmity.rainbow_bolt] at @s run function enmity:items/usable/rainbow_rod/tick_projectile
execute if entity @s[tag=enmity.flamelash] at @s run function enmity:items/usable/flamelash/tick_projectile
execute if entity @s[tag=enmity.terminal_flash] at @s run function enmity:items/usable/terminal_flash/tick_projectile
execute if entity @s[tag=enmity.terminal_flash_explosion] at @s run function enmity:items/usable/terminal_flash/tick_explosion
execute if entity @s[tag=enmity.ender_warper] at @s run function enmity:items/usable/ender_warper/tick_projectile
execute if entity @s[tag=enmity.hadopelagic_echo] at @s run function enmity:items/usable/hadopelagic_echo/tick_projectile
execute if entity @s[tag=enmity.aquatic_discharge] at @s run function enmity:items/usable/aquatic_discharge/tick_projectile
execute if entity @s[tag=enmity.aquaflame_bolt] at @s run function enmity:items/usable/aquaflame_bolt/tick_projectile
execute if entity @s[tag=enmity.aquatic_scepter] at @s run function enmity:items/usable/aquatic_scepter/tick_projectile
execute if entity @s[tag=enmity.elder_bolt] at @s run function enmity:entities/mobs/elder_guardian/projectiles/bolt/tick
execute if entity @s[tag=enmity.elder_geyser] at @s run function enmity:entities/mobs/elder_guardian/projectiles/geyser/tick
execute if entity @s[tag=enmity.guardian_sentry_bolt] at @s run function enmity:items/usable/guardian_thorn/tick_projectile
execute if entity @s[tag=enmity.torrential_bolt] at @s run function enmity:items/usable/torrential_scepter/tick_projectile
execute if entity @s[tag=enmity.spectral_rift] at @s run function enmity:items/usable/spectral_rift/tick_projectile
execute if entity @s[tag=enmity.crystalline_sparks] at @s run function enmity:items/armor/crystalline/sparks_tick
execute if entity @s[tag=enmity.cloud_bolt] at @s run function enmity:items/usable/cloud_staff/tick_projectile
execute if entity @s[tag=enmity.dragon_bolt] at @s run function enmity:entities/mobs/ender_dragon/projectiles/bolt/tick
execute if entity @s[tag=enmity.large_dragon_bolt] at @s run function enmity:entities/mobs/ender_dragon/projectiles/large_bolt/tick
execute if entity @s[tag=enmity.dragon_crystal_bolt] at @s run function enmity:entities/mobs/ender_dragon/projectiles/crystal_bolt/tick
execute if entity @s[tag=enmity.dragon_breath] at @s run function enmity:entities/mobs/ender_dragon/projectiles/breath/tick
execute if entity @s[tag=enmity.dragon_ray,scores={enmity.age=10..}] if score %difficulty enmity.value matches 2 at @s run function enmity:entities/mobs/ender_dragon/projectiles/ray/activate
execute if entity @s[tag=enmity.dragon_ray,scores={enmity.age=15..}] if score %difficulty enmity.value matches 1 at @s run function enmity:entities/mobs/ender_dragon/projectiles/ray/activate
execute if entity @s[tag=enmity.alliance_bolt] at @s run function enmity:items/usable/alliance_rod/tick_projectile
execute if entity @s[tag=enmity.web_slinger] at @s run function enmity:items/usable/web_slinger/tick_projectile
execute if entity @s[tag=enmity.cobweb] at @s run function enmity:items/usable/web_slinger/tick_cobweb
execute if entity @s[tag=enmity.homing_trail] at @s run function enmity:items/accessories/effervescent_aglets/tick_projectile
execute if entity @s[tag=enmity.spectral_lifesteal] at @s run function enmity:items/usable/spectral_rift/tick_lifesteal
execute if entity @s[tag=enmity.crystalline_bolt] at @s run function enmity:items/usable/crystalline_twig/tick_projectile
execute if entity @s[tag=enmity.nether_geyser_spawner] at @s run function enmity:entities/other_entities/nether_geyser/tick_spawner
execute if entity @s[tag=enmity.nether_geyser] at @s run function enmity:entities/other_entities/nether_geyser/tick_geyser
execute if entity @s[tag=enmity.healing_bolt] at @s run function enmity:items/usable/healing_bolt/tick_projectile