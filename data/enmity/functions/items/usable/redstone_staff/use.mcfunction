scoreboard players remove @s enmity.mana 90
scoreboard players add @s enmity.cooldown 20
playsound entity.ender_eye.death neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.ender_eye.death neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.redstone_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.redstone_bolt,tag=enmity.new] enmity.dmg 5
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.redstone_bolt,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.redstone_bolt,tag=enmity.new] remove enmity.new