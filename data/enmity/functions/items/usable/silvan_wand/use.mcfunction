execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dust 0.45 0.75 0 1 ~ ~ ~ 0.3 0.3 0.3 0 10 force
playsound minecraft:block.grass.step neutral @a[distance=0..] ~ ~ ~ 2 0 0
scoreboard players remove @s enmity.mana 50
scoreboard players add @s enmity.cooldown 16
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1001}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.leaf","enmity.projectile"]}
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 4
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=armor_stand,tag=enmity.leaf,tag=enmity.new] @s
execute at @s positioned ~ ~-1.7 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.new] ^ ^ ^0.2
scoreboard players set @s enmity.math_a 90
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result entity @e[type=armor_stand,tag=enmity.new,tag=enmity.leaf,limit=1] Pose.Head[0] float 1 run scoreboard players operation @s enmity.rotation += @s enmity.math_a
tag @e[type=armor_stand,tag=enmity.leaf,tag=enmity.new] remove enmity.new