scoreboard players remove @s enmity.mana 20
scoreboard players set @s enmity.cooldown 4
playsound block.water.ambient neutral @a[distance=0..] ~ ~ ~ 2 2 0.0
playsound block.water.ambient neutral @a[distance=0..] ~ ~ ~ 2 2 0.0
playsound block.water.ambient neutral @a[distance=0..] ~ ~ ~ 2 2 0.0
playsound entity.creeper.primed neutral @a[distance=0..] ~ ~ ~ 1 1.5 0.0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.aquatic_scepter","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.aquatic_scepter,tag=enmity.new] enmity.dmg 3
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2 ~ ~-5
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.aquatic_scepter,tag=enmity.new] remove enmity.new