scoreboard players remove @s enmity.mana 30
scoreboard players set @s enmity.cooldown 4
playsound block.fire.extinguish neutral @a[distance=0..] ~ ~ ~ 0.2 2 0.0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2.0 1.5 0.0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2.0 1.7 0.0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2.0 1.3 0.0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.crystal_shard","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.crystal_shard,tag=enmity.new] enmity.dmg 5
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute as @e[type=marker,tag=enmity.new] run function enmity:misc/projectiles/random_spread/5dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.crystal_shard,tag=enmity.new] remove enmity.new