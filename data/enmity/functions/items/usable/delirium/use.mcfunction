scoreboard players remove @s enmity.mana 100
scoreboard players set @s enmity.cooldown 8
playsound enmity:item.delirium.shoot neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
playsound enmity:item.delirium.shoot neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
playsound enmity:item.delirium.shoot neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
playsound enmity:item.delirium.shoot neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.2 20 force
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 30 force
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.phantasmal_projectile","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 69
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new