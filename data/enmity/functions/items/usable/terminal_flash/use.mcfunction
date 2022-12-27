scoreboard players remove @s enmity.mana 120
scoreboard players add @s enmity.cooldown 24
playsound block.ender_chest.open neutral @a[distance=0..] ~ ~ ~ 2 1.25 0
playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0.75 0
playsound entity.bee.sting neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.terminal_flash","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 21
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.new] remove enmity.new
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle soul_fire_flame ~ ~ ~ 0.4 0.4 0.4 0 8 force