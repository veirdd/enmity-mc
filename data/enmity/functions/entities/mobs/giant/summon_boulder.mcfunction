execute at @r[distance=..64,gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["enmity.boulder_spawn"]}
execute at @r[distance=..64,gamemode=!spectator] run spreadplayers ~ ~ 0 8 false @e[type=marker,tag=enmity.boulder_spawn]
execute store result score @s enmity.math_a run data get entity @p Pos[1]
scoreboard players add @s enmity.math_a 15
execute as @e[type=marker,tag=enmity.boulder_spawn] store result entity @s Pos[1] double 1 run scoreboard players get @e[type=giant,limit=1] enmity.math_a
execute at @e[type=marker,tag=enmity.boulder_spawn] run summon minecraft:armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008}}],Tags:["enmity.projectile","enmity.boulder","enmity.new","enmity.giant"]}
execute as @e[type=armor_stand,tag=enmity.new] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute as @e[type=armor_stand,tag=enmity.new] at @s run tp @s ~ ~ ~ ~ 0
kill @e[type=marker,tag=enmity.boulder_spawn]
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 6
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 4
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new