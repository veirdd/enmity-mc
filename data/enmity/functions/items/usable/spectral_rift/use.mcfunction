scoreboard players remove @s enmity.mana 100
scoreboard players set @s enmity.cooldown 12
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 1.5 0.8 0
playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 1.5 0.6 0
playsound block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_2
execute if score @s enmity.math_a matches 1 run function enmity:items/usable/spectral_rift/summon_cmy
execute if score @s enmity.math_a matches 2 run function enmity:items/usable/spectral_rift/summon_rgb
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 13
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute at @s anchored eyes run particle ambient_entity_effect ^ ^ ^0.5 0.2 0.2 0.2 1 50 force
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.new] remove enmity.new