execute if entity @s[tag=!enmity.red] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,sort=nearest,limit=1] eyes
execute if entity @s[tag=enmity.red] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.projectile,sort=nearest,limit=1] eyes
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.cloud_bolt","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.cloud_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute as @e[type=marker,tag=enmity.new] run function enmity:misc/projectiles/random_spread/5dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if entity @s[tag=enmity.red] run tag @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] add enmity.red
tag @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] remove enmity.new