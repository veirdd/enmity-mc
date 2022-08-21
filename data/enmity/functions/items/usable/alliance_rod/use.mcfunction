scoreboard players remove @s enmity.mana 80
scoreboard players set @s enmity.cooldown 60
playsound minecraft:entity.allay.ambient_without_item neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound minecraft:entity.allay.ambient_without_item neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.alliance_bolt","enmity.projectile"]}
execute unless entity @s[type=allay] run scoreboard players set @e[type=marker,tag=enmity.alliance_bolt,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute if entity @s[type=allay] run tag @e[type=marker,tag=enmity.new] add enmity.allay
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.alliance_bolt,tag=enmity.new] remove enmity.new