execute as @p[tag=enmity.dragon_target] at @s run summon marker ~ ~1.5 ~ {Tags:["enmity.projectile","enmity.dragon_ray","enmity.new"]}
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:misc/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.new] at @s run tp @s ^ ^ ^-6
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:misc/projectiles/random_spread/20dg
execute at @p[tag=enmity.dragon_target] run playsound block.fire.extinguish neutral @a[distance=0..] ^ ^ ^6 2 1.5 0
scoreboard players set @e[type=marker,tag=enmity.new] enmity.raycast 24
scoreboard players set @e[type=marker,tag=enmity.new] enmity.math_a 24
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray] enmity.player_id = @s enmity.player_id
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 24
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 20
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray] enmity.dmg += @s enmity.dmg_bst
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:entities/mobs/ender_dragon/projectiles/ray/raycast_1
tag @e[type=marker,tag=enmity.new] remove enmity.new