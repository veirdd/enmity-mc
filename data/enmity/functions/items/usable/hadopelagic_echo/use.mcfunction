scoreboard players remove @s enmity.mana 80
scoreboard players set @s enmity.cooldown 20
playsound minecraft:entity.warden.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.hadopelagic_echo","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.hadopelagic_echo,tag=enmity.new] enmity.dmg 4
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
tag @e[type=marker,tag=enmity.hadopelagic_echo,tag=enmity.new] remove enmity.new