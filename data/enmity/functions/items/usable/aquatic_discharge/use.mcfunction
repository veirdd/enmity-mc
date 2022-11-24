scoreboard players remove @s enmity.mana 60
scoreboard players set @s enmity.cooldown 8
playsound entity.player.splash.high_speed neutral @a[distance=0..] ~ ~ ~ 1 2 0.0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.aquatic_discharge","enmity.projectile"]}
execute if predicate enmity:random/random_0.5 run summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.aquatic_discharge","enmity.projectile"]}
execute if predicate enmity:random/random_0.5 run summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.aquatic_discharge","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 13
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2 ~ ~-10
execute as @e[type=marker,tag=enmity.new] run function enmity:misc/projectiles/random_spread/10dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new