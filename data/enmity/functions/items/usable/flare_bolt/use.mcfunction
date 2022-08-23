scoreboard players remove @s enmity.mana 80
scoreboard players set @s enmity.cooldown 16
playsound block.lava.extinguish neutral @a[distance=0..] ~ ~ ~ 2.0 1 0.0
playsound block.lava.extinguish neutral @a[distance=0..] ~ ~ ~ 2.0 1.25 0.0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.flare_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.flare_bolt,tag=enmity.new] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.new] @s
execute if entity @s[type=!magma_cube] at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute if entity @s[type=magma_cube] at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^-0.5 ^0.2
execute if entity @s[type=magma_cube] run tag @e[type=marker,tag=enmity.new] add enmity.flame_spewer
tag @e[type=marker,tag=enmity.flare_bolt,tag=enmity.new] remove enmity.new