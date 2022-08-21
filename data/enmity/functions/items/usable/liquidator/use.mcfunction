scoreboard players remove @s enmity.mana 120
scoreboard players set @s enmity.cooldown 12
playsound block.ender_chest.close neutral @a[distance=0..] ~ ~ ~ 1 2 0
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 0.6 2 0
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1007}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.liquidation_trident","enmity.projectile"]}
scoreboard players set @e[type=armor_stand,tag=enmity.liquidation_trident,tag=enmity.new] enmity.dmg 12
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=armor_stand,tag=enmity.liquidation_trident,tag=enmity.new] @s
execute at @s positioned ~ ~-1.7 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.new] ^ ^ ^0.2
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle firework ~ ~ ~ 0.025 0.025 0.025 0.02 1 force
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dust 0.24 0 0.68 0.7 ~ ~ ~ 0.025 0.025 0.025 0 2 force
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dust 0.47 1 0.45 0.7 ~ ~ ~ 0.025 0.025 0.025 0 2 force
scoreboard players set @s enmity.math_a 90
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result entity @e[type=armor_stand,tag=enmity.new,tag=enmity.liquidation_trident,limit=1] Pose.Head[0] float 1 run scoreboard players operation @s enmity.rotation += @s enmity.math_a
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=armor_stand,tag=enmity.liquidation_trident,tag=enmity.new] remove enmity.new
tag @s add enmity.liquidator
summon marker ~ ~ ~ {Tags:["enmity.liquidator","enmity.new","enmity.projectile"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new