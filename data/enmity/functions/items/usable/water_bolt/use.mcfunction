scoreboard players remove @s enmity.mana 60
scoreboard players add @s enmity.cooldown 12
playsound entity.player.splash.high_speed neutral @a[distance=0..] ~ ~ ~ 2.0 1.0 0.0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.water_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 5
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
tag @e[type=marker,tag=enmity.new] remove enmity.new