scoreboard players remove @s enmity.mana 100
scoreboard players set @s enmity.cooldown 16
playsound entity.ender_dragon.hurt neutral @a[distance=0..] ~ ~ ~ 1 2 0
playsound entity.ender_dragon.hurt neutral @a[distance=0..] ~ ~ ~ 1 1.6 0
playsound entity.wither.shoot neutral @a[distance=0..] ~ ~ ~ 0.3 1.4 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.ender_warper","enmity.projectile"]}
tp @e[type=marker,tag=enmity.ender_warper,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.ender_warper,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new