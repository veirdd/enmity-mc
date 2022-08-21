execute positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ run particle smoke ~ ~ ~ 0.5 0.5 0.5 0 20 force
playsound minecraft:entity.wither.shoot neutral @a[distance=0..] ~ ~ ~ 2 1 0
scoreboard players remove @s enmity.mana 110
scoreboard players set @s enmity.cooldown 28
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;-718085623,-368360486,-1501738125,1383391292],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY0ZTFjM2UzMTVjOGQ4ZmZmYzM3OTg1YjY2ODFjNWJkMTZhNmY5N2ZmZDA3MTk5ZThhMDVlZmJlZjEwMzc5MyJ9fX0="}]}}}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.wither_skull","enmity.projectile"]}
scoreboard players set @e[type=armor_stand,tag=enmity.wither_skull,tag=enmity.new] enmity.dmg 15
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=armor_stand,tag=enmity.wither_skull,tag=enmity.new] @s
execute at @s positioned ~ ~-1.7 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.new] ^ ^ ^0.2
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result entity @e[type=armor_stand,tag=enmity.new,tag=enmity.wither_skull,limit=1] Pose.Head[0] float 1 run scoreboard players get @s enmity.rotation
scoreboard players operation @e[type=armor_stand,tag=enmity.new,tag=enmity.wither_skull] enmity.player_id = @s enmity.player_id
tag @e[type=armor_stand,tag=enmity.wither_skull,tag=enmity.new] remove enmity.new