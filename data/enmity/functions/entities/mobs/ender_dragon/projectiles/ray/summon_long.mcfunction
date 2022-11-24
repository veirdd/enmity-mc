execute if score %difficulty enmity.value matches 2 as @p[tag=enmity.dragon_target] at @s as @e[type=end_crystal,tag=enmity.dragon_crystal,sort=random,limit=3,distance=..64] at @s run summon marker ~ ~1 ~ {Tags:["enmity.projectile","enmity.dragon_ray","enmity.new"]}
execute if score %difficulty enmity.value matches 1 as @p[tag=enmity.dragon_target] at @s as @e[type=end_crystal,tag=enmity.dragon_crystal,sort=random,limit=2,distance=..64] at @s run summon marker ~ ~1 ~ {Tags:["enmity.projectile","enmity.dragon_ray","enmity.new"]}
execute as @e[type=marker,tag=enmity.new] at @s run tp @s ~ ~ ~ facing entity @p[tag=enmity.dragon_target] eyes
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:misc/projectiles/random_spread/5dg
execute if entity @e[type=marker,tag=enmity.dragon_ray] at @p[tag=enmity.dragon_target] run playsound block.fire.extinguish neutral @a[distance=0..] ^ ^ ^6 2 1.5 0
scoreboard players set @e[type=marker,tag=enmity.new] enmity.raycast 128
scoreboard players set @e[type=marker,tag=enmity.new] enmity.math_a 128
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray] enmity.player_id = @s enmity.player_id
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 24
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 20
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray] enmity.dmg += @s enmity.dmg_bst
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:entities/mobs/ender_dragon/projectiles/ray/raycast_1
tag @e[type=marker,tag=enmity.new] remove enmity.new