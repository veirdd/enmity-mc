scoreboard players remove @s enmity.mana 60
scoreboard players set @s enmity.cooldown 8
playsound entity.player.splash.high_speed neutral @a[distance=0..] ~ ~ ~ 2.0 1.0 0.0
playsound block.fire.extinguish neutral @a[distance=0..] ~ ~ ~ 2.0 1.0 0.0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.aquaflame_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.aquaflame_bolt,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.aquaflame_bolt,tag=enmity.new] remove enmity.new