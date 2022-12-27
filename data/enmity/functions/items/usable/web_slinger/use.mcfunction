scoreboard players remove @s enmity.mana 60
scoreboard players add @s enmity.cooldown 24
playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound entity.spider.step neutral @a[distance=0..] ~ ~ ~ 2 1.7 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.web_slinger","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.web_slinger","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.web_slinger","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.web_slinger","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.web_slinger","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.web_slinger,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2 ~ ~-10
execute as @e[type=marker,tag=enmity.new,limit=4] run function enmity:misc/projectiles/random_spread/10dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.web_slinger,tag=enmity.new] remove enmity.new