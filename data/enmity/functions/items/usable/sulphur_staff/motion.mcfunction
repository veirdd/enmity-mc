tag @s add enmity.this
execute as @p if score @s enmity.player_id = @e[type=item,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute store result score @s enmity.math_a run data get entity @s Pos[0]
execute store result score @s enmity.math_b run data get entity @s Pos[1]
execute store result score @s enmity.math_c run data get entity @s Pos[2]
summon marker ~ ~ ~ {Tags:["enmity.new","enmity.gunpowder_bomb","enmity.projectile"]}
execute store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[0] float 1 run data get entity @a[tag=enmity.this,limit=1] Rotation[0]
execute store result entity @e[type=marker,tag=enmity.new,limit=1] Rotation[1] float 1 run data get entity @a[tag=enmity.this,limit=1] Rotation[1]
execute unless entity @a[tag=enmity.this] as @e[type=marker,tag=enmity.new,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] eyes
execute as @e[type=marker,tag=enmity.new] at @s positioned ^ ^ ^100 positioned ~ ~20 ~ run tp @s ~ ~ ~
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.new,limit=1] Pos[0]
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.new,limit=1] Pos[1]
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.new,limit=1] Pos[2]
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s enmity.math_d -= @s enmity.math_a
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s enmity.math_e -= @s enmity.math_b
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s enmity.math_f -= @s enmity.math_c
tag @a[tag=enmity.this] remove enmity.this
kill @e[type=marker,tag=enmity.new]
tag @s remove enmity.no_motion