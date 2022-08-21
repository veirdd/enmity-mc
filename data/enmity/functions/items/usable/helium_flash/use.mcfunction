scoreboard players remove @s enmity.mana 120
scoreboard players set @s enmity.cooldown 24
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound entity.ghast.shoot neutral @a[distance=0..] ~ ~ ~ 0.5 0.75 0
playsound entity.ghast.shoot neutral @a[distance=0..] ~ ~ ~ 0.5 0.5 0
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.helium_flash","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 21
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
execute as @e[type=marker,tag=enmity.new] run function enmity:utility/projectiles/random_spread/5dg
tag @e[type=marker,tag=enmity.new] remove enmity.new