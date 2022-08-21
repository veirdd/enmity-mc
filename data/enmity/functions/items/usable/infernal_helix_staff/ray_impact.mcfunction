function enmity:utility/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:utility/projectiles/sentries/remove_sentry
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:entity.blaze.ambient neutral @a[distance=0..] ~ ~ ~ 1.5 2 0
playsound minecraft:block.lava.pop neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.lava.pop neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.lava.pop neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle lava ~ ~1.5 ~ 0.3 0.3 0.3 0 50 force
particle flame ~ ~1.5 ~ 0 0 0 0.3 100 force
scoreboard players remove @s enmity.mana 140
scoreboard players set @s enmity.cooldown 40
summon area_effect_cloud ~ ~1.5 ~ {Duration:999999999,Tags:["enmity.projectile","enmity.new","enmity.infernal_helix","enmity.sentry"],CustomName:'""',CustomNameVisible:1}
scoreboard players set @e[type=area_effect_cloud,tag=enmity.new,tag=enmity.infernal_helix] enmity.age 59
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
tag @e[tag=enmity.new,tag=enmity.infernal_helix] remove enmity.new