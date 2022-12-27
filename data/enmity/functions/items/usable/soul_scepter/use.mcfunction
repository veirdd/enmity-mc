scoreboard players remove @s enmity.mana 90
scoreboard players add @s enmity.cooldown 16
playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.soul","enmity.projectile"]}
execute if entity @s[tag=enmity.end_wither_skeleton] run tag @e[type=marker,tag=enmity.soul,tag=enmity.new] add enmity.end_wither_skeleton
execute if entity @s[tag=enmity.wraith] run tag @e[type=marker,tag=enmity.soul,tag=enmity.new] add enmity.wraith
scoreboard players set @e[type=marker,tag=enmity.soul,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.soul,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute as @e[type=marker,tag=enmity.new,tag=enmity.soul] run function enmity:misc/projectiles/random_spread/10dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.soul,tag=enmity.new] remove enmity.new