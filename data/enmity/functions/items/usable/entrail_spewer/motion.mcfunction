tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=item,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
summon marker ~ ~ ~ {Tags:["enmity.entrail_spewer","enmity.new","enmity.projectile"]}
execute unless entity @s[tag=enmity.giant] store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[0] float 1 run data get entity @p[tag=enmity.this] Rotation[0]
execute unless entity @s[tag=enmity.giant] store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[1] float 1 run data get entity @p[tag=enmity.this] Rotation[1]
execute if entity @s[tag=enmity.giant] store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[0] float 1 run data get entity @e[type=giant,limit=1] Rotation[0]
execute if entity @s[tag=enmity.giant] store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[1] float 1 run data get entity @e[type=giant,limit=1] Rotation[1]
execute as @e[type=marker,tag=enmity.new,limit=1] run function enmity:utility/projectiles/random_spread/20dg
execute as @e[type=marker,tag=enmity.new,limit=1] at @s run tp ^ ^20 ^100
execute if entity @s[tag=enmity.giant] as @e[type=marker,tag=enmity.new,limit=1] at @s run tp ^ ^-25 ^50
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.new,tag=enmity.entrail_spewer,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.new,tag=enmity.entrail_spewer,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.new,tag=enmity.entrail_spewer,limit=1] Pos[2]
execute store result entity @s Motion[0] double 0.006 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @s Motion[1] double 0.006 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @s Motion[2] double 0.006 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
tag @a[tag=enmity.this] remove enmity.this
kill @e[type=marker,tag=enmity.new,limit=1]
tag @s remove enmity.no_motion