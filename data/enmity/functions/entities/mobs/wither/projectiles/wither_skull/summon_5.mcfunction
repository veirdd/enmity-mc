playsound minecraft:entity.wither.shoot neutral @a[distance=0..] ~ ~ ~ 1.5 1 0
summon minecraft:armor_stand ~ ~-1000 ~ {NoGravity:1,Marker:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;-718085623,-368360486,-1501738125,1383391292],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY0ZTFjM2UzMTVjOGQ4ZmZmYzM3OTg1YjY2ODFjNWJkMTZhNmY5N2ZmZDA3MTk5ZThhMDVlZmJlZjEwMzc5MyJ9fX0="}]}}}}],Pose:{Head:[1f,0f,0f]},Tags:["enmity.new","enmity.wither_skull2","enmity.projectile"]}
tp @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] @s
execute as @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] at @s run tp @s ~ ~-1.6 ~
execute anchored eyes unless block ^ ^ ^1 #enmity:not_solid as @e[type=armor_stand,tag=enmity.new,tag=enmity.wither_skull2] positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function enmity:entities/mobs/wither/projectiles/wither_skull/die
execute as @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] at @s run tp @s ^ ^ ^1.5
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result entity @e[type=armor_stand,tag=enmity.new,tag=enmity.wither_skull2,limit=1] Pose.Head[0] float 1 run scoreboard players get @s enmity.rotation
execute as @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] run function enmity:misc/projectiles/random_spread/10dg
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] enmity.dmg 10
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] enmity.dmg 8
tag @e[type=armor_stand,tag=enmity.wither_skull2,tag=enmity.new] remove enmity.new
kill @s