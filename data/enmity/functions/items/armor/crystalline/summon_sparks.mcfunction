tag @s add enmity.this
execute as @e[type=marker,tag=enmity.crystalline_sparks] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute store result score @s enmity.math_d if entity @e[type=marker,tag=enmity.crystalline_sparks,tag=enmity.this]
tag @e[type=marker,tag=enmity.crystalline_sparks,tag=enmity.this] remove enmity.this
execute unless score @s enmity.math_d matches 5.. run summon marker ~ ~1 ~ {Tags:["enmity.projectile","enmity.crystalline_sparks","enmity.new"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.new] remove enmity.new