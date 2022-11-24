execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dust 0 0.5 0 0.8 ~ ~ ~ 0.4 0.4 0.4 0 30 force
playsound entity.phantom.bite neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players remove @s enmity.mana 70
scoreboard players set @s enmity.cooldown 16
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1009}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.fang","enmity.projectile","enmity.no_spread"]}
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1009}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.fang","enmity.projectile"]}
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1009}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.fang","enmity.projectile"]}
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1009}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.fang","enmity.projectile"]}
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1009}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.fang","enmity.projectile"]}
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 3
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=armor_stand,tag=enmity.new] @s
execute at @s positioned ~ ~-1.7 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.new] ^ ^ ^0.2
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
scoreboard players operation @s enmity.rotation += %const_90 enmity.value
tag @s add enmity.this
execute as @e[type=armor_stand,tag=enmity.new] store result entity @s Pose.Head[0] float 1 run scoreboard players get @p[tag=enmity.this] enmity.rotation
tag @s remove enmity.this
execute as @e[type=armor_stand,tag=enmity.new,tag=!enmity.no_spread] run function enmity:misc/projectiles/random_spread/10dg
execute if score @s enmity.player_targeting matches 1 run tag @e[type=armor_stand,tag=enmity.new] add enmity.player_targeting
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new