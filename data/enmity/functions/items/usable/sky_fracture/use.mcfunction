scoreboard players remove @s enmity.mana 90
scoreboard players add @s enmity.cooldown 24
playsound block.respawn_anchor.deplete neutral @a[distance=0..] ~ ~ ~ 0.2 2 0.0
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 0.5 2 0.0
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.sky_fracture","enmity.projectile"]}
scoreboard players set @e[type=armor_stand,tag=enmity.sky_fracture,tag=enmity.new] enmity.dmg 10
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=armor_stand,tag=enmity.sky_fracture,tag=enmity.new] @s
execute at @s positioned ~ ~-1.7 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.sky_fracture,tag=enmity.new] ^ ^ ^0.2
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle firework ~ ~ ~ 0.025 0.025 0.025 0.02 3 force
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dust 0.45 0.8 1 0.7 ~ ~ ~ 0.025 0.025 0.025 0 3 force
scoreboard players set @s enmity.math_a 90
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result entity @e[type=armor_stand,tag=enmity.new,tag=enmity.sky_fracture,limit=1] Pose.Head[0] float 1 run scoreboard players operation @s enmity.rotation += @s enmity.math_a
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=armor_stand,tag=enmity.sky_fracture,tag=enmity.new] remove enmity.new
tag @s add enmity.sky_fracture
summon marker ~ ~ ~ {Tags:["enmity.sky_fracture","enmity.new","enmity.projectile"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.sky_fracture,tag=enmity.new] remove enmity.new