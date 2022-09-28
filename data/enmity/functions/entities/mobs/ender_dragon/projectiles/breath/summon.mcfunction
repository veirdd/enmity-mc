execute as @a[distance=..256] at @s facing entity @e[type=ender_dragon,limit=1] eyes positioned ^ ^ ^24 run playsound entity.wither.ambient neutral @s ~ ~ ~ 2 0 0
summon minecraft:marker ^ ^6 ^-6 {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_breath"]}
data modify entity @e[type=marker,tag=enmity.new,limit=1] Pos[1] set from entity @s Pos[1]
execute store result score @e[type=marker,tag=enmity.new,limit=1] enmity.rotation run data get entity @s Rotation[0] 1
execute as @e[type=marker,tag=enmity.new,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players operation @s enmity.rotation -= %const_180 enmity.value
execute store result score @e[type=marker,tag=enmity.new,limit=1] enmity.rotation run data get entity @s Rotation[1] -1
execute as @e[type=marker,tag=enmity.new,limit=1] store result entity @s Rotation[1] float 1 run scoreboard players operation @s enmity.rotation += %const_7 enmity.value
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 26
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 22
tag @e[type=marker,tag=enmity.new,limit=1] remove enmity.new