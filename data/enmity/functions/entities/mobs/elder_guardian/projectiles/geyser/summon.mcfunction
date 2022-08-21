summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile","enmity.static"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
execute if score %difficulty enmity.value matches 2 run summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
execute if score %difficulty enmity.value matches 2 run summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
execute if score %difficulty enmity.value matches 2 run summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_geyser","enmity.projectile"]}
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 13
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 15
spreadplayers ~ ~ 3 8 false @e[type=marker,tag=enmity.elder_geyser,tag=enmity.new,tag=!enmity.static]
execute as @e[type=marker,tag=enmity.elder_geyser,tag=enmity.new] store result entity @s Pos[1] double 1 run data get entity @p[tag=enmity.elder_target] Pos[1] 1
tag @e[type=marker,tag=enmity.elder_geyser,tag=enmity.new] remove enmity.new